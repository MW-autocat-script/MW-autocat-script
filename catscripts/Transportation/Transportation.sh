#!/bin/bash

KEYWORDS_TRANSPORTATION="Transportation"
KEYWORDS_SCHOOLBUS="School(| )Bus"
KEYWORDS_SCHOOLBUS_EXCLUDE="Magic(| )School(| )Bus"
KEYWORDS_TRANSPORTATION_EXCLUDE="$KEYWORDS_SCHOOLBUS"

TRANSPORTATIONDIR="./catscripts/Transportation"
#$TRANSPORTATIONDIR/Airplanes/Airplanes.sh
$TRANSPORTATIONDIR/Cars/Cars.sh
$TRANSPORTATIONDIR/SUVs/SUVs.sh
#$TRANSPORTATIONDIR/Trucks/Trucks.sh
#$TRANSPORTATIONDIR/Vans/Vans.sh 
$TRANSPORTATIONDIR/Vehicle_manufacturers/Manufacturers.sh

if [ "$1" == "" ];
then

  debug_start "Transportation"

  TRANSPORTATION="$(egrep -i "$KEYWORDS_TRANSPORTATION" newpages.txt | egrep -iv "$KEYWORDS_TRANSPORTATION_EXCLUDE")"
  SCHOOLBUS="$(egrep -i "$KEYWORDS_SCHOOLBUS" newpages.txt | egrep -iv "$KEYWORDS_SCHOOLBUS_EXCLUDE")"

  if [ "$TRANSPORTATION" != "" ];
  then
    printf "%s" "$TRANSPORTATION" > Transportation.txt
    export CATFILE="Transportation.txt"
    export CATNAME="Transportation"
    $CATEGORIZE
    rm Transportation.txt
    unset TRANSPORTATION
  fi

  debug_end "Transportation"

fi