#!/usr/bin/env python3
"""
fix_future_dates.py

Find date-like tokens. If date > today replace the date part with today's date
preserving format. Dry-run by default. Use --apply to write files (creates .bak).
"""

import re
import sys
import argparse
import os
from datetime import datetime, date

MONTHS_SHORT = r"(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Sept|Oct|Nov|Dec)"
MONTHS_LONG = r"(January|February|March|April|May|June|July|August|September|October|November|December)"
# Combined token regex
DATE_RE = re.compile(
    r"\b(?:" +
    r"\d{4}-\d{2}-\d{2}(?:[Tt ]\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:?\d{2})?)?" +   # ISO date / datetime
    r"|\d{4}/\d{1,2}/\d{1,2}" +                                                           # YYYY/MM/DD
    r"|\d{1,2}/\d{1,2}/\d{4}" +                                                           # DD/MM/YYYY or MM/DD/YYYY
    r"|\d{1,2}\.\d{1,2}\.\d{4}" +                                                         # DD.MM.YYYY
    r"|" + MONTHS_SHORT + r"\.?\s+\d{1,2},\s*\d{4}" +                                     # Nov 1, 2028
    r"|" + MONTHS_LONG + r"\s+\d{1,2},\s*\d{4}" +                                         # November 1, 2028
    r"|\d{1,2}\s+" + MONTHS_SHORT + r"\.?\s+\d{4}" +                                      # 1 Nov 2028
    r"|\d{1,2}\s+" + MONTHS_LONG + r"\s+\d{4}" +                                          # 1 November 2028
    r")\b",
    re.IGNORECASE
)

# Candidate parse formats for strptime attempts
STRPTIME_FORMATS = [
    "%Y-%m-%dT%H:%M:%S.%fZ", "%Y-%m-%dT%H:%M:%S.%f", "%Y-%m-%dT%H:%M:%SZ", "%Y-%m-%dT%H:%M:%S",
    "%Y-%m-%d", "%Y/%m/%d", "%d/%m/%Y", "%m/%d/%Y", "%d.%m.%Y",
    "%b %d, %Y", "%B %d, %Y", "%d %b %Y", "%d %B %Y"
]

def try_parse(token, dayfirst=False):
    token_stripped = token.strip()
    for fmt in STRPTIME_FORMATS:
        try:
            return datetime.strptime(token_stripped, fmt)
        except Exception:
            continue
    # optional fallback to dateutil if present
    try:
        from dateutil import parser
        return parser.parse(token_stripped, dayfirst=dayfirst)
    except Exception:
        return None

def format_replacement(orig, today_dt, dayfirst=False):
    # preserve datetime time+TZ when present
    if re.match(r"\d{4}-\d{2}-\d{2}[Tt].*", orig):
        m = re.match(r"(\d{4}-\d{2}-\d{2})([Tt].*)", orig)
        if m:
            return today_dt.strftime("%Y-%m-%d") + m.group(2)
    # ISO date
    if re.match(r"^\d{4}-\d{2}-\d{2}$", orig):
        return today_dt.strftime("%Y-%m-%d")
    # YYYY/MM/DD
    if re.match(r"^\d{4}/\d{1,2}/\d{1,2}$", orig):
        return today_dt.strftime("%Y/%m/%d")
    # 2/2/2028 style ambiguous
    if re.match(r"^\d{1,2}/\d{1,2}/\d{4}$", orig):
        if dayfirst:
            return today_dt.strftime("%d/%m/%Y")
        else:
            return today_dt.strftime("%m/%d/%Y")
    # dotted
    if re.match(r"^\d{1,2}\.\d{1,2}\.\d{4}$", orig):
        return today_dt.strftime("%d.%m.%Y")
    # Month name formats with comma
    m = re.match(r"^([A-Za-z]+)\.?\s+(\d{1,2}),\s*\d{4}$", orig.strip())
    if m:
        month = m.group(1)
        fmt = "%b %d, %Y" if len(month) <= 3 else "%B %d, %Y"
        return today_dt.strftime(fmt)
    # 1 Nov 2028
    m2 = re.match(r"^(\d{1,2})\s+([A-Za-z]+)\.?\s+(\d{4})$", orig.strip())
    if m2:
        month = m2.group(2)
        fmt = "%d %b %Y" if len(month) <= 3 else "%d %B %Y"
        return today_dt.strftime(fmt)
    # fallback to ISO
    return today_dt.strftime("%Y-%m-%d")

def is_text_file(path):
    # quick heuristic to skip binaries
    try:
        with open(path, "rb") as f:
            chunk = f.read(4096)
            if b"\0" in chunk:
                return False
    except Exception:
        return False
    return True

def process_file(path, today_dt, apply=False, dayfirst=False):
    try:
        if not is_text_file(path):
            return 0, []
        with open(path, "r", encoding="utf-8") as fh:
            data = fh.read()
    except UnicodeDecodeError:
        try:
            with open(path, "r", encoding="latin-1") as fh:
                data = fh.read()
        except Exception:
            return 0, []
    changed = False
    replacements = []
    def _replacer(match):
        token = match.group(0)
        parsed = try_parse(token, dayfirst=dayfirst)
        if parsed is None:
            return token
        token_date = parsed.date()
        if token_date > today_dt.date():
            new_token = format_replacement(token, today_dt, dayfirst=dayfirst)
            replacements.append((token, new_token))
            return new_token
        return token

    new_data = DATE_RE.sub(_replacer, data)
    if replacements and new_data != data:
        changed = True
        if apply:
            bak = path + ".bak"
            with open(bak, "w", encoding="utf-8") as fh:
                fh.write(data)
            with open(path, "w", encoding="utf-8") as fh:
                fh.write(new_data)
    return (1 if changed else 0), replacements

def main():
    p = argparse.ArgumentParser(description="Replace future dates with today's date.")
    p.add_argument("root", nargs="?", default=".", help="Root path to scan")
    p.add_argument("--apply", action="store_true", help="Write changes (create .bak). Default: dry-run")
    p.add_argument("--ext", nargs="*", default=None, help="File extensions to include (e.g. md yaml json). Default: common text files")
    p.add_argument("--day-first", action="store_true", help="Interpret ambiguous DD/MM/YYYY as day-first. Default: month-first for 2/3 forms.")
    p.add_argument("--skip", nargs="*", default=[".git",".venv","node_modules"], help="Paths to skip")
    args = p.parse_args()

    exts = None
    if args.ext:
        exts = set("." + e.lstrip(".") for e in args.ext)

    today_dt = datetime.now()
    total_files = 0
    total_changed = 0
    replacements_summary = {}

    for root, dirs, files in os.walk(args.root):
        # skip dirs
        if any(skip in root for skip in args.skip):
            continue
        for fn in files:
            path = os.path.join(root, fn)
            if exts and os.path.splitext(fn)[1] not in exts:
                continue
            # skip binary-looking large files
            count_changed, replacements = process_file(path, today_dt, apply=args.apply, dayfirst=args.day_first)
            if count_changed:
                total_changed += 1
                replacements_summary[path] = replacements
            total_files += 1

    # report
    print("Scanned files:", total_files)
    print("Files with future-date replacements:", total_changed)
    if replacements_summary:
        for path, reps in replacements_summary.items():
            print("\n--", path)
            for old, new in reps:
                print("   ", old, "->", new)
    if not args.apply:
        print("\nDry-run. Run with --apply to make changes (backups saved as .bak).")

if __name__ == "__main__":
    main()
