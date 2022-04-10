Demo project for TM1637 driver written specifically for HW-069 module.
TM1637.c and TM1637.h can be imported alone as there is no other #include inside.
Developed and tested with ST Visual Develop + COSMIC STM8 C Compiler Special Edition Version: 4.5.2 on STM8S003F3P6 based custom board. 

Use either or both of below functions to drive display:

1. display_by_segment(char COLON, char GRID1, char GRID2, char GRID3, char GRID4)

Best used when input is single variable for each grid, there is a need to ommit some grids in between or sign other than 0-9 digit will be displayed. 

COLON: ON or OFF as HW-069 comes with colon between 2'nd and 3'rd grid for time based operations.
GRID1-4: From left to right. Can be either OFF or takes number from 0-9 displaying correspondingly. Numbers from 90 up represents special characters found in translate() function.

2. display_string(char COLON, unsigned int x)

Best used when displaying single variable in range of 0-9999.

COLON: Same as above
x: any number from 0-9999 will be displayed correspondingly
