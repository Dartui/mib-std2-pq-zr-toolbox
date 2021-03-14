# MIB2 Standard Toolbox
⚠️ **Currently only working on Technisat devices with navigation!!** ⚠️

![SCREENSHOT_(Sdl_7DD2(Tg))_TIME_2021_02_26_05_50_03_GEOCOORD_LAT_53 945_LONG_9 1393_865799_Nr_1](https://user-images.githubusercontent.com/55631413/111074712-8c870180-84e4-11eb-9f87-7215fdbf0dde.png)

Note: this screens has the potential to ruin your MIB2 STD unit. The developers are not responsible for any troubles to anyone or anything caused by this toolbox. It's never our intention to harm any person, car or brand. Use the tools wisely, don't be a douche.

## Requirements
- Read the entire readme
- At least 1 healthy set of brains
- An MIB2 STD by Technisat with navigation. It will not work ob MIB2 High or Delphi units!
- 1 empty, FAT32 formatted SD card, with enough space. Everything bigger than 1GB is fine
- Some place to save your backups

## Optional requirements
- Python 3, if you want to extract/compress graphics containers (boot/mcf)
- Picture editing software, if you want to customize graphics files

## How to install
1. Copy everything to SD card
2. Put SD card into slot 1
3. Install it via `Service Menu -> Software Update`
4. After reboot open GreenMenu and run `Install Toolbox` to install all menus and scripts
5. Restart GreenMenu
6. Have fun 🙂

## How to use
1. Make dumps of the files you want to modify via `dump` menu
2. Dumps will be placed in the corresponding `dump` folder on SD
3. Modify the files how you'd like and place them in the according folder inside `custom` on SD
4. Import modified files via `customization` menu

Notice: Every time you copy files to the unit the script will check if there is a backup. If not, it will make a backup of the original files from to unit to `backup` folder. This way you can always use the `restore` functions to roll back to original. 

⚠️ **DO NOT TOUCH THE FILES IN BACKUP FOLDER!!** ⚠️

### Overview
```
MIB2STD Toolbox Main
|
+---Customization                       # Customization features
|   +---Advanced                        # Patching stuff like SWDL, SWAP, HMI CP and more
|   +---Mirrorlink                      # Unlock apps whiile driving
|   +---Navi                            # Unlock SD card usage from every brand and change graphics
|   +---Skins                           # Modify skins
|   +---Sounds                          # Modify ringtones and system sounds
|
+---Disclaimer                          # Disclaimer and mentioning of involved people
|
+---Dump                                # Dump various data to SD card
|
+---History                             # Version history of the toolbox
|
+---Privacy                             # Privacy related functions
|
+---Uninstall                           # Uninstalls MIB2STD Toolbox
```

## How to use the tools
Currently there are four tools included.

### extract-mcf.py (by jille)
This a python script to extract skinfile containers (.mcf).<br>
Usage for instance: `exctrct_mcf.py <INPUTFILE> <EXTRACTIONFOLDER>`<br>
Example: `extract_mcf.py images.mcf .\extracted\`

### compress-mcf.py (by jille)
This is the script to compress the MCF-container.<br>
Usage for instance: `compress-mcf.py <ORIGINAL-BASEFILE> <NEWFILE> <FOLDER-WHERE-TO-COMPRESS-FROM>`
Example: `compress-mcf.py images.mcf images2.mcf .\extracted\`

### extract-startup_x.boot.py (by jille)
This a python script to extract startup screen containers (.boot).<br>
Usage for instance: `extract-startup_x.boot.py <INPUTFILE> <EXTRACTIONFOLDER>`<br>
Example: `extract-startup_x.boot.py startup_x.boot .\extracted\`

### compress-startup_x.boot.py (by jille)
This is the script to compress the BOOT-container.<br>
Usage for instance: `compress-startup_x.boot.py <ORIGINAL-BASEFILE> <NEWFILE> <FOLDER-WHERE-TO-COMPRESS-FROM>`
Example: `compress-startup_x.boot.py startup_x.boot startup2_x.boot .\extracted\`

## Supported firmwares
Currently this toolbox should work on all Technisat units.
Attention: It will **not** work on MIB2STD units with hardware H50 and newer (currently Seat units which came with firmware 05xx from factory)

## Disclaimer
WE'RE NOT RESPONSABLE FOR ANY DAMAGE OF YOUR UNIT. YOU'RE DOING EVERYTHING AT YOUR OWN RISK! USE YOUR BRAIN AND BE CAREFUL!
