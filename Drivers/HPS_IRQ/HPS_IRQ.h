/*
 * Cyclone V & Arria 10 HPS Interrupt Controller
 * ---------------------------------------------
 *
 * Driver for enabling and using the General Interrupt
 * Controller (GIC). The driver includes code to create
 * a vector table, and register interrupts.
 *
 * The code makes use of function pointers to register
 * interrupt handlers for specific interrupt IDs.
 *
 * ISR Handlers
 * ------------
 *
 * This driver takes care of handling the IRQ interrupt
 * generated by peripherals through the GIC. It provides
 * a handler which checks which interrupt source triggered
 * the IRQ, and then calls the handler which has been
 * assigned for that interrupt ID.
 *
 * For the other interrupts, FIQ, Data Abort, Prefetch Abort
 * and Undefined Instruction Interrupts, there is a default
 * handler which simply enters a while(1) loop to hang the
 * processor. Alternatively it can be configured to restart
 * the program by defining the following macro globally:
 *
 *     -D DEFAULT_ISR_JUMP_TO_ENTRY
 *
 * It is also possible to provide your own handlers for these
 * sources. These handlers are defined as weak aliases of the
 * default ISR handler which can be overridden by simply adding
 * your own implementation of one of the following five functions:
 *
 *    // Undefined Instruction
 *    __undef void __undef_isr (void){   }
 *    // Pre-fetch Abort
 *    __abort void __pftcAb_isr(void){   }
 *    // Data Abort
 *    __abort void __dataAb_isr(void){   }
 *    // Fast IRQ
 *    __fiq void __fiq_isr   (void){   }
 *
 * For software IRQs (SVC/SWI), the standard handler is always
 * used as it provides additional decoding and context handling.
 * To add your own handling, provide the following function
 * implementation.
 *
 *    // Software IRQ
 *    __swi void __svc_handler(unsigned int id, unsigned int param[4]){   }
 *
 * The driver supports both Cyclone V devices (default) or
 * Arria 10 devices (-D __ARRIA_10__).
 *
 * Company: University of Leeds
 * Author: T Carpenter
 *
 * Change Log:
 *
 * Date       | Changes
 * -----------+----------------------------------
 * 31/01/2024 | Correct ISR attributes
 * 22/01/2024 | Split Vector table to Util/startup_arm.c
 * 14/01/2024 | Make use of Util/lowlevel.h
 *            | Ensure data alignment checks start disabled in case
 *            | preloader enables them. If this flag is set, then
 *            | data abort would occur if -mno-unaligned-access not used.
 * 27/12/2023 | Convert to support ARM Compiler 6 (armclang).
 *            | Add support for Arria 10 devices.
 *            | Properly configure all interrupt stacks, which can
 *            | be positioned by setting HPS_IRQ_STACK_LIMIT or HPS_IRQ_STACK_SCATTER
 * 10/09/2018 | Embed creation of Vector Table and setup of VBAR
 *            | into driver to avoid extra assembly files.
 *            | Add ability to use static variables in ISR handlers
 * 12/03/2018 | Creation of driver
 *
 */

#ifndef HPS_IRQ_H_
#define HPS_IRQ_H_

#include <stdbool.h>
#include <stdlib.h>

#include "Util/error.h"
#include "Util/irq_attr.h"

//Include a list of IRQ IDs that can be used while registering interrupts
#if defined(__ARRIA10__)
#include "HPS_IRQ_IDs_A10.h"
#else
#include "HPS_IRQ_IDs.h"
#endif


//Function Pointer Type for Interrupt Handlers
// - interruptID is the ID of the interrupt that called the handler.
// - param will be the pointer that was passed as handlerParam when registering
//   the interrupt. This allows sharing data with an interrupt handler.
// - set *handled = true if handled successfully (not setting will result in call to un-handled IRQ)
typedef void (* __irq IsrHandlerFunc_t)(HPSIRQSource interruptID, void* param, bool* handled);
// Two examples of IRQ handlers are as follows:
/* ---Start Examples---
//Handler not needing parameters
__irq void exampleIRQHandlerWithNoParams(HPSIRQSource interruptID, void* param, bool* handled) {
    //IRQ handler stuff...   'param' is ignored.

    *handled = true; //IRQ Handled
}
...
HPS_IRQ_registerHandler(IRQ_TIMER_L4SP_0, &exampleIRQHandlerWithNoParams, NULL);

//Handler needing parameters
__irq void exampleIRQHandlerUsingParams(HPSIRQSource interruptID, void* param, bool* handled) {
    //Return failure if context is NULL pointer.
    if (param == NULL) return;
    //Cast param to expected type
    volatile unsigned int* theParamsPtr = (unsigned int*)param;
    //IRQ handler stuff...
    // e.g.   *theParamsPtr = 1;
    *handled = true; //IRQ Handled
}
...
volatile static unsigned int theParams; // Must be static so that it doesn't go out of scope.
HPS_IRQ_registerHandler(IRQ_TIMER_L4SP_0, &exampleIRQHandlerWithNoParams, &theParams);
// ---End Examples--- */


//Initialise HPS IRQ Driver
// - userUnhandledIRQCallback can be a function pointer to an isr_handler to be
//   called in the event of an unhandled IRQ occurring. If this parameter is
//   passed as NULL (0x0), a default handler which causes reset by watchdog will
//   be used.
// - Returns Util/error Code
HpsErr_t HPS_IRQ_initialise(IsrHandlerFunc_t userUnhandledIRQCallback);

//Check if driver initialised
// - Returns true if driver previously initialised
bool HPS_IRQ_isInitialised(void);

//Globally enable or disable interrupts
// - If trying to enable:
//    - Requires that driver has been initialised
//    - Returns ERR_SUCCESS if interrupts have been enabled
// - If trying to disable
//    - Returns ERR_SUCCESS if interrupts have been disabled
//    - Returns ERR_SKIPPED if interrupts were already disabled
// - This function can be used to temporarily disable interrupts
//   if for example you are changing the IRQ flags in a peripheral.
//   To do so, use the following approach:
//
//       HpsErr_t irqStatus = HPS_IRQ_globalEnable(false); // Temporarily disable
//       ... Do as little as possible while IRQs are disabled ...
//       HPS_IRQ_globalEnable(IS_SUCCESS(irqStatus));      // Re-enable only if it was previously enabled.
//
HpsErr_t HPS_IRQ_globalEnable(bool enable);

//Register a new interrupt ID handler
// - interruptID is the number between 0 and 255 of the interrupt being configured
// - handlerFunction is a function pointer to the function that will be called when IRQ with ID occurs
// - if a handler already exists for the specified ID, it will be replaced by the new one.
// - the interrupt ID will be enabled in the GIC
// - returns ERR_SUCCESS on success.
// - returns ERR_ALLOCFAIL if failed to reallocated handler array.
HpsErr_t HPS_IRQ_registerHandler(HPSIRQSource interruptID, IsrHandlerFunc_t handlerFunction, void* handlerParam);
//Register multiple interrupt ID handlers
// - same as above but allows registering multiple IDs and functions in a single call
// - interruptIDs, handlerFunctions, and optionally handlerParams should be arrays of length 'count'
//   with one entry per interrupt.
// - handlerParams may be NULL if no handlers require parameters.
HpsErr_t HPS_IRQ_registerHandlers(HPSIRQSource* interruptIDs, IsrHandlerFunc_t* handlerFunctions, void** handlerParams, unsigned int count);

//Unregister interrupt ID handler
// - interruptID is the number between 0 and 255 of the interrupt being configured
// - the interrupt will be disabled also in the GIC
// - returns ERR_SUCCESS on success.
// - returns ERR_NOTFOUND if handler not found
HpsErr_t HPS_IRQ_unregisterHandler(HPSIRQSource interruptID);
//Unregister multiple interrupt ID handlers
// - same as above but allows removing multiple IDs and functions in a single call
// - interruptIDs should be an array of length 'count'
HpsErr_t HPS_IRQ_unregisterHandlers(HPSIRQSource* interruptIDs, unsigned int count);

#endif /* HPS_IRQ_H_ */
