@echo off
:: Disable 'Show recently opened items' via registry
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackDocs /t REG_DWORD /d 0 /f

:: Clear Recent Files
del /q "%AppData%\Microsoft\Windows\Recent\*"

:: Restart Explorer
taskkill /f /im explorer.exe
start explorer.exe

echo Done! Recent Items disabled and cleared.
pause
