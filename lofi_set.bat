if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

cd /D %~dp0

call renew_network_config.bat
python yt_stream.py
call lofi.bat
