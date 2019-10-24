# switch-.uf2-files
Want .uf2 files for your switch hacking needs? ask and link to the .bin payload you want, and I may get to it in my free time. I understand many don't want to learn to do it themselves, but I did, and I am willing to help. (mainly meant for the https://github.com/euclala/RCM_typeC_ex Switch dongle RCM-X86 dongle but I'm almost sure that it will work for any dongle and/or internal mod)


If you want to learn to build your own uf2 files you can follow this guide

Requirements

Python 3.x.x (needed)

Arduino IDE (with the required archives, info taken from euclala's repository on how to do this

(Guide
Build 
Go through [trinket m0: arduino-ide-setup] (https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/arduino-ide-setup) and [trinket m0: arduino-ide-setup2] (https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/using-with-arduino-ide)

Summary:
* Download and install arduino IDE http://www.arduino.cc/en/Main/Software
* In Arduino: go to " Preferences " and add to "Additional Board Manager URLs" following URL:
*  `https://adafruit.github.io/arduino-board-index/package_adafruit_index.json`
* go to "Tools > Board > Board Manager" and select Type: All and
* Install "Arduino SAMD Boards" by Arduino 
* Install "Adafruit SAMD Boards" by Adafruit 
* Select the Trinket M0 with "Tools > Board > Adafruit Trinket M0"

Go to Sketch > Include Library > Manage Libraries
Install USBHOst by Arduino

)

Download 

Once you reach this step your mostly set up to make your own .uf2 files.

I take no credits for anything under this repository, I am simple putting it here for ease of use so more people can build their own .uf2 files

The build.ino is from euclala's repository and the python files I found somewhere I don't remember.

open cmd and cd to the location where you are working
(command is cd %filelocation%)

run this command in cmd (python binConverter.py %nameof.bin%) to convert the .bin file to a .h file (the file used for the build.ino)

At this point I would rename the .h file to one of the respective names for ease of use with the build.ino

  "TXOS.h"
  "rajnx_ipl072.h"
  "hekate_ctcaer_32.h"
  "ReiNX.h"
  "argon-nx.h"
  
If you have your own cfw you want to run you can name it accordingly and add it somewhere in the lines after 16 following the same format as the other (note: to use the build.ino you will have to change it for every different name you use but its set up easily to do so, just remove the 2 forward slashed Infront of the #include "%name%" and it will load it.)

For example, let’s say you want to convert argon-nx, but you also have a few of your homemade cfw's:

  //#include "TXOS.h"
  //#include "rajnx_ipl072.h"
  //#include "hekate_ctcaer_32.h"
  //#include "ReiNX.h"
  #include "argon-nx.h"
  //#include "homemadecfw01"
  //#include "homemadecfw02"

Using the 2 forward slashed nulls the lines it’s on.

How to build a .bin from .h ------------------------------------------

Once you have your .bin saved from arduino IDE you can close arduino IDE, while you can flash the board directly from the program if you want, to make the .uf2 it’s a little bit more.

open cmd and cd to the location where you are working
(command is "cd %filelocation%")

use the cmd and use this command (python uf2conv.py -o end_file_name.uf2 start_file_name.bin), changing the end_file_name.uf2 to the file you want its end name to be, for example "argon-nx.uf2" and the start_file_name.bin the name of the .bin you got from arduino IDE, for example "argon-nx.bin" (note: I would not try to load the bin to the dongle or your switch, it may break, and again I take no responsibility for any damage done to your items)

After the conversion is done you should be golden, enjoy.




