#!/bin/bash

KEYWORDS_TRANSPORTATION="Transportation"
KEYWORDS_SCHOOLBUS="School(| )Bus"
KEYWORDS_SCHOOLBUS_EXCLUDE="Magic(| )School(| )Bus"
KEYWORDS_TRANSPORTATION_EXCLUDE="$KEYWORDS_SCHOOLBUS"

TRANSPORTATIONDIR="./catscripts/Transportation"
#$TRANSPORTATIONDIR/Airplanes/Airplanes.sh
. $TRANSPORTATIONDIR/Vehicle_manufacturers/Manufacturers.sh

if [ "$1" == "" ];
then

  debug_start "Transportation"

  TRANSPORTATION=$(egrep -i "$KEYWORDS_TRANSPORTATION" "$NEWPAGES" | egrep -iv "$KEYWORDS_TRANSPORTATION_EXCLUDE")
  SCHOOLBUS=$(egrep -i "$KEYWORDS_SCHOOLBUS" "$NEWPAGES" | egrep -iv "$KEYWORDS_SCHOOLBUS_EXCLUDE")

  categorize "TRANSPORTATION" "Transportation"

  debug_end "Transportation"

fi