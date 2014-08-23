#!/bin/bash

KEYWORDS_HOBBIES="Hobbies|hobby"
KEYWORDS_SEWING="\bsew(|ing)\b|embroidery"
KEYWORDS_KNITTING="\bknit(|ting)(|s)\b|crochet"
KEYWORDS_SEWING_EXCLUDE="$KEYWORDS_KNITTING"
KEYWORDS_PHOTOGRAPHY="Photography"
KEYWORDS_PHOTOGRAPHY_EXCLUDE="$KEYWORDS_CAMERAS_ALL"
KEYWORDS_BASEBALLCARDS="baseball(| )card"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Hobbies"

  . ./catscripts/Technology/Cameras/Cameras.sh norun #KEYWORDS_CAMERAS_ALL
  . ./catscripts/Lifestyle/Hobbies/Firearms/Firearms.sh #KEYWORDS_FIREARMS_ALL

  KEYWORDS_HOBBIES_EXCLUDE="$KEYWORDS_SEWING|$KEYWORDS_KNITTING|$KEYWORDS_PHOTOGRAPHY|$KEYWORDS_BASEBALLCARDS|$KEYWORDS_CAMERAS_ALL|$KEYWORDS_FIREARMS_ALL"

  HOBBIES=$(egrep -i "$KEYWORDS_HOBBIES" "$NEWPAGES" | egrep -iv "$KEYWORDS_HOBBIES_EXCLUDE")
  SEWING=$(egrep -i "$KEYWORDS_SEWING" "$NEWPAGES" | egrep -iv "$KEYWORDS_SEWING_EXCLUDE")
  KNITTING=$(egrep -i "$KEYWORDS_KNITTING" "$NEWPAGES")
  PHOTOGRAPHY=$(egrep -i "$KEYWORDS_PHOTOGRAPHY" "$NEWPAGES" | egrep -iv "$KEYWORDS_PHOTOGRAPHY_EXCLUDE")
  BASEBALLCARDS=$(egrep -i "$KEYWORDS_BASEBALLCARDS" "$NEWPAGES")

  categorize "HOBBIES" "Hobbies"
  categorize "SEWING" "Sewing"
  categorize "KNITTING" "Knitting"
  categorize "PHOTOGRAPHY" "Photography"
  categorize "BASEBALLCARDS" "Baseball cards"

  debug_end "Hobbies"

else

  . ./catscripts/Technology/Cameras/Cameras.sh norun #KEYWORDS_CAMERAS_ALL
  . ./catscripts/Lifestyle/Hobbies/Firearms/Firearms.sh norun #KEYWORDS_FIREARMS_ALL

  KEYWORDS_HOBBIES_EXCLUDE="$KEYWORDS_SEWING|$KEYWORDS_KNITTING|$KEYWORDS_PHOTOGRAPHY|$KEYWORDS_BASEBALLCARDS|$KEYWORDS_CAMERAS_ALL|$KEYWORDS_FIREARMS_ALL"

fi