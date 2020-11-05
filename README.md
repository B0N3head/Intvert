Intvert
======
> This script is no longer being maintained as another better project in C# is replacing it (link coming soon)

A joke "Trojan" written in Batch, made to scare the crap out of people, put on a usb and launch silently (Requires admin)
## "Payloads"
  - [x] Launch different payloads on different dates 
  - [x] Opens random webpages from a list
  - [x] Forces volume to max
  - [x] Display's random popups (Textboxes)
  - [x] Forces the victim to listen to a .mp3 file
  - [x] Inverts colors on screen
  - [x] Zooms randomly (Using magnifier)
  - [x] Disables taskmgr (Through regedit)
  - [x] Disables desktop icons
  - [x] Sends keystrokes (Can be changed)
  - [x] Reverses Left/Right Click
  - [x] Randomly switches between light/dark theme
  - [x] Opens random exe's in sys32
  - [x] Batch bomb ( %0|%0 )
  - [x] Bluescreens the computer to force restart (A restart was to lame)
  - [x] Sets background to .jpg

#### Disabled by Default, but can be enabled
  - [x] Move everything from desktop/music/downloads/pictures into documents
  - [x] Fill desktop/music/downloads/pictures with random folders

## Its Just A Prank
The script creates a .bat on the desktop that deletes all leftover payload scripts and resets all edited regedit strings.
To disable the user from stopping the "trojan" the desktop icons are disabled and taskmgr is disabled 

## Combining With mp3
Combining the bat and 3 mp3's isn't needed but is recommended as no music will play as the payloads start (It feels kind of hollow/empty without it), if you want to combine them, its easily done with Bat2Exe Converter, but find something better if you can.

### Steps:
1. Set the exe format to 32/64 bit Invisible
2. Import 3 .mp3 files into embed tab
3. Set Extract to (For embedded items) to Downloads
4. Set to request admin mode
5. Paste the contents of Main.bat into main window
6. Convert & Done

## Music Files
* 1.mp3 is the main mp3 that will play when started
* 2.mp3 is used after the second text file is launched
* 3.mp4 is for the Christmas payload

> This script kiddy batch script was initially made in a day to prove that code can be fun it was rushed and poorly made. There are comments that somewhat explain the code but this wasn't made to be anything special.
