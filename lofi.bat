if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
:: timeout /t 10

taskkill /f /im vlc.exe /t    &:: kill existing vlc instances

cd /D %~dp0   &:: switch working directory of cmd to the batch file location where the .txt file with the playurl is

:: load the playurl into vlc network stream via CLI and exit the script
start /b /min vlc lofi_last_fetch.txt --meta-title "lofi chill" --qt-start-minimized
exit
