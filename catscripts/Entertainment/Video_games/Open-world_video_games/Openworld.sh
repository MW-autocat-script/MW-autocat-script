#!/bin/bash

egrep -i 'Minecraft|Mine craft' newpages.txt > Minecraft.txt
egrep -i 'Tekkit' newpages.txt >> Tekkit.txt
egrep -i 'Saints(| )Row' newpages.txt | egrep -iv 'Saints(| )Row(| )2|The Third|Saints(| )Row(| )(III|3)|Saints(| )Row(| )(4|IV)'  >> SaintsRow.txt
egrep -i 'Saints(| )Row 2' newpages.txt >> SaintsRow2.txt
egrep -i 'Saints(| )Row' newpages.txt | egrep -i 'The Third|(| )(III|3)' >> SaintsRow3.txt
egrep -i 'Saints(| )Row(| )(4|IV)' newpages.txt >> SaintsRow4.txt

MINECRAFT=`stat --print=%s Minecraft.txt`
TEKKIT=`stat --print=%s Tekkit.txt`
SAINTSROW=`stat --print=%s SaintsRow.txt`
ROW2=`stat --print=%s SaintsRow2.txt`
THETHIRD=`stat --print=%s SaintsRow3.txt`
ROW4=`stat --print=%s SaintsRow4.txt`

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

if [ $SAINTSROW -ne 0 ];
then
  export CATFILE="SaintsRow.txt"
  export CATNAME="Saints Row"
  $CATEGORIZE
fi

if [ $ROW2 -ne 0 ];
then
  export CATFILE="SaintsRow2.txt"
  export CATNAME="Saints Row 2"
  $CATEGORIZE
fi

if [ $THETHIRD -ne 0 ];
then
  export CATFILE="SaintsRow3.txt"
  export CATNAME="Saints Row: The Third"
  $CATEGORIZE
fi

if [ $ROW4 -ne 0 ];
then
  export CATFILE="SaintsRow3.txt"
  export CATNAME="Saints Row IV"
  $CATEGORIZE
fi

rm Minecraft.txt
rm Tekkit.txt
rm SaintsRow*.txt
