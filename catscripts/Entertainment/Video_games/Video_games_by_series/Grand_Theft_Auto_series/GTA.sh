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
KEYWORDS_GTA5="GTA(| )(|:| )(| )(V|5|Five)\b|Grand(| )Theft(| )Auto(| )(V\b|5|Five)"
KEYWORDS_GTACHINATOWN="China(| )town(| )Wars|(Grand(| )Theft(| )Auto|GTA)(|:)(| )CTW|Huang(| )Lee"
KEYWORDS_GTATBOGT="Gay(| )Tony|TBoGT|Luis(| )Lopez|\bEFLC|Episodes(| )from(| )Liberty(| )City"
KEYWORDS_GTATLAD="The Lost and Damned|GTA.+Damned|Grand Theft Auto.+Damned|GTA(|:)(| )TLAD|\bEFLC|Episodes(| )from(| )Liberty(| )City"
KEYWORDS_GTA_SERIES_EXCLUDE="$KEYWORDS_GTA2|$KEYWORDS_GTA3|$KEYWORDS_GTA4|$KEYWORDS_GTA5|$KEYWORDS_GTACHINATOWN|$KEYWORDS_GTALCS|$KEYWORDS_GTASA|$KEYWORDS_GTATBOGT|$KEYWORDS_GTATLAD|$KEYWORDS_GTAVC|$KEYWORDS_GTAVC_EXCLUDE|$KEYWORDS_GTAVCS"
KEYWORDS_GTA_SERIES_ALL="$KEYWORDS_GTA_SERIES|$KEYWORDS_GTA_SERIES_EXCLUDE"

if [ "$1" == "" ];
then

  debug_start "Grand Theft Auto series"

  SERIES=$(egrep -i "$KEYWORDS_GTA_SERIES" "$NEWPAGES" | egrep -iv "$KEYWORDS_GTA_SERIES_EXCLUDE")
  GTA2=$(egrep -i "$KEYWORDS_GTA2" "$NEWPAGES")
  GTA3=$(egrep -i "$KEYWORDS_GTA3" "$NEWPAGES")
  VICECITY=$(egrep -i "$KEYWORDS_GTAVC" "$NEWPAGES" | egrep -iv "$KEYWORDS_GTAVC_EXCLUDE")
  ANDREAS=$(egrep -i "$KEYWORDS_GTASA" "$NEWPAGES")
  LIBSTORIES=$(egrep -i "$KEYWORDS_GTALCS" "$NEWPAGES")
  VICESTORIES=$(egrep -i "$KEYWORDS_GTAVCS" "$NEWPAGES")
  GTA4=$(egrep -i "$KEYWORDS_GTA4" "$NEWPAGES")
  GTA5=$(egrep -i "$KEYWORDS_GTA5" "$NEWPAGES")
  CHINATOWN=$(egrep -i "$KEYWORDS_GTACHINATOWN" "$NEWPAGES")
  DAMNED=$(egrep -i "$KEYWORDS_GTATLAD" "$NEWPAGES")
  TONY=$(egrep -i "$KEYWORDS_GTATBOGT" "$NEWPAGES")

  categorize "SERIES" "Grand Theft Auto series"
  categorize "GTA2" "Grand Theft Auto 2"
  categorize "GTA3" "Grand Theft Auto III"
  categorize "VICECITY" "Grand Theft Auto: Vice City"
  categorize "ANDREAS" "Grand Theft Auto: San Andreas"
  categorize "LIBSTORIES" "Grand Theft Auto: Liberty City Stories"
  categorize "VICESTORIES" "Grand Theft Auto: Vice City Stories"
  categorize "GTA4" "Grand Theft Auto IV"
  categorize "GTA5" "Grand Theft Auto V"
  categorize "CHINATOWN" "Grand Theft Auto: Chinatown Wars"
  categorize "DAMNED" "Grand Theft Auto: The Lost and Damned"
  categorize "TONY" "Grand Theft Auto: The Ballad of Gay Tony"

  debug_end "Grand Theft Auto series"

fi