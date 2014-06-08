CPInstaller
===========

Script files to aid the widget modifications needed for uploading CrashPlayer to yahoo connected tv  
(Currently Windows/OSX-Only) [Tested on Windows 7 64-bit and OSX 10.9.3]    
  
# OSX
  
1. Download the **OSXINSTALL.sh** script to an empty folder.  
2. Open iTerm or Terminal and navigate to the used folder using **cd ~/path/to/folder/**  
3. type the following command and hit enter:
```
**./OSXINSTALL.sh NNNN**
```  
where NNNN is a 4-digit unique number  
# WINDOWS:
PREREQUISITE: MUST HAVE 7-Zip INSTALLED  
  
Download the latest binary here: [https://github.com/crashbob/CRASHPlayer/archive/master.zip](https://github.com/crashbob/CRASHPlayer/archive/master.zip)   
Place the zip file, **CPInstall.bat** and **widgetFix.ps1** files in an empty directory.  
Change the NUM variable in **CPInstall.bat** (on line 4) to your own unique number.  
Run **CPInstall.bat**  
You will find your new .widget file inside the CRASHPlayer-master folder.  
Enjoy!

# MANUAL INSTRUCTIONS
```  
To enable know file extensions so you can manually rename (change the file type) the zip file:  
1. Open Explorer to the "Downloads" folder.  
2. Press 'Alt'  
3. Press 't'  
4. Press 'o'  
5. Go to the 'view' tab  
6. uncheck the box for 'Hide extensions for known file types'  
7. Click OK
```  
**BELOW PLEASE FIND THE CURRENT INSTRUCTIONS FOR MANUAL FIX  
(i.e. What I am trying to automate)**  

1. Download the latest binary here: [https://github.com/crashbob/CRASHPlayer/archive/master.zip](https://github.com/crashbob/CRASHPlayer/archive/master.zip)  
[NOTE: I will assume you downloaded the zip file to a "Downloads" folder.]

2. It should have saved as **CRASHPlayer-master.zip**

3. Unzip/extract the contents, it should yield a **CRASHPlayer-master** folder

4. Navigate to the folder:  
    **Downloads\CRASHPlayer-master\CRASHPlayer-master\CRASHPlayer.widget\Contents\**

5. Open the file **widget.xml** with WordPad or NotePad++

7. On line 5, replace **com.crashplayer.yctv.crashplayer** with **com.crashplayer*XXXX*.yctv.crashplayer**  
    where *XXXX* is a random number you choose, and will use again later.

8. Take note of the version number on line 4 for later use, it is in the form V.V.VV

9. Save widget.xml and close your editor.

10. Navigate back to **Downloads\CRASHPlayer-master\CRASHPlayer-master\**

12. Right-click on the **CRASHPlayer.widget** folder and select *Send to* > *Compressed (zipped) folder*

13. Right-click on the new zip file and rename it  
    **com.crashplayerXXXX.yctv.crashplayer-V.V.VV.widget**  
    Please note that when renaming the file, select everything including **.zip** before typing.


#TASKS

[x] Create repositry  
[x] Create initial instructions in readme file  
[x] Begin formatting and updating  
[ ] Script: auto-downloading latest master file  
[x] Script: unzip  
[x] Script: fix identifier with user input for XXXX  
[x] Script: re-zip  
[x] Script: rename to com.crashplayerXXXX.yctv.crashplayer-V.V.VV.widget  
[ ] Add download links for images  
[ ] Add instructions (/screenshots?) for uploading to [https://gallery.tv.widgets.yahoo.com/publisher/](https://gallery.tv.widgets.yahoo.com/publisher/)
