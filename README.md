# switch-.uf2-files
Want .uf2 files for your switch hacking needs? ask and link to the .bin payload you want, and I may get to it in my free time. I understand many don't want to learn to do it themselves, but I did, and I am willing to help (mainly meant for the https://github.com/euclala/RCM_typeC_ex Switch RCM-X86 dongle but it might work for other dongles and internal mods for the switch, based upon the Adafruit Trinket M0 board).

Please note: this guide was made for users who have the Windows as their OS, while most of it could work for MacOS or Linux I can not help you there, I have no experience for MacOS and only use Linux on server based stuff.

I take no credit for any files in this repository and what every harm they may or may not bring, all these files I located on the internet and I modified a few of them (very little) to make sure they work properly. You have been warned.

If you want to learn to build your own uf2 files you can follow this guide

Requirements

Python 3.x.x (needed)

Arduino IDE (with the required archives, info taken from euclala's repository on how to do this

(Guide
Build 
Go through [trinket m0: arduino-ide-setup] (https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/arduino-ide-setup) and [trinket m0: arduino-ide-setup2] (https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/using-with-arduino-ide)

Summary:
* Download and install arduino IDE http://www.arduino.cc/en/Main/Software
* In Arduino: go to " File " then " Preferences " and add to "Additional Board Manager URLs" following URL:
*  `https://adafruit.github.io/arduino-board-index/package_adafruit_index.json`
* go to "Tools > Board > Board Manager" and select Type: All and
* Install "Arduino SAMD Boards" by Arduino 
* Install "Adafruit SAMD Boards" by Adafruit 
* Select the Trinket M0 with "Tools > Board > Adafruit SAMD > Adafruit Trinket M0"

Go to Sketch > Include Library > Manage Libraries
Install USBHOst by Arduino

)

Download the files in build folder (I would download the folder to work in, put your payload.bin in here as well) or the latest release.

Once you reach this step your mostly set up to make your own .uf2 files.

The build.ino is from euclala's repository and the python files I found somewhere I don't remember, the batch files I created to make it a little easier to use.

If you want to use the python files instead of the batch files (python is still required)
open cmd and cd to the location where you are working
(command is cd %filelocation%)

run this command in cmd (python binConverter.py %nameof.bin%) to convert the .bin file to a .h file (the file used for the build.ino)

If you want to use the batch files (a little easier)
Open 1binConverter.bat and input the payload.bin (or path to such file). It will convert it to %nameof.h%

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

How to build a .bin from .h

Now you have your .h file in the same folder as the build.ino you are ready for the next step. I would verify the file can be built first before you actually build it. At this time I would verify you have the proper board selected ("Tools > Board > Adafruit SAMD > Adafruit Trinket M0") and now verify using the checkmark verify button. When it is done verifing you can export compiled binary under "Sketch > Export Compiled Binary"

Once you have your .bin saved from arduino IDE you can close arduino IDE , while you can flash the board directly from the Arduino IDE if you want it requires a little bit more to make the .uf2.

If you want to use the python files instead of the batch files (python is still required)
open cmd and cd to the location where you are working
(command is "cd %filelocation%")

use the cmd and use this command (python uf2conv.py -o end_file_name.uf2 start_file_name.bin), changing the end_file_name.uf2 to the file you want its end name to be, for example "argon-nx.uf2" and the start_file_name.bin the name of the .bin you got from arduino IDE, for example "argon-nx.bin" (note: I would not try to load the bin to the dongle or your switch, it may break, and again I take no responsibility for any damage done to your items)

If you want to use the batch files (a little easier)
Open 2uf2conv.bat and input the .bin arduino IDE created, and hit enter. Next enter the name you would like the .uf2 to output as (%nameof.uf2%), and you should have a file created as output.


After the conversion is done you should be golden, enjoy.

