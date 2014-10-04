#!/bin/bash

KEYWORDS_VIRGINIA="Virginia"
KEYWORDS_JAMESTOWN="Jamestown"
KEYWORDS_ARLINGTON="Arlington"
KEYWORDS_VIRGINIA_EXCLUDE="$KEYWORDS_JAMESTOWN|$KEYWORDS_ARLINGTON|West(| )Virginia|Virginia(| )(Apgar|Hensley|Woolf|McKenna|Grace|Scripps|Leng)"
KEYWORDS_VIRGINIA_ALL="$KEYWORDS_VIRGINIA|$KEYWORDS_ARLINGTON|$KEYWORDS_JAMESTOWN"

if [ "$1" == "" ];
then
  
  debug_start "Virginia"

  VIRGINIA=$(egrep -i "$KEYWORDS_VIRGINIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_VIRGINIA_EXCLUDE")
  ARLINGTON=$(egrep -i "$KEYWORDS_ARLINGTON" "$NEWPAGES")
  JAMESTOWN=$(egrep -i "$KEYWORDS_JAMESTOWN" "$NEWPAGES")

  categorize "VIRGINIA" "Virginia"
  categorize "ARLINGTON" "Arlington"
  categorize "JAMESTOWN" "Jamestown"

  debug_end "Virginia"

fi