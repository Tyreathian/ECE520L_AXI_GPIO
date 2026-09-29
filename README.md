# Overview
The purpose of this lab was to implement AXI GPIO blocks in order to connect to the Zybo z7-10 board and then use logic in the Vitis IDE in order to flash leds or tick counters depending on the task.
# Testing Strategy
The initial portion of the project was implemented to verify that the Zybo board could connect to the Vitis IDE and have the program be downloaded and flashed so that the LED's could be seen as operational.

Then a series of switch implementations was given to be assigned to a certain switch or switches, such as flashing an RGB LED or a counter. After the code was written, the program could be built and then deployed in order to verify the operation. 
# Verification
The program written on the Vitis IDE was flashed and programmed to the Zybo Z7-10 board, and then the switches toggled in order to see if the switch matched the correct output, such as the ring/binary counter and the lit up RGB LED.
# Issues
The Blue LED and Red LED had their values swapped in the parameters, as in the Red LED had corresponded with the value 0x04, and the blue LED 0x01 so the logical statements had to be updated in order to properly reflect the correct color when flipping the switch 0 or switch 2.
# References
ECE520L_Lab_2_AXI_GPIO Manual
