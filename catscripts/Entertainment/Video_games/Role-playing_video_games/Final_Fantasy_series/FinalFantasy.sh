#!/bin/bash

egrep -i 'Final(| )Fantasy(| )(1\b|I\b)|Final Fantasy series' newpages.txt >> FinalFantasyseries.txt #There isn't a category for the first game yet
egrep -i 'Final Fantasy (2|II\b)' newpages.txt >> FinalFantasy2.txt
egrep -i 'Final Fantasy (3|III\b)' newpages.txt >> FinalFantasy3.txt
egrep -i 'Final Fantasy (4|IV\b)|\bFF(| )IV\b' newpages.txt >> FinalFantasy4.txt
egrep -i 'Final Fantasy (5|\bV\b)|\bFF(| )V\b' newpages.txt >> FinalFantasy5.txt
egrep -i 'Final Fantasy (6|\bVI\b)|\bFF(| )VI\b' newpages.txt >> FinalFantasy6.txt
egrep -i 'Final(| )Fantasy(| )(7|\bVII\b)|\bFF(| )VII\b' newpages.txt | egrep -iv 'Before Crisis|Crisis Core|Dirge of Cerberus|Advent Children' >> FinalFantasy7.txt
egrep -i 'Advent(| )Children' newpages.txt >> AdventChildren.txt
egrep -i 'Final Fantasy (8|\bVIII\b)|\bFF(| )VIII\b' newpages.txt >> FinalFantasy8.txt
egrep -i 'Final Fantasy (9|\bIX\b)|\bFF(| )IX\b' newpages.txt >> FinalFantasy9.txt
egrep -i 'Final Fantasy (10|\bX\b)|\bFF(| )X\b' newpages.txt | egrep -iv 'Final Fantasy X-2|FF(| )X-2' >> FinalFantasy10.txt
egrep -i 'Final Fantasy (10-2|\bX-2\b)|\bFF(| )X-2\b' newpages.txt >> FinalFantasyX-2.txt
egrep -i 'Final Fantasy (11|\bXI\b)|\bFF(| )(XI|11)\b' newpages.txt >> FinalFantasy11.txt
egrep -i 'Final Fantasy (12|\bXII\b)|\bFF(| )(12|XII)\b' newpages.txt >> FinalFantasy12.txt
egrep -i 'Final(| )Fantasy(| )(13|\bXIII\b)|\bFF(| )(13|XIII\b)' newpages.txt >> FinalFantasy13.txt




FFSERIES=`stat --print=%s FinalFantasyseries.txt`
FF2=`stat --print=%s FinalFantasy2.txt`
FF3=`stat --print=%s FinalFantasy3.txt`
FF4=`stat --print=%s FinalFantasy4.txt`
FF5=`stat --print=%s FinalFantasy5.txt`
FF6=`stat --print=%s FinalFantasy6.txt`
FF7=`stat --print=%s FinalFantasy7.txt`
FF8=`stat --print=%s FinalFantasy8.txt`
FF9=`stat --print=%s FinalFantasy9.txt`
FF10=`stat --print=%s FinalFantasy10.txt`
FFX2=`stat --print=%s FinalFantasyX-2.txt`
FF11=`stat --print=%s FinalFantasy11.txt`
FF12=`stat --print=%s FinalFantasy12.txt`
FF13=`stat --print=%s FinalFantasy13.txt`
ADVENT=`stat --print=%s AdventChildren.txt`


if [ $FFSERIES -ne 0 ];
then
  export CATFILE="FinalFantasyseries.txt"
  export CATNAME="Final Fantasy series"
  $CATEGORIZE
fi

if [ $FF2 -ne 0 ];
then
  export CATFILE="FinalFantasy2.txt"
  export CATNAME="Final Fantasy II"
  $CATEGORIZE
fi

if [ $FF3 -ne 0 ];
then
  export CATFILE="FinalFantasy3.txt"
  export CATNAME="Final Fantasy III"
  $CATEGORIZE
fi

if [ $FF4 -ne 0 ];
then
  export CATFILE="FinalFantasy4.txt"
  export CATNAME="Final Fantasy IV"
  $CATEGORIZE
fi

if [ $FF5 -ne 0 ];
then
  export CATFILE="FinalFantasy5.txt"
  export CATNAME="Final Fantasy V"
  $CATEGORIZE
fi

if [ $FF6 -ne 0 ];
then
  export CATFILE="FinalFantasy6.txt"
  export CATNAME="Final Fantasy VI"
  $CATEGORIZE
fi

if [ $FF7 -ne 0 ];
then
  export CATFILE="FinalFantasy7.txt"
  export CATNAME="Final Fantasy VII"
  $CATEGORIZE
fi

if [ $FF8 -ne 0 ];
then
  export CATFILE="FinalFantasy9.txt"
  export CATNAME="Final Fantasy IX"
  $CATEGORIZE
fi

if [ $FF9 -ne 0 ];
then
  export CATFILE="FinalFantasy9.txt"
  export CATNAME="Final Fantasy IX"
  $CATEGORIZE
fi

if [ $FF10 -ne 0 ];
then
  export CATFILE="FinalFantasy10.txt"
  export CATNAME="Final Fantasy X"
  $CATEGORIZE
fi

if [ $FFX2 -ne 0 ];
then
  export CATFILE="FinalFantasyX-2.txt"
  export CATNAME="Final Fantasy X-2"
  $CATEGORIZE
fi

if [ $FF11 -ne 0 ];
then
  export CATFILE="FinalFantasy11.txt"
  export CATNAME="Final Fantasy XI"
  $CATEGORIZE
fi

if [ $FF12 -ne 0 ];
then
  export CATFILE="FinalFantasy12.txt"
  export CATNAME="Final Fantasy XII"
  $CATEGORIZE
fi

if [ $FF13 -ne 0 ];
then
   export CATFILE="FinalFantasy13.txt"
   export CATNAME="Final Fantasy XIII"
   $CATEGORIZE
fi

if [ $ADVENT -ne 0 ];
then
  export CATFILE="AdventChildren.txt"
  export CATNAME="Final Fantasy VII: Advent Children"
  $CATEGORIZE
fi

rm FinalFantasy*.txt #Screw it :)
rm AdventChildren.txt