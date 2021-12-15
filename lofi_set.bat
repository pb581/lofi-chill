if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

cd /D %~dp0

ipconfig_reset.bat
pythonw yt_stream.pyw
lofi.bat
exit