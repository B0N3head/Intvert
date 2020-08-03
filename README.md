Intvert
======
A joke "Trojan" written in Batch, made to scare the crap out of people, put on a usb and lauch silently

## "Payloads"
#### Working
* Launch different payloads on different dates 
* Opens random webpages from a list
* Forces volume to max
* Display's random popups (Textboxes)
* Forces the victim to listen to a .mp3 file
* Inverts colors on screen
* Zooms randomly (Using magnifier)
* Disables taskmgr (Through regedit)
* Disables desktop icons
* Sends keys (Can be changed)
* Reverses Left/Right Click
* Randomly switches between light/dark theme
* Opens random exe's in sys32
* Batch bomb ( %0|%0 )
* Bluescreens the computer to force restart (A restart was to lame)
* Sets background to .jpg

#### Disabled by Default, but can be enabled
* Move everything from desktop/music/downloads/pictures into documents
* Fill desktop/music/downloads/pictures with random folders

## Its Just A Prank
The script creates a .bat on the desktop that deletes all leftover payload scripts and resets all edited regedit strings.
To disable the user from stopping the "trojan" the desktop icons are disabled and taskmgr is disabled 

## Combining With mp3
Combining the bat and 3 mp3's isn't needed but is recommended as no music will play as the payloads start (It feels kinda hollow/empty), if you want to combine them, its easily done with Bat2Exe Converter, but find something better if you can.

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

#### This shitty program was made in a day as a proof of concept and is poorly made in its current state, expect errors. More payloads and comments will be introduced as time goes on as to make it easier to understand and edit.
And yes I am still working on this

;)
