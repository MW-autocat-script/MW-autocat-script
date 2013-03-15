#!/bin/bash

egrep -i 'Minecraft|Mine craft' newpages.txt > Minecraft.txt
egrep -i 'Tekkit' newpages.txt >> Tekkit.txt

MINECRAFT=`stat --print=%s Minecraft.txt`
TEKKIT=`stat --print=%s Tekkit.txt`

if [ $MINECRAFT -ne 0 ];
then
  export CATFILE="Minecraft.txt"
  export CATNAME="Minecraft"
  $CATEGORIZE
fi

if [ $TEKKIT -ne 0 ];
then
  export CATFILE="Tekkit.txt"
  export CATNAME="Tekkit"
  $CATEGORIZE
fi

rm Minecraft.txt
rm Tekkit.txt

