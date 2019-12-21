Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\Users\%Username%\downloads\main.bat" & Chr(34), 0
Set WshShell = Nothing
