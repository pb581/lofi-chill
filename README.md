# lofi-chill
Fetches the lofi girl chill beats livestream playurl and plays it via VLC network stream (use schtasks to automate)

**Dependencies:**
* Python 3.x
* pafy (https://github.com/mps-youtube/pafy)
* youtube-dl
* vlc (https://www.videolan.org/); should have vlc in system PATH variable to use the `lofi.bat` script

**Install Procedure:**

* Clone the repo and cd into it: `git clone https://github.com/pb581/lofi-chill && cd lofi-chill`
* Install dependencies: `pip install -r requirements.txt`
* Apply hotfix (copy the contents of the `hotfix` folder and paste it where pafy is installed (eg., `C:\Users\admin\AppData\Local\Programs\Python\Python37-32\Lib\site-packages\pafy\`). Hit Win+R and paste `%localappdata%\programs\python`, hit Enter and from there, go to `\python<your_version>\lib\site-packages\pafy\` and paste the given hotfix there.
* Run `start lofi_set.bat`

**How it works:**

The python script `yt_stream.py` fetches the latest playurl of the lofi chill beats livestream (https://www.youtube.com/watch?v=5qap5aO4i9A) and saves it to `lofi_last_fetch.txt`. The batch script `lofi.bat` kills any existing vlc processes (left by previous runs) and plays the fetched url via network stream in vlc (minimized in system tray).

The fetched playurl expires in 6 hours since last execution of the `yt_stream.pyw` script, so it is desirable to automate the process using task schedulers to run it every 6 hours (I do 5:30 hours since it gives me buffer time of 30 minutes in case the script fails due to network load, cpu/mem usage of other processes, etc. so the livestream is interrupted only for a few seconds when the `lofi.bat` script runs to kill previous vlc instance and replace it with a new one).

---

**Target OS:** Windows NT (the main python script should work in any OS but the batch script needs to be rewritten for other OS).

_Can be adapted for any youtube url by replacing the url variable in the `yt_stream.pyw` script with the youtube video you want._

---

Made this utility because I was tired of my browser freezing with the youtube tab open in the browser for too long. Made the repo here in case someone is in the same boat as me and wants to automate this and make the whole thing more efficient. Plus, you get to avoid the live chat there (or rather even starting your browser!)

Use `schtasks.exe` (Windows) or `cron` (\*nix) to automate it. Set up triggers (at log on/daily recurring every x hours) and actions (<strike>`yt_stream.pyw` -> `lofi.bat`</strike>`lofi_set.bat`) for the scheduled task and you're good to go!

**Added:** The only script needed to be run by the end-user is the `lofi_set.bat` which calls the required commands/scripts one-by-one.
