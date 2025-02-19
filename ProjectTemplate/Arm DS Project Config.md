# Project Template Guidelines

1. Open .c_project --> load in settings
2. Open .other --> Load in settings

# Arm DS Project Config

Create project folder
Create project

## Project Properties

C/C++ General -> Paths and Symbols -> Source Location

Click link folder
check 'link to folder in …'
Type `WORKSPACE_LOC\ELEC5620M-Resources\Drivers`
Check resolved location field is correct


C/C++ General -> Paths and Symbols -> Includes

Click Add...
Select `Add to all configurations`
Select `Add to all languages`
Click `Workspace...`
Select Drivers folder in project
Ok until closed

Apply and Close

Check drivers folder appears under project

C/C++ Build -> Settings -> Tool Settings

All Tool Settings:
Target CPU - Cortex-A9
Target FPU -> No FPU

Arm Compiler for Embedded 6:
Misc. -> Other Flags: `-mno-unaligned-access`

Arm Linker 6:
Image entry Point: `__vector_table`
Scatter file: `${workspace_loc}\ELEC5620M-Resources\ScatterFiles\OnChipRam.scat`

Apply and close
