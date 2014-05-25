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

if [ "$1" == "" ];
then

  debug_start "Grand Theft Auto series"

  SERIES=$(egrep -i "$KEYWORDS_GTA_SERIES" newpages.txt | egrep -iv "$KEYWORDS_GTA_SERIES_EXCLUDE")
  GTA2=$(egrep -i "$KEYWORDS_GTA2" newpages.txt)
  GTA3=$(egrep -i "$KEYWORDS_GTA3" newpages.txt)
  VICECITY=$(egrep -i "$KEYWORDS_GTAVC" newpages.txt | egrep -iv "$KEYWORDS_GTAVC_EXCLUDE")
  ANDREAS=$(egrep -i "$KEYWORDS_GTASA" newpages.txt)
  LIBSTORIES=$(egrep -i "$KEYWORDS_GTALCS" newpages.txt)
  VICESTORIES=$(egrep -i "$KEYWORDS_GTAVCS" newpages.txt)
  GTA4=$(egrep -i "$KEYWORDS_GTA4" newpages.txt)
  GTA5=$(egrep -i "$KEYWORDS_GTA5" newpages.txt)
  CHINATOWN=$(egrep -i "$KEYWORDS_GTACHINATOWN" newpages.txt)
  DAMNED=$(egrep -i "$KEYWORDS_GTATLAD" newpages.txt)
  TONY=$(egrep -i "$KEYWORDS_GTATBOGT" newpages.txt)

  if [ "$SERIES" != "" ];
  then
    printf "%s" "$SERIES" > GTA.txt
    export CATFILE="GTA.txt"
    export CATNAME="Grand Theft Auto series"
    $CATEGORIZE
    rm GTA.txt
    unset SERIES
  fi

  if [ "$GTA2" != "" ];
  then
    printf "%s" "$GTA2" > GTA2.txt
    export CATFILE="GTA2.txt"
    export CATNAME="Grand Theft Auto 2"
    $CATEGORIZE
    rm GTA2.txt
    unset GTA2
  fi

  if [ "$GTA3" != "" ];
  then
    printf "%s" "$GTA3" > GrandTheftAuto3.txt
    export CATFILE="GrandTheftAuto3.txt"
    export CATNAME="Grand Theft Auto III"
    $CATEGORIZE
    rm GrandTheftAuto3.txt
    unset GTA3
  fi

  if [ "$VICECITY" != "" ];
  then
    printf "%s" "$VICECITY" > ViceCity.txt
    export CATFILE="ViceCity.txt"
    export CATNAME="Grand Theft Auto: Vice City"
    $CATEGORIZE
    rm ViceCity.txt
    unset VICECITY
  fi

  if [ "$ANDREAS" != "" ];
  then
    printf "%s" "$ANDREAS" > SanAndreas.txt
    export CATFILE="SanAndreas.txt"
    export CATNAME="Grand Theft Auto: San Andreas"
    $CATEGORIZE
    rm SanAndreas.txt
    unset ANDREAS
  fi

  if [ "$LIBSTORIES" != "" ];
  then
    printf "%s" "$LIBSTORIES" > LibertyCityStories.txt
    export CATFILE="LibertyCityStories.txt"
    export CATNAME="Grand Theft Auto: Liberty City Stories"
    $CATEGORIZE
    rm LibertyCityStories.txt
    unset LIBSTORIES
  fi

  if [ "$VICESTORIES" != "" ];
  then
    printf "%s" "$VICESTORIES" > ViceCityStories.txt
    export CATFILE="ViceCityStories.txt"
    export CATNAME="Grand Theft Auto: Vice City Stories"
    $CATEGORIZE
    rm ViceCityStories.txt
    unset VICESTORIES
  fi

  if [ "$GTA4" != "" ];
  then
    printf "%s" "$GTA4" > GrandTheftAuto4.txt
    export CATFILE="GrandTheftAuto4.txt"
    export CATNAME="Grand Theft Auto IV"
    $CATEGORIZE
    rm GrandTheftAuto4.txt
    unset GTA4
  fi

  if [ "$GTA5" != "" ];
  then
    printf "%s" "$GTA5" > GrandTheftAuto5.txt
    export CATFILE="GrandTheftAuto5.txt"
    export CATNAME="Grand Theft Auto V"
    $CATEGORIZE
    rm GrandTheftAuto5.txt
    unset GTA5
  fi

  if [ "$CHINATOWN" != "" ];
  then
    printf "%s" "$CHINATOWN" > ChinaTown.txt
    export CATFILE="ChinaTown.txt"
    export CATNAME="Grand Theft Auto: Chinatown Wars"
    $CATEGORIZE
    rm ChinaTown.txt
    unset CHINATOWN
  fi

  if [ "$DAMNED" != "" ];
  then
    printf "%s" "$DAMNED" > Damned.txt
    export CATFILE="Damned.txt"
    export CATNAME="Grand Theft Auto: The Lost and Damned"
    $CATEGORIZE
    rm Damned.txt
    unset DAMNED
  fi

  if [ "$TONY" != "" ];
  then
    printf "%s" "$TONY" > GayTony.txt
    export CATFILE="GayTony.txt"
    export CATNAME="Grand Theft Auto: The Ballad of Gay Tony"
    $CATEGORIZE
    rm GayTony.txt
    unset TONY
  fi

  debug_end "Grand Theft Auto series"

fi