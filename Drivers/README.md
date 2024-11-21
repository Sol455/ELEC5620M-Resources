# DE1-SoC Drivers

C source files which enable support for various hardware peripherals on the development board.

### HPS_Watchdog

Simple inline functions for resetting watchdog and returning the current watchdog timer value.

### DE1SoC_LT24

Support for the LT24 LCD module.

* Controls the LT24 Display Module in both a Software (Bit-banged) and Hardware (IP core) mode.

### BasicFont

BasicFont is simply an array of bitmap definitions for characters in a format compatible with printing to the LT24. It does not include any code to print the characters.

### DE1SoC_Mandelbrot

Driver for the Leeds SoC Computer Hardware Mandelbrot Controller. Allows generating and display of a visualisation of the Mandelbrot set for display testing.

* Controls the Mandelbrot Pattern Generator Module in the Leeds SoC Computer.
* Requires the `DE1SoC_LT24` driver.

### DE1SoC_Servo

Driver for the Servo Controller in the DE1-SoC, allowing PWM control over servo motors.

### DE1SoC_WM8731

Driver for the WM8731 Audio Controller, which is a hardware audio interface allowing input and output of stereo audio signals.

* This is used to interface with the Audio codec on the DE1-SoC board.
* It requires the `HPS_I2C` driver.

### HPS_I2C

Driver for the HPS embedded I2C controller, for communicating with other devices.

* Provides a driver for interfacing with the I2C controller in the HPS.

### HPS_IRQ

Driver for enabling and using the General Interrupt Controller (GIC).

* Provides a driver for initialising and enabling interrupts on the Cortex-A9 Processor.
* You can use this driver to register handler functions for various interrupt IDs.

### HPS_usleep

The POSIX `usleep()` function does not exist for bare metal applications in Arm DS. 
This library adds a similar function which allows the processor to be stalled for `x` microseconds.
Delays up to ~2.09 seconds are supported. This is to ensure the watchdog won't time out before the delay is finished.

* The function uses of one of the HPS bridge timers.

### Util

A series of support files including startup code (vector table/VFP/stack initialisation), along with the driver context model headers, and some other useful functions and macros.

### FatFS

This provides a copy of [FatFS](http://elm-chan.org/fsw/ff/00index_e.html), an open-source FAT file system parser.

* It includes all of the required custom Media Access Interface code to allow access to the MicroSD card on the DE1-SoC.
* If you are feeling adventurous during your project, you could try using FatFS to save and read files from the MicroSD card (e.g. images, text, etc).
* To use FatFS, you are best using the `DDRRamRom` scatter file as the FatFS implementation requires approximately 20kB of RAM.
  * For details on how to use the FatFS library, refer to the Application Interface documentation from the above web link.
