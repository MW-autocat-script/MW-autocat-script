#!/bin/bash

KEYWORDS_FORD="Ford(| )Motor(| )Company"
KEYWORDS_TAURUS="Ford(| )Taurus|[0-9]{2,4}(| )Taurus"
KEYWORDS_ESCORT="Ford(| )Escort|[0-9]{2,4}(| )Escort"
KEYWORDS_FOCUS="Ford(| )Focus|[0-9]{2,4}(| )Focus"
KEYWORDS_MUSTANG="Ford(| )Mustang|[0-9]{2,4}(| )Mustang"
KEYWORDS_CONTOUR="Ford(| )Contour|[0-9]{2,4}(| )Contour"
KEYWORDS_MONDEO="Mondeo"

if [ "$1" == "" ];
then

  debug_start "Ford"

  FORD=$(egrep -i "$KEYWORDS_FORD" "$NEWPAGES")
  TAURUS=$(egrep -i "$KEYWORDS_TAURUS" "$NEWPAGES")
  ESCORT=$(egrep -i "$KEYWORDS_ESCORT" "$NEWPAGES")
  FOCUS=$(egrep -i "$KEYWORDS_FOCUS" "$NEWPAGES")
  MUSTANG=$(egrep -i "$KEYWORDS_MUSTANG" "$NEWPAGES")
  CONTOUR=$(egrep -i "$KEYWORDS_CONTOUR" "$NEWPAGES")
  #MONDEO=$(egrep -i "$KEYWORDS_MONDEO" "$NEWPAGES") #No category exists and currently insufficient number of questions to create

  categorize "FORD" "Ford"
  categorize "TAURUS" "Ford Taurus"
  categorize "ESCORT" "Ford Escort"
  categorize "FOCUS" "Ford Focus"
  categorize "MUSTANG" "Ford Mustang"
  categorize "CONTOUR" "Ford Contour"
#  categorize "MONDEO"  "Mondeo"

  debug_end "Ford"

fi