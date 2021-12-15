if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

taskkill /f /im vlc.exe /t

cd /D %~dp0
start /b /min vlc lofi_last_fetch.txt --meta-title "lofi chill" --qt-start-minimized
exit