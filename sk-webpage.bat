@echo off
chcp 65001 >nul
title Installing open_fullscreen.bat to Startup
color 0A
mode con: cols=100 lines=30
cls
setlocal enabledelayedexpansion

:: Left-aligned ASCII Header

echo ███████╗██╗  ██╗     ███╗   ███╗ █████╗ ██╗     ██╗     ██╗ ██████╗██╗  ██╗
echo ██╔════╝██║ ██╔╝     ████╗ ████║██╔══██╗██║     ██║     ██║██╔════╝██║ ██╔╝
echo ███████╗█████╔╝█████╗██╔████╔██║███████║██║     ██║     ██║██║     █████╔╝ 
echo ╚════██║██╔═██╗╚════╝██║╚██╔╝██║██╔══██║██║     ██║     ██║██║     ██╔═██╗ 
echo ███████║██║  ██╗     ██║ ╚═╝ ██║██║  ██║███████╗███████╗██║╚██████╗██║  ██╗
echo ╚══════╝╚═╝  ╚═╝     ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝ ╚═════╝╚═╝  ╚═╝

timeout /t 2 >nul

:: GitHub RAW link
set "URL=https://raw.githubusercontent.com/sk-mallick/open_fullscreen.bat/main/open_fullscreen.bat"

:: Get user's Startup folder
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "TARGET=%STARTUP%\open_fullscreen.bat"

echo.
echo 🔍 Connecting to secure GitHub server...
ping 127.0.0.1 -n 2 >nul
echo 📥 Downloading script from GitHub...
powershell -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%TARGET%'" >nul 2>&1

:: Check success
if exist "%TARGET%" (
    echo 🛡️  Securing script file...
    attrib +h "%TARGET%"

    echo.
    echo ✅ Installation complete.
    echo 🔒 File saved and hidden.
    echo 🚀 Script will auto-execute on system startup.
) else (
    echo ❌ Error: Failed to download the script.
)

:: Self-delete permanently
echo 🧹 Cleaning up installer...
ping 127.0.0.1 -n 2 >nul
powershell -Command "Start-Sleep -Milliseconds 800; Remove-Item -Path '%~f0' -Force"

exit
