#!/bin/bash

# Set 1st argument as variable NUM
NUM=$1

# Download latest master zip file from Crashbob's github
# curl -O https://github.com/crashbob/CRASHPlayer/blob/master/com.crashplayer.yctv.crashplayer-1.0.11.widget
curl -L -o master.zip https://github.com/crashbob/CRASHPlayer/zipball/master/
unzip master.zip
C=`ls | grep crashbob`
# mv *.widget master.zip

# Extract zip and move to appropriate folder
# unzip master.zip
cd $C/CRASHPlayer.widget/Contents/

# Edit widget.xml file appropriately
mv widget.xml old.xml
grep '<version' old.xml | cut -f2 -d">" | cut -f1 -d "<" > version.txt
sed -e "5s/com.crashplayer/com.crashplayer$NUM/" old.xml > widget.xml
rm old.xml

# Set version variable and remote version.txt
VER=`cat version.txt`
rm version.txt

# move up two directories
cd ../..

# Zip up file, rename to .widget, and move to top directory where script is.
zip -r com.crashplayer$NUM.yctv.crashplayer-$VER.zip ./CRASHPlayer.widget/
cp com.crashplayer$NUM.yctv.crashplayer-$VER.zip com.crashplayer$NUM.yctv.crashplayer-$VER.widget
mv com.crashplayer$NUM.yctv.crashplayer-$VER.widget ../

# Cleanup files
cd ..
rm -rf $C
rm -rf master.zip
