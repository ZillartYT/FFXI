@echo off
:: Automatically elevate script to Administrator
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)

set "POL_PATH=C:\Program Files (x86)\PlayOnline\SquareEnix\PlayOnlineViewer"
set "WINDOWER_PATH=C:\Program Files (x86)\Windower"

copy /y "%POL_PATH%\dgVoodoo_disabled.conf" "%POL_PATH%\dgVoodoo.conf" >nul

cd /d "%WINDOWER_PATH%"
start "" "Windower.exe" -p=""

timeout /t 15 /nobreak >nul

copy /y "%POL_PATH%\dgVoodoo_enabled.conf" "%POL_PATH%\dgVoodoo.conf" >nul
