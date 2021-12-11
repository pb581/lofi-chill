if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
timeout /t 10
taskkill /f /im vlc.exe /t
start /b /min vlc c:\users\admin\desktop\codes\lofi_stream\lofi_last_fetch.txt --meta-title "lofi chill"
exit