from pafy import new
#from pyperclip import copy

url = "https://www.youtube.com/watch?v=5qap5aO4i9A"
video = new(url)
best = video.getbest()
playurl = best.url	#network stream url to play in vlc

#copy(playurl)			 #copy fetched url to clipboard

#dump the last fetched playurl to a txt file in desktop in case it is lost from clipboard
file = open(r"lofi_last_fetch.txt",'w')
file.write(playurl)
file.close()
