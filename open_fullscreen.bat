@echo off
setlocal enabledelayedexpansion

:: ====== TARGET URL ======
set "URL=https://github.com/sk-mallick"
:: ========================

echo Launching your webpage in fullscreen...

:: Try Chrome
call :trywhere "chrome.exe" "--start-fullscreen" && exit /b

:: Try Edge
call :trywhere "msedge.exe" "--kiosk" && exit /b

:: Try Firefox (note: Firefox kiosk needs `--kiosk`)
call :trywhere "firefox.exe" "--kiosk" && exit /b

:: Try known paths
call :tryfile "C:\Program Files\Google\Chrome\Application\chrome.exe" "--start-fullscreen" && exit /b
call :tryfile "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "--start-fullscreen" && exit /b
call :tryfile "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "--kiosk" && exit /b

:: Fallback (Edge protocol for Win10+)
start "" "microsoft-edge:%URL%"
exit /b

:: ---- Functions ----
:trywhere
where %~1 >nul 2>&1 || exit /b 1
start "" %~1 %~2 "%URL%"
exit /b 0

:tryfile
if not exist %~1 exit /b 1
start "" "%~1" %~2 "%URL%"
exit /b 0
