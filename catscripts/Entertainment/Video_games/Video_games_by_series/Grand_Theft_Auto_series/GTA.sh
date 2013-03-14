#!/bin/bash

egrep -i 'Grand Theft Auto|\bGTA\b' newpages.txt | egrep -iv 'GTA(:|| |SA)|[2-9]{1,}|San Andreas|Liberty City|III\b|IV|\bV\b|Vice City|The Lost and Damned|Chinatown Wars|Gay Tony' >> GTA.txt
egrep -i '(GTA|Grand Theft Auto)(|:)(| )(2|II\b)' newpages.txt >> GTA2.txt
egrep -i 'GTA(|:| )3|Grand(| )Theft(| )Auto(| )(III|3)' newpages.txt >> GrandTheftAuto3.txt
egrep -i 'GTA(|:| )(VC|Vice City)|Grand Theft Auto(|:)(| )Vice City' newpages.txt | egrep -iv 'VCS|Vice City Stories' >> ViceCity.txt
egrep -i 'GTA(|:| )(SA|San Andreas)|Grand Theft Auto(|:)(| )San Andreas' newpages.txt >> SanAndreas.txt
egrep -i 'GTA(|:| )Liberty City Stories|Grand Theft Auto(|:)(| )Liberty City Stories' newpages.txt >> LibertyCityStories.txt
egrep -i 'GTA(|:| )(VCS|Vice City Stories)|Grand Theft Auto(|:)(| )Vice City Stories' newpages.txt >> ViceCityStories.txt
egrep -i 'GTA(|:| )4|Grand(| )Theft(| )Auto(| )(IV|4)' newpages.txt >> GrandTheftAuto4.txt
egrep -i 'GTA(|:| )5|Grand(| )Theft(| )Auto(| )(V\b|5)' newpages.txt >> GrandTheftAuto5.txt
egrep -i 'China(| )town Wars' newpages.txt >> ChinaTown.txt
egrep -i 'The Lost and Damned|GTA.+Damned|Grand Theft Auto.+Damned|GTA(|:)(| )TLAD' newpages.txt >> Damned.txt
egrep -i 'Gay Tony|TBoGT' newpages.txt >> GayTony.txt


SERIES=`stat --print=%s GTA.txt`
GTA2=`stat --print=%s GTA2.txt`
GTA3=`stat --print=%s GrandTheftAuto3.txt`
VICECITY=`stat --print=%s ViceCity.txt`
ANDREAS=`stat --print=%s SanAndreas.txt`
LIBSTORIES=`stat --print=%s LibertyCityStories.txt`
VICESTORIES=`stat --print=%s ViceCityStories.txt`
GTA4=`stat --print=%s GrandTheftAuto4.txt`
GTA5=`stat --print=%s GrandTheftAuto5.txt`
CHINATOWN=`stat --print=%s ChinaTown.txt`
DAMNED=`stat --print=%s Damned.txt`
TONY=`stat --print=%s GayTony.txt`

if [ $SERIES -ne 0 ];
then
  export CATFILE="GTA.txt"
  export CATNAME="Grand Theft Auto series"
  ./catscripts/Categorize.sh
fi

if [ $GTA2 -ne 0 ];
then
  export CATFILE="GTA2.txt"
  export CATNAME="Grand Theft Auto 2"
  ./catscripts/Categorize.sh
fi

if [ $GTA3 -ne 0 ];
then
  export CATFILE="GrandTheftAuto3.txt"
  export CATNAME="Grand Theft Auto III"
  ./catscripts/Categorize.sh
fi

if [ $VICECITY -ne 0 ];
then
  export CATFILE="ViceCity.txt"
  export CATNAME="Grand Theft Auto: Vice City"
  ./catscripts/Categorize.sh
fi

if [ $ANDREAS -ne 0 ];
then
  export CATFILE="SanAndreas.txt"
  export CATNAME="Grand Theft Auto: San Andreas"
  ./catscripts/Categorize.sh
fi

if [ $LIBSTORIES -ne 0 ];
then
  export CATFILE="LibertyCityStories.txt"
  export CATNAME="Grand Theft Auto: Liberty City Stories"
  ./catscripts/Categorize.sh
fi

if [ $VICESTORIES -ne 0 ];
then
  export CATFILE="ViceCityStories.txt"
  export CATNAME="Grand Theft Auto: Vice City Stories"
  ./catscripts/Categorize.sh
fi

if [ $GTA4 -ne 0 ];
then
  export CATFILE="GrandTheftAuto4.txt"
  export CATNAME="Grand Theft Auto IV"
  ./catscripts/Categorize.sh
fi

if [ $GTA5 -ne 0 ];
then
  export CATFILE="GrandTheftAuto5.txt"
  export CATNAME="Grand Theft Auto V"
  ./catscripts/Categorize.sh
fi

if [ $CHINATOWN -ne 0 ];
then
  export CATFILE="ChinaTown.txt"
  export CATNAME="Grand Theft Auto: Chinatown Wars"
  ./catscripts/Categorize.sh
fi

if [ $DAMNED -ne 0 ];
then
  export CATFILE="Damned.txt"
  export CATNAME="Grand Theft Auto: The Lost and Damned"
  ./catscripts/Categorize.sh
fi

if [ $TONY -ne 0 ];
then
  export CATFILE="GayTony.txt"
  export CATNAME="Grand Theft Auto: The Ballad of Gay Tony"
  ./catscripts/Categorize.sh
fi

rm GTA.txt
rm GTA2.txt
rm GrandTheftAuto3.txt
rm ViceCity.txt
rm SanAndreas.txt
rm LibertyCityStories.txt
rm ViceCityStories.txt
rm GrandTheftAuto4.txt
rm GrandTheftAuto5.txt
rm ChinaTown.txt
rm Damned.txt
rm GayTony.txt