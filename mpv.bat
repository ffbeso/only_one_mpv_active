@echo off

:quit_mpv

tasklist | find /i "mpv.exe"

if %errorlevel% == 0 (
	for /F "tokens=2 skip=3" %%i in ('tasklist /FI "IMAGENAME eq mpv.exe"') do (
		if %errorlevel% == 0 (
			cscript %APPDATA%\mpv\mpv_quit.vbs %%i > nul
			goto quit_mpv
		)
	)
)
start "" "C:\ProgramData\chocolatey\lib\mpv.install\tools\mpv.exe" %*