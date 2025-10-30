#!/usr/bin/env bash
# run_simulation_suite.sh
# Execute quantum scheduler simulation test suite

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
SIM_DIR="$ROOT_DIR/03-SIMULATION_AND_VERIFICATION"
ARTIFACTS_DIR="$ROOT_DIR/10-ARTIFACTS_AND_LOGS/artifacts"
LOGS_DIR="$ROOT_DIR/10-ARTIFACTS_AND_LOGS/logs/sim_runs"

# Create output directories if they don't exist
mkdir -p "$ARTIFACTS_DIR" "$LOGS_DIR"

# Timestamp for this run
TIMESTAMP=$(date +%Y-%m-%d_%H%M%S)
RUN_ID="run-${TIMESTAMP}"
LOG_FILE="$LOGS_DIR/${RUN_ID}.log"

echo "=== Quantum Scheduler Simulation Suite ===" | tee "$LOG_FILE"
echo "Run ID: $RUN_ID" | tee -a "$LOG_FILE"
echo "Started: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Check if Python is available
if ! command -v python3 &> /dev/null; then
    echo "ERROR: python3 is required but not installed." | tee -a "$LOG_FILE"
    exit 1
fi

# Check if simulation scripts exist
if [[ ! -f "$SIM_DIR/scripts/sim_orchestrator.py" ]]; then
    echo "ERROR: sim_orchestrator.py not found" | tee -a "$LOG_FILE"
    exit 1
fi

if [[ ! -f "$SIM_DIR/scripts/bench_runner.py" ]]; then
    echo "ERROR: bench_runner.py not found" | tee -a "$LOG_FILE"
    exit 1
fi

# Run simulation orchestrator
echo "--- Running Simulation Orchestrator ---" | tee -a "$LOG_FILE"
if python3 "$SIM_DIR/scripts/sim_orchestrator.py" >> "$LOG_FILE" 2>&1; then
    echo "✓ Simulation orchestrator completed successfully" | tee -a "$LOG_FILE"
else
    echo "✗ Simulation orchestrator failed" | tee -a "$LOG_FILE"
    exit 1
fi

# Run benchmark suite
echo "" | tee -a "$LOG_FILE"
echo "--- Running Benchmark Suite ---" | tee -a "$LOG_FILE"
BENCH_LOG="$ROOT_DIR/10-ARTIFACTS_AND_LOGS/logs/bench/bench-$(date +%Y%m%d).log"
mkdir -p "$(dirname "$BENCH_LOG")"

if python3 "$SIM_DIR/scripts/bench_runner.py" >> "$BENCH_LOG" 2>&1; then
    echo "✓ Benchmark suite completed successfully" | tee -a "$LOG_FILE"
    echo "  Benchmark log: $BENCH_LOG" | tee -a "$LOG_FILE"
else
    echo "✗ Benchmark suite failed" | tee -a "$LOG_FILE"
    echo "  See: $BENCH_LOG" | tee -a "$LOG_FILE"
    exit 1
fi

# Compute reproducibility hash
echo "" | tee -a "$LOG_FILE"
echo "--- Computing Reproducibility Hash ---" | tee -a "$LOG_FILE"
if python3 "$SCRIPT_DIR/compute_repro_hash.py" >> "$LOG_FILE" 2>&1; then
    echo "✓ Reproducibility hash computed" | tee -a "$LOG_FILE"
else
    echo "✗ Failed to compute reproducibility hash" | tee -a "$LOG_FILE"
    exit 1
fi

echo "" | tee -a "$LOG_FILE"
echo "=== Simulation Suite Completed ===" | tee -a "$LOG_FILE"
echo "Finished: $(date)" | tee -a "$LOG_FILE"
echo "Log file: $LOG_FILE" | tee -a "$LOG_FILE"

exit 0
