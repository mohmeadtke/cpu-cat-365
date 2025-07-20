@echo off
cd /d "%~dp0Published"
start "" "RunCat 365.exe"
echo RunCat365 started! Check your system tray for the cat.
timeout /t 3 >nul
