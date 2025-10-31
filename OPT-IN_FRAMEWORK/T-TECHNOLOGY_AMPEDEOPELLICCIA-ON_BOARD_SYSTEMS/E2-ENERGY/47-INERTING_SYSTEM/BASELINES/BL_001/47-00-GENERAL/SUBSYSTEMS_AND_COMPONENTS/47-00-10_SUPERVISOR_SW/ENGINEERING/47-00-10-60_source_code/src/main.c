/**
 * @file main.c
 * @brief Main entry point for Inerting System Supervisor Software
 * @copyright (c) 2025 AMPEL360
 * @dal DO-178C Level B
 */

#include "supervisor.h"
#include "config.h"

int main(void) {
    /* Initialize system */
    system_init();
    
    /* Start scheduler */
    scheduler_start();
    
    /* Should never reach here */
    while(1) {
        error_handler();
    }
    
    return 0;
}
