# switch-.uf2-files
Want .uf2 files for your switch hacking needs? ask and link to the .bin payload you want and I may get to it in my free time. I under stand many don't want to learn to do it them selves but I did and I am willing to help. (mainly meant for the https://github.com/euclala/RCM_typeC_ex dongle but I'm almost sure that it will work for any dongle and/or internal mod)


If you want to learn to build your own uf2 files you can follow this guide

Requirements

Python 3.x.x (needed)

Arduino IDE (with the required archives, info taken from euclala's repository on how to do this

(Guide
Build 
Go through [trinket m0: arduino-ide-setup](https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/arduino-ide-setup) and [trinket m0: arduino-ide-setup2](https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/using-with-arduino-ide)

Summary:
* Download and install arduino IDE http://www.arduino.cc/en/Main/Software
* In Arduino: go to "Prefences" and add to "Additional Board Manager URLs" followin URL:
*  `https://adafruit.github.io/arduino-board-index/package_adafruit_index.json`
* go to "Tools > Board > Board Manager" and select Type: All and
* Install "Arduino SAMD Boards" by Arduino 
* Install "Adafruit SAMD Boards" by Adafruit 
* Select the Trinket M0 with "Tools > Board > Adafruit Trinket M0"

Go to Sketch > Include Library > Manage Libraries
Install USBHOst by Arduino

)
Once you reach this step your mostly set up to do this

I take no credits for anything under the build folder and I found them on the internet so use at your own risk, some of them I had to modify a little to work properly.

The build.ino is from euclala's repository and the python files I found somewhere I don't remember.

open cmd and cd to the location where you are working (best if its in its own sub folder for ease of use)
(command is cd %filelocation%)

run this command in cmd (python binConverter.py %nameof.bin%



