# lofi-chill
Fetches the lofi girl chill beats livestream playurl and plays it via VLC network stream (use schtasks to automate)

**Dependencies:**
* Python 3.x
* pafy (https://github.com/mps-youtube/pafy)
* vlc (https://www.videolan.org/); should have vlc in system PATH variable to use the `lofi.bat` script

**How it works:**

The python script `yt_stream.pyw` (no UI asynchronous process) fetches the latest playurl of the lofi chill beats livestream (https://www.youtube.com/watch?v=5qap5aO4i9A) and saves it to `lofi_last_fetch.txt`. The batch script `lofi.bat` kills any existing vlc processes (left by previous runs) and plays the fetched url via network stream in vlc (minimized in system tray).

**Target OS:** Windows NT (the main python script should work in any OS but the batch script needs to be rewritten for other OS).
