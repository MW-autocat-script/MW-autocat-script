#!/bin/bash

egrep -i 'Minecraft|Mine craft' newpages.txt | egrep -iv 'besides Minecraft\]\]' > Minecraft.txt
egrep -i 'Tekkit' newpages.txt | egrep -iv 'besides Tekkit\]\]' >> Tekkit.txt

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
