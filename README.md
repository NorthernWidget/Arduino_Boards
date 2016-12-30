# Northern Widget Arduino Boards

This repository contains board definition files for the Arduino-compatible data logger boards developed by A. Wickert and C. Sandell at Northern Widget LLC and the University of Minnesota.

(This repository and README based gratuitously off of Sparkfun's)

#### AVR Boards

* [ALog BottleLogger](http://northernwidget.com/alog/specs/)

#### SAMD (ARM Cortex-M0+) Boards

* [in development]

Each board will be added as an entry to the Arduino **Tools** > **Board** menu.

### Installation Instructions

Go to **File** > **Preferences**, open 'Additional Boards Manager URLs', and paste the following:

	https://raw.githubusercontent.com/NorthernWidget/Arduino_Boards/master/IDE_Board_Manager/package_NorthernWidget_index.json

<!--- [Adding a board manager list](https://cdn.sparkfun.com/assets/learn_tutorials/4/5/4/arduino-board-add.png) (link to Sparkfun's tutorial) -->

This field can be found in 'Preferences...' under the Arduino File menu.

Now, under the **Tools** > **Board** > **Boards Manager...**, if you type in "NorthernWidget", you will see an option to install board files for Northern Widget Arduino compatible boards. Click "Install" to add these to your list.

**NOTE: If you are using Arduino 1.6.6 and the link isn't working for you, change "https" at the beginning of the link to "http" and try again. We're working to figure out why this is happening in version 1.6.6.**

<!--- [//]![SparkFun Boards image](https://cdn.sparkfun.com/assets/learn_tutorials/4/5/4/sparkfun-arduino-board-install.png)-->

Now, when you select the Boards list, you will see a collection of new boards for Northern WIdget.

<!---[//]![SparkFun Boards List](boards_list.png)-->

### Cleaning up the Boards Menu

Each entry in the boards list is defined in [boards.txt](https://github.com/NorthernWidget/Arduino_Boards/blob/master/NorthernWidget/avr/boards.txt). If you want to de-clutter the menu, you can comment out a board by inserting a `#` at the beginning of each line.

### Notes

* **Please note: This will only work under Arduino IDE versions 1.5 and up.**
* Some boards such as the Pro Micro and the Mega Pro come in more than one form.  For these **you must select the correct processor** in the 'Tools' menu.
* Information on compiling and programming the bootloaders can be found in the bootloaders directory.
* **Bugs introduced in the Arduino IDE version 1.6.6 through at least 1.6.9 produce errors indicating there is something wrong with these files. This can be resolved by reverting back to 1.6.5-r5. So far all reports seem to indicated that 1.6.10 has also fixed the issues. These intermittent issues are difficult to reliably reproduce.**
