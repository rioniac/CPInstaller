@echo off

REM Set Unique Identifier
SET NUM=1234

REM Add 7zip to path for use from command line
SET NEW=C:\Program Files\7-Zip\
SET PATH=%PATH%;%NEW%

REM extract main zip file
7z x CRASHPlayer-master.zip

REM move down into directory where widget.xml is
cd CRASHPlayer-master\CRASHPlayer.widget\Contents\

SET ThisScriptsDirectory=%~dp0
SET PowerShellScriptPath=%ThisScriptsDirectory%widgetFix.ps1

REM call PS script to edit widget.xml
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%' -NUM %NUM% -myPath %CD%";

SET /p VERSION=<ver.txt

DEL "ver.txt"
REM move back up two directories
cd ..
cd ..

@ECHO %VERSION%

REM Create ZIP file
7z a com.crashplayer%NUM%.yctv.crashplayer-%VERSION%.zip CRASHPlayer.widget


REM Rename .zip file as a .widget file
ren com.crashplayer%NUM%.yctv.crashplayer-%VERSION%.zip com.crashplayer%NUM%.yctv.crashplayer-%VERSION%.widget
