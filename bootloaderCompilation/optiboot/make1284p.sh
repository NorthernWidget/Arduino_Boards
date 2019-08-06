#! /bin/sh

make UART=1 LED=C4 AVR_FREQ=8000000L BAUD_RATE=115200 LED_START_FLASHES=3 BIGBOOT=1 atmega1284p
cp optiboot_atmega1284p.hex ../../NorthernWidgetAVR/bootloaders/NW/NW1284p.hex
