#!/bin/bash

KEYWORDS_GTA_SERIES="Grand Theft Auto|\bGTA\b|Infernus|Mr\.(| )Whopee"
KEYWORDS_GTA2="(GTA|Grand Theft Auto)(|:)(| )(2|II\b)"
KEYWORDS_GTA3="GTA(| )(|:| )(| )(III|3)|Grand(| )Theft(| )Auto(| )(III|3)"
KEYWORDS_GTAVC="GTA(| )(|:| )(| )(VC|Vice City)|Grand Theft Auto(|:)(| )Vice(| )City|Vice(| )City|Tommy(| )Vercetti"
KEYWORDS_GTAVC_EXCLUDE="VCS|Vice(| )City(| )Stories"
KEYWORDS_GTASA="GTA(| )(|:| )(| )(SA|San Andreas)|Grand Theft Auto(|:)(| )San Andreas|Grove(| )Street(| )Families|(Carl|C(\.|)J(\.|))(| )Johnson|\bBallas\b"
KEYWORDS_GTALCS="GTA(| )(|:| )(| )Liberty City Stories|Grand Theft Auto(|:)(| )Liberty City Stories|\bLCS\b|Toni(| )Cipriani"
KEYWORDS_GTAVCS="GTA(| )(|:| )(| )(VCS|Vice City Stories)|Grand Theft Auto(|:)(| )Vice City Stories|Vice(| )City(| )Stories|Vic(|tor)(| )Vance"
KEYWORDS_GTA4="GTA(| )(|:| )(| )(IV|4)|Grand(| )Theft(| )Auto(| )(IV|4)|(Roman|Niko)(| )Bellic|Niko.+\bRoman|Roman.+\bNiko"
KEYWORDS_GTA5="GTA(| )(|:| )(| )(V|5)\b|Grand(| )Theft(| )Auto(| )(V\b|5)"
KEYWORDS_GTACHINATOWN="China(| )town(| )Wars|(Grand(| )Theft(| )Auto|GTA)(|:)(| )CTW|Huang(| )Lee"
KEYWORDS_GTATBOGT="Gay(| )Tony|TBoGT|Luis(| )Lopez|\bEFLC|Episodes(| )from(| )Liberty(| )City"
KEYWORDS_GTATLAD="The Lost and Damned|GTA.+Damned|Grand Theft Auto.+Damned|GTA(|:)(| )TLAD|\bEFLC|Episodes(| )from(| )Liberty(| )City"
KEYWORDS_GTA_SERIES_EXCLUDE="$KEYWORDS_GTA2|$KEYWORDS_GTA3|$KEYWORDS_GTA4|$KEYWORDS_GTA5|$KEYWORDS_GTACHINATOWN|$KEYWORDS_GTALCS|$KEYWORDS_GTASA|$KEYWORDS_GTATBOGT|$KEYWORDS_GTATLAD|$KEYWORDS_GTAVC|$KEYWORDS_GTAVC_EXCLUDE|$KEYWORDS_GTAVCS"
KEYWORDS_GTA_SERIES_ALL="$KEYWORDS_GTA_SERIES|$KEYWORDS_GTA_SERIES_EXCLUDE"

egrep -i "$KEYWORDS_GTA_SERIES" newpages.txt | egrep -iv "$KEYWORDS_GTA_SERIES_EXCLUDE" >> GTA.txt
egrep -i "$KEYWORDS_GTA2" newpages.txt >> GTA2.txt
egrep -i "$KEYWORDS_GTA3" newpages.txt >> GrandTheftAuto3.txt
egrep -i "$KEYWORDS_GTAVC" newpages.txt | egrep -iv "$KEYWORDS_GTAVC_EXCLUDE" >> ViceCity.txt
egrep -i "$KEYWORDS_GTASA" newpages.txt >> SanAndreas.txt
egrep -i "$KEYWORDS_GTALCS" newpages.txt >> LibertyCityStories.txt
egrep -i "$KEYWORDS_GTAVCS" newpages.txt >> ViceCityStories.txt
egrep -i "$KEYWORDS_GTA4" newpages.txt >> GrandTheftAuto4.txt
egrep -i "$KEYWORDS_GTA5" newpages.txt >> GrandTheftAuto5.txt
egrep -i "$KEYWORDS_GTACHINATOWN" newpages.txt >> ChinaTown.txt
egrep -i "$KEYWORDS_GTATLAD" newpages.txt >> Damned.txt
egrep -i "$KEYWORDS_GTATBOGT" newpages.txt >> GayTony.txt


SERIES=$(stat --print=%s GTA.txt)
GTA2=$(stat --print=%s GTA2.txt)
GTA3=$(stat --print=%s GrandTheftAuto3.txt)
VICECITY=$(stat --print=%s ViceCity.txt)
ANDREAS=$(stat --print=%s SanAndreas.txt)
LIBSTORIES=$(stat --print=%s LibertyCityStories.txt)
VICESTORIES=$(stat --print=%s ViceCityStories.txt)
GTA4=$(stat --print=%s GrandTheftAuto4.txt)
GTA5=$(stat --print=%s GrandTheftAuto5.txt)
CHINATOWN=$(stat --print=%s ChinaTown.txt)
DAMNED=$(stat --print=%s Damned.txt)
TONY=$(stat --print=%s GayTony.txt)

if [ $SERIES -ne 0 ];
then
  export CATFILE="GTA.txt"
  export CATNAME="Grand Theft Auto series"
  $CATEGORIZE
fi

if [ $GTA2 -ne 0 ];
then
  export CATFILE="GTA2.txt"
  export CATNAME="Grand Theft Auto 2"
  $CATEGORIZE
fi

if [ $GTA3 -ne 0 ];
then
  export CATFILE="GrandTheftAuto3.txt"
  export CATNAME="Grand Theft Auto III"
  $CATEGORIZE
fi

if [ $VICECITY -ne 0 ];
then
  export CATFILE="ViceCity.txt"
  export CATNAME="Grand Theft Auto: Vice City"
  $CATEGORIZE
fi

if [ $ANDREAS -ne 0 ];
then
  export CATFILE="SanAndreas.txt"
  export CATNAME="Grand Theft Auto: San Andreas"
  $CATEGORIZE
fi

if [ $LIBSTORIES -ne 0 ];
then
  export CATFILE="LibertyCityStories.txt"
  export CATNAME="Grand Theft Auto: Liberty City Stories"
  $CATEGORIZE
fi

if [ $VICESTORIES -ne 0 ];
then
  export CATFILE="ViceCityStories.txt"
  export CATNAME="Grand Theft Auto: Vice City Stories"
  $CATEGORIZE
fi

if [ $GTA4 -ne 0 ];
then
  export CATFILE="GrandTheftAuto4.txt"
  export CATNAME="Grand Theft Auto IV"
  $CATEGORIZE
fi

if [ $GTA5 -ne 0 ];
then
  export CATFILE="GrandTheftAuto5.txt"
  export CATNAME="Grand Theft Auto V"
  $CATEGORIZE
fi

if [ $CHINATOWN -ne 0 ];
then
  export CATFILE="ChinaTown.txt"
  export CATNAME="Grand Theft Auto: Chinatown Wars"
  $CATEGORIZE
fi

if [ $DAMNED -ne 0 ];
then
  export CATFILE="Damned.txt"
  export CATNAME="Grand Theft Auto: The Lost and Damned"
  $CATEGORIZE
fi

if [ $TONY -ne 0 ];
then
  export CATFILE="GayTony.txt"
  export CATNAME="Grand Theft Auto: The Ballad of Gay Tony"
  $CATEGORIZE
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