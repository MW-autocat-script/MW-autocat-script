#!/bin/bash

cat newpages.txt | egrep -i 'Minecraft' | egrep -iv 'besides Minecraft\]\]' > Minecraft.txt
cat newpages.txt | egrep -i 'Tekkit' | egrep -iv 'besides Tekkit\]\]' >> Tekkit.txt

MINECRAFT=`stat --print=%s Minecraft.txt`
TEKKIT=`stat --print=%s Tekkit.txt`

if [ $MINECRAFT -ne 0 ];
then
  export CATFILE="Minecraft.txt"
  export CATNAME="Minecraft"
  ./catscripts/Categorize.sh
fi

if [ $TEKKIT -ne 0 ];
then
  export CATFILE="Tekkit.txt"
  export CATNAME="Tekkit"
  ./catscripts/Categorize.sh
fi

rm Minecraft.txt
rm Tekkit.txt
