if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

cd /D %~dp0

call reset_network_config.bat
pythonw yt_stream.pyw
call lofi.bat