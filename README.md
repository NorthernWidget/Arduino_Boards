# Northern Widget Arduino Boards

This repository contains board definition files for the Arduino-compatible data logger boards developed by A. Wickert and C. Sandell at Northern Widget LLC and the University of Minnesota.

(This repository and README based gratuitously off of Sparkfun's)

***Note: This will only work under Arduino IDE versions 1.5 and up.***
</br>*Additional notes at bottom of page*

#### Supported AVR Boards and uses on Northern Widget devices

* **ATMega1284p 8MHz**
  * [Okapi](https://github.com/NorthernWidget-Skunkworks/Project-Okapi): Versatile data logger with built-in solar charge control and modular telemetry
  * [Margay](https://github.com/NorthernWidget-Skunkworks/Project-Margay): Extreme-low-power data logger
* **ATMega644p 8MHz**
  * Older variants of [Margay](https://github.com/NorthernWidget-Skunkworks/Project-Margay)
* **ALog BottleLogger v2**
  * THe modern (and likely ultimate) [ALog BottleLogger](https://github.com/NorthernWidget/ALog-BottleLogger)
* **ALog BottleLogger (legacy)**
  * [ALog BottleLogger](https://github.com/NorthernWidget/ALog-BottleLogger) v2.0.0-beta and prior

Each board will be added as an entry to the Arduino **Tools** > **Board** menu.

### Installation Instructions

Go to **File** > **Preferences** (or **Arduino** > **Preferences** on Mac).

<!--- [Adding a board manager list](https://cdn.sparkfun.com/assets/learn_tutorials/4/5/4/arduino-board-add.png) (link to Sparkfun's tutorial) -->

![Open the Arduino IDE preferences](https://github.com/NorthernWidget/Arduino_Boards/raw/master/README_images/File_Preferences.png "Open the Arduino IDE preferences.")

Open 'Additional Boards Manager URLs', and paste the following in either the box for **Additional Boards Manager URLs**, or, if this is populated, the window that pops up when you hit the button to the right of the **Additional Boards Manager URLs** text entry area:  

	https://raw.githubusercontent.com/NorthernWidget/Arduino_Boards/master/package_NorthernWidget_index.json

![Paste the URL here](https://github.com/NorthernWidget/Arduino_Boards/raw/master/README_images/PreferencesWindow.png "Paste the URL here.")

![Unless you already have done that for third-party boards... in that case, open this frame and paste the URL here.](https://github.com/NorthernWidget/Arduino_Boards/raw/master/README_images/BoardURLs_list.png "Unless you already have done that for third-party boards... in that case, open this frame and paste the URL here.")

Now, go to **Tools** > **Board** > **Boards Manager...**.

![Open the boards manager here.](https://github.com/NorthernWidget/Arduino_Boards/raw/master/README_images/Tools_Boards_BoardManager.png "Open the boards manager here.")

Click it, and the following window will appear:

![Boards Manager.](https://github.com/NorthernWidget/Arduino_Boards/raw/master/README_images/BoardsManager.png "Boards Manager.")

if you type in "Northern Widget" (or usually just "Northern" as well), you should see an option to install board files for Northern Widget Arduino compatible boards.

![Northern Widget boards.](https://github.com/NorthernWidget/Arduino_Boards/raw/master/README_images/BoardsManager_Northern.png "Northern Widget boards.")

**If Northern Widget options do not appear**, restart your Arduino IDE and try again.

Click "Install" to add the NorthernWidget boards to your list. At the time of writing, we support only AVR boards.

![Northern Widget AVR support installed.](https://github.com/NorthernWidget/Arduino_Boards/raw/master/README_images/BoardsManager_Northern_Done.png "Northern Widget AVR support installed.")

Now, when you select the Boards list, you will see a collection of new boards for Northern Widget.

You will then want to change your selection to match the microcontroller that you are using. At the time of writing, this is probably **ATMega1284p 8MHz**, but as a reference:
* **ATMega1284p 8MHz**
  * [Okapi](https://github.com/NorthernWidget-Skunkworks/Project-Okapi)
  * Current variants of [Margay](https://github.com/NorthernWidget-Skunkworks/Project-Margay)
* **ATMega644p 8MHz**
  * Older variants of [Margay](https://github.com/NorthernWidget-Skunkworks/Project-Margay)
* **ALog BottleLogger v2**
  * The modern (and likely ultimate) [ALog BottleLogger](https://github.com/NorthernWidget/ALog-BottleLogger)
* **ALog BottleLogger (legacy)**
  * [ALog BottleLogger](https://github.com/NorthernWidget/ALog-BottleLogger) v2.0.0-beta and prior

![Select the proper board.](https://github.com/NorthernWidget/Arduino_Boards/raw/master/README_images/Tools_Boards_NorthernWidget.png "Now, when you go to Tools > Board, you should see the Northern Widget Boards. Select the proper board/MCU, which at the time of writing is most likely ATMega1284p 8MHz.")

<!---**NOTE: If you are using Arduino 1.6.6** and the link isn't working for you, change "https" at the beginning of the link to "http" and try again. We've stopped working to figure out why this is happening in version 1.6.6; update your Arduino IDE!-->

<!--- [//]![SparkFun Boards image](https://cdn.sparkfun.com/assets/learn_tutorials/4/5/4/sparkfun-arduino-board-install.png)-->

<!---[//]![SparkFun Boards List](boards_list.png)-->

<!--- ### Cleaning up the Boards Menu
Each entry in the boards list is defined in [boards.txt](https://github.com/NorthernWidget/Arduino_Boards/blob/master/NorthernWidgetAVR/boards.txt). If you want to de-clutter the menu, you can comment out a board by inserting a `#` at the beginning of each line.-->

### Notes

* **This will only work under Arduino IDE versions 1.5 and up. As of writing the current version is 1.8.15.**
* Some boards such as the Pro Micro and the Mega Pro come in more than one form.  For these **you must select the correct processor** in the 'Tools' menu.
* Information on compiling and programming the bootloaders can be found in the bootloaders directory.
* **Bugs introduced in the Arduino IDE version 1.6.6 through at least 1.6.9 produce errors indicating there is something wrong with these files. This can be resolved by reverting back to 1.6.5-r5. So far all reports seem to indicated that 1.6.10 has also fixed the issues. These intermittent issues are difficult to reliably reproduce.**
* If you have previously installed a Northern Widget Board package, you may get an error message `Board xxxx is unknown`, if you get this error simply navigate to the Arduino packages folder (using the link in the preferances window is easiest way to find it), then go to `packages` and delete the folder named `NorthernWidget`, then reinstall the board file using the Board Manager




**That's it! You're done, and ready to rock and roll... er, bootload, program, and collect data with your Northern Widget data logger.**
