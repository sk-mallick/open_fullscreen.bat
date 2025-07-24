@echo off
setlocal enabledelayedexpansion

:: ====== SET YOUR TARGET URL ======
set "URL=https://github.com/sk-mallick"
:: =================================

echo Attempting to open in kiosk mode...

:: Try Chrome
call :trywhere chrome.exe "--kiosk" && goto :eof

:: Try Edge
call :trywhere msedge.exe "--kiosk" && goto :eof

:: Try Firefox
call :trywhere firefox.exe "--kiosk" && goto :eof

:: Try known install paths
call :tryfile "C:\Program Files\Google\Chrome\Application\chrome.exe" "--kiosk" && goto :eof
call :tryfile "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "--kiosk" && goto :eof
call :tryfile "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "--kiosk" && goto :eof

:: Fallback: open via Edge protocol
start "" "microsoft-edge:%URL%"
goto :eof

:: -------- helpers --------
:trywhere
where %1 >nul 2>&1 || exit /b 1
start "" %1 %2 "%URL%"
exit /b 0

:tryfile
if not exist %~1 exit /b 1
start "" %~1 %2 "%URL%"
exit /b 0
