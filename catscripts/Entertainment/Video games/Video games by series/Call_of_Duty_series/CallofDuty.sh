#!/bin/bash

egrep -i '(Call of Duty|CoD) series' newpages.txt >> CallofDuty.txt
egrep -i 'Modern(| )Warfare|\bCOD(| )4|Call of Duty 4' newpages.txt | egrep -iv 'Modern Warfare [2-9]{1,}' >> COD4.txt
egrep -i '\bCOD(| )5|\bWaW\b|World at War|Call of Duty 5' newpages.txt >> WorldAtWar.txt
egrep -i '\bCOD(| )6|\bMW2\b|Modern Warfare 2|Call of Duty 6' newpages.txt >> ModernWarfare2.txt
egrep -i '\bCOD(| )7|Black Ops|Call of Duty 7' newpages.txt | egrep -iv 'Black Ops ([2-9]{1,}|\bII\b|\bIII\b|\bIV\b|\bV\b)' >> BlackOps.txt
egrep -i '\bCOD(| )8|\bMW3\b|Modern Warfare 3|Call of Duty 8' newpages.txt >> ModernWarfare3.txt
egrep -i '\bCOD(| )9|Black Ops (2|II\b)|Call of Duty 9' newpages.txt >> BlackOps2.txt
egrep -i 'Call of Duty' newpages.txt | egrep -iv 'World At War|Black Ops|Modern Warfare|Call of Duty [2-9]{1,}' >> CallofDuty.txt
egrep 'CoD' newpages.txt | egrep -v 'CoD(| )[2-9]' >> CallofDuty.txt

CALLOFDUTY=`stat --print=%s CallofDuty.txt`
MODERN=`stat --print=%s COD4.txt`
WORLDATWAR=`stat --print=%s WorldAtWar.txt`
MW2=`stat --print=%s ModernWarfare2.txt`
BLACKOPS=`stat --print=%s BlackOps.txt`
MW3=`stat --print=%s ModernWarfare3.txt`
BO2=`stat --print=%s BlackOps2.txt`

if [ $CALLOFDUTY -ne 0 ];
then
  export CATFILE="CallofDuty.txt"
  export CATNAME="Call of Duty series"
  ./catscripts/Categorize.sh
fi

if [ $MODERN -ne 0 ];
then
  export CATFILE="COD4.txt"
  export CATNAME="Call of Duty 4: Modern Warfare"
  ./catscripts/Categorize.sh
fi

if [ $WORLDATWAR -ne 0 ];
then
  export CATFILE="WorldAtWar.txt"
  export CATNAME="Call of Duty: World at War"
  ./catscripts/Categorize.sh
fi

if [ $MW2 -ne 0 ];
then
  export CATFILE="ModernWarfare2.txt"
  export CATNAME="Call of Duty: Modern Warfare 2"
  ./catscripts/Categorize.sh
fi

if [ $BLACKOPS -ne 0 ];
then
  export CATFILE="BlackOps.txt"
  export CATNAME="Call of Duty: Black Ops"
  ./catscripts/Categorize.sh
fi

if [ $MW3 -ne 0 ];
then
  export CATFILE="ModernWarfare3.txt"
  export CATNAME="Call of Duty: Modern Warfare 3"
  ./catscripts/Categorize.sh
fi

if [ $BO2 -ne 0 ];
then
  export CATFILE="BlackOps2.txt"
  export CATNAME="Call of Duty: Black Ops II"
  ./catscripts/Categorize.sh
fi

rm CallofDuty.txt
rm COD4.txt
rm WorldAtWar.txt
rm ModernWarfare2.txt
rm ModernWarfare3.txt
rm BlackOps.txt
rm BlackOps2.txt