//This program provides a non-blocking example of code for the ARM A9 Private Timer
#include "Util/watchdog.h"
#include "DE1SoC_Addresses/DE1SoC_Addresses.h"

//Main Function
int main(void) {
    /* Pointers to peripherals - #defines in DE1SoC_Addresses.h*/
    // Red LEDs base address
    volatile unsigned int *LEDR_ptr 
        = (unsigned int *) LSC_BASE_RED_LEDS;
    // ARM A9 Private Timer base address
    volatile unsigned int *private_timer_base = LSC_BASE_PRIV_TIM;
    // ARM A9 Private Timer Load
    volatile unsigned int *private_timer_load
           = private_timer_base + (0x00/sizeof(unsigned int));
    // ARM A9 Private Timer Value
    volatile unsigned int *private_timer_value
           = private_timer_base + (0x04/sizeof(unsigned int));
    // ARM A9 Private Timer Control
    volatile unsigned int *private_timer_control
           = private_timer_base + (0x08/sizeof(unsigned int));
    // ARM A9 Private Timer Interrupt
    volatile unsigned int *private_timer_interrupt
           = private_timer_base + (0x0C/sizeof(unsigned int));

    /* Local Variables */ 
    unsigned int lastBlinkTimerValue = *private_timer_value;
    const unsigned int blinkPeriod = 100000000; 
    /* Initialisation */
    *LEDR_ptr = 0x1; // Set initial value of LEDs
    // Configure the ARM Private Timer
    // Set the "Load" value of the timer to max value:
    *private_timer_load      = 0xFFFFFFFF; 
    // Set the "Prescaler" value to 0, Enable the timer (E = 1), Set Automatic reload
    // on overflow (A = 1), and disable ISR (I = 0)
    *private_timer_control   = (0 << 8) | (0 << 2) | (1 << 1) | (1 << 0);
    /* Main Run Loop */
    while(1) { 
        // Read the current time
        unsigned int currentTimerValue = *private_timer_value;
        // Check if it is time to blink
        if ((lastBlinkTimerValue - currentTimerValue) >= blinkPeriod) {
            // When the difference between the last time and current time is greater
            // than the required blink period. We use subtraction to prevent glitches
            // when the timer value overflows:
            //      e.g. (0x10 - 0xFFFFFFFF) & 0xFFFFFFFF = 0x11.
            // If the time elapsed is enough, perform our actions.
            *LEDR_ptr = ~(*LEDR_ptr); // Invert the LEDs
            // To avoid accumulation errors, we make sure to mark the last time
            // the task was run as when we expected to run it. Counter is going
            // down, so subtract the interval from the last time.
            lastBlinkTimerValue = lastBlinkTimerValue - blinkPeriod;
        }
        // --- You can have many other events here by giving each an if statement
        // --- and its own "last#TimerValue" and "#Period" variables, then using the
        // --- same structure as above.
        // Next, make sure we clear the private timer interrupt flag if it is set
        if (*private_timer_interrupt & 0x1) {
            // If the timer interrupt flag is set, clear the flag
            *private_timer_interrupt = 0x1;
        }
        // Finally, reset the watchdog timer.
        ResetWDT();
    }
}
