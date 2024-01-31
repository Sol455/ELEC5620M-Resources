
//ARM Header providing low level access routines.
#include <arm_acle.h>
//Disable interrupts before configuring
__disable_irq();
// Set the location of the vector table in the VBAR register ("cp15:0:c12:c0:0")
__arm_mcr(15, 0, (unsigned int)&vector_table, 12, 0, 0);
//Enable interrupts
__enable_irq();


__irq void __irq_isr (void) { //Handler for the IRQ Exception
    volatile unsigned* icciar_reg = (unsigned int *) MPCORE_GIC_CPUIF + ICCIAR;
    volatile unsigned* icceoir_reg = (unsigned int *) MPCORE_GIC_CPUIF + ICCEOIR;
    //Read the ICCIAR from the processor interface 
    unsigned int int_ID = *icciar_reg;    
    //Check which source the interrupt is from 
    if (int_ID == 29) { 
        //e.g. If the A9 Private timer
        SomeHandlerFunction(); //Run the handler for the IRQ
    } else {
        //Otherwise unexpected
        while (1); //e.g. Something bad happened, so let the watchdog reset us.
    }
    //Write to the End of Interrupt Register (ICCEOIR)
    *icceoir_reg = int_ID;
    //And done.
    return;
}  


bool was_masked;
//Globally (and Temporarily) disable the IRQ (set I bit in CPSR)
wasMasked = __disable_irq(); //wasMasked = true if IRQ was previously disabled
//Perform atomic operations in here
...
//Check if interrupts need to be re-enabled
if (!was_masked) {
    __enable_irq(); //Globally re-enable the IRQ (clear the I bit in CPSR)
}
