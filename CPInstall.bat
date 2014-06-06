REM Set variables, not sure how to pull in version number yet
set NUM=1234
set VER=1.0.11

REM Add 7zip to path for use from command line
set NEW=where 7z
set PATH=%PATH%;%NEW%

REM extract main zip file
7z x CRASHPlayer-master.zip

echo "Press ENTER to continue."
pause

REM move down into directory where widget.xml is
cd CRASHPlayer-master\CRASHPlayer.widget\Contents\

REM call PS script to edit widget.xml
powershell.exe widgetFix.ps1 %NUM%

echo "Press ENTER to continue."
pause

REM move back up two directories
cd ..
cd ..

REM Create ZIP file
7z a com.crashplayer%NUM%.yctv.crashplayer-%VER%.zip CRASHPlayer.widget

REM Rename .zip file as a .widget file
ren com.crashplayer%NUM%.yctv.crashplayer-%VER%.zip com.crashplayer%NUM%.yctv.crashplayer-%VER%.widget
