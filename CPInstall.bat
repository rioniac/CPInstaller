@echo off

REM Set variables, not sure how to pull in version number yet
set NUM=1234
REM set VER=1.0.11

REM Add 7zip to path for use from command line
set NEW=C:\Program Files\7-Zip\
set PATH=%PATH%;%NEW%

REM extract main zip file
7z x CRASHPlayer-master.zip

pause

REM move down into directory where widget.xml is
cd CRASHPlayer-master\CRASHPlayer.widget\Contents\

SET ThisScriptsDirectory=%~dp0
SET PowerShellScriptPath=%ThisScriptsDirectory%widgetFix.ps1

REM call PS script to edit widget.xml
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%' -NUM %NUM% -myPath %CD%";

pause

set /p VERSION=<%CD%\ver.txt
DEL "ver.txt"
REM move back up two directories
cd ..
cd ..

REM Create ZIP file
7z a com.crashplayer%NUM%.yctv.crashplayer-%VERSION%.zip CRASHPlayer.widget

pause

REM Rename .zip file as a .widget file
ren com.crashplayer%NUM%.yctv.crashplayer-%VERSION%.zip com.crashplayer%NUM%.yctv.crashplayer-%VERSION%.widget

pause
