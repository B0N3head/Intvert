Intvert
======
A joke "Trojan" written in Batch, made to be put in a usb or combined with a .mp3 into an exe

## "Payloads"
#### Working
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
* Randomly swtches between light/dark theme
* Opens random exe's in sys32
* Batch bomb ( %0|%0 )
* Bluescreens the computer to force restart (A restart was to lame)

#### Canceled/Broken/Unused
* Moves everything from desktop/music/downloads/pictures into documents (Disabled as it proved to be to anoying) 
* Sets background to .jpg (Broken)
* Fills desktop/music/downloads/pictures with random folders (Disabled)
* Add popular sites to hosts file and set to localhost (Blocks websites form loading)

## Its Just A Prank
The script creates a .bat on the desktop that deletes all leftover payloads and resets all edited regedit strings.
To disable the user from stoping the "trojan" the desktop icons are diabled and taskmgr is disabled 

## Combining Together
Combining the bat and mp3 is done with [Bat To Exe Converter v3.2](https://www.softpedia.com/get/System/File-Management/Batch-To-Exe-Converter.shtml#download), find a better link if you can.
1. Set the exe format to 32/64 bit Invisible
2. Import .mp3 in embed tab (Make sure to change the mp3 name or refrence in .bat)
3. Set Extract to (For embedded items) to Downloads
4. Set to request admin mode
5. Convert & Done
 
#### This shitty program was made in a day as a proof of concept and is poorly made in its current state, expect errors. More payloads and comments will be introduced as time goes on as to make it easier to understand and edit.
