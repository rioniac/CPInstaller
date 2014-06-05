CPInstaller
===========

Script files to aid the widget modifications needed for uploading CrashPlayer to yahoo connected tv

*PRE: Enable known file extensions:  
[Press Alt, then t, then o; go to the 'View' tab; uncheck the box for 'Hide extensions for known file types'; click OK.]*

BELOW PLEASE FIND THE CURRENT INSTRUCTIONS FOR MANUAL FIX (i.e. What I am trying to automate)

1. Download the latest binary here: [https://github.com/crashbob/CRASHPlayer/archive/master.zip](https://github.com/crashbob/CRASHPlayer/archive/master.zip)  
2. [NOTE: For the sake of simplicity, I will assume you download the zip file to a "Downloads" folder.]

2. It should have saved as "CRASHPlayer-master.zip"

3. Unzip/extract the contents, it should yield a "CRASHPlayer-master" folder

4. Navigate to the folder:  
    "Downloads\CRASHPlayer-master\CRASHPlayer-master\CRASHPlayer.widget\Contents\"

5. Open the file "widget.xml" with WordPad or NotePad++

7. On line 5, replace "com.crashplayer.yctv.crashplayer" with "com.crashplayerXXXX.yctv.crashplayer"  
    where XXXX is a random number you choose, and will use again later.

8. Take note of the version number on line 4 for later use, it is in the form V.V.VV

9. Save widget.xml and close your editor.

10. Navigate back to "Downloads\CRASHPlayer-master\CRASHPlayer-master\"

12. Right-click on the "CRASHPlayer.widget" folder and 'Sent to' > 'Compressed (zipped) folder'

13. Right-click on the new zip file and rename it "com.crashplayerXXXX.yctv.crashplayer-V.V.VV.widget"  
    Please note that when renaming the file, select everything including ".zip" before typing.


# TASKS
===========
[x] Create repositry
[x] Create initial instructions in readme file
[x] Begin formatting and updating
[ ] Script: auto-downloading latest master .widget file
[ ] Script: unzip
[ ] Script: fix identifier with user input for XXXX
[ ] Script: re-zip
[ ] Script: rename to com.crashplayerXXXX.yctv.crashplayer-V.V.VV.widget
[ ] Add download links for images
[ ] Add instructions (/screenshots?) for uploading to [https://gallery.tv.widgets.yahoo.com/publisher/](https://gallery.tv.widgets.yahoo.com/publisher/)
