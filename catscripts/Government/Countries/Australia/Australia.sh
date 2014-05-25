#!/bin/bash

KEYWORDS_AUSTRALIA="Australia"

if [ "$1" == "" ];
then

  debug_start "Australia"

  AUSTRALIADIR="./catscripts/Government/Countries/Australia"

  . $AUSTRALIADIR/Canberra/Canberra.sh #KEYWORDS_CANBERRA_ALL
  . $AUSTRALIADIR/Sydney/Sydney.sh #KEYWORDS_SYDNEY_ALL
  . $AUSTRALIADIR/Melbourne/Melbourne.sh #KEYWORDS_MELBOURNE_ALL

  KEYWORDS_AUSTRALIA_EXCLUDE="$KEYWORDS_CANBERRA_ALL|$KEYWORDS_SYDNEY_ALL|$KEYWORDS_MELBOURNE_ALL"
  KEYWORDS_AUSTRALIA_ALL="$KEYWORDS_AUSTRALIA|$KEYWORDS_AUSTRALIA_EXCLUDE"

  AUSTRALIA=$(egrep -i "$KEYWORDS_AUSTRALIA" newpages.txt | egrep -iv "$KEYWORDS_AUSTRALIA_EXCLUDE")

  if [ "$AUSTRALIA" != "" ];
  then
    printf "%s" "$AUSTRALIA" > Australia.txt
    export CATFILE="Australia.txt"
    export CATNAME="Australia"
    $CATEGORIZE
    rm Australia.txt
    unset AUSTRALIA
  fi

  debug_end "Australia"

else

    AUSTRALIADIR="./catscripts/Government/Countries/Australia"

  . $AUSTRALIADIR/Canberra/Canberra.sh norun #KEYWORDS_CANBERRA_ALL
  . $AUSTRALIADIR/Sydney/Sydney.sh norun #KEYWORDS_SYDNEY_ALL
  . $AUSTRALIADIR/Melbourne/Melbourne.sh norun #KEYWORDS_MELBOURNE_ALL

  KEYWORDS_AUSTRALIA_EXCLUDE="$KEYWORDS_CANBERRA_ALL|$KEYWORDS_SYDNEY_ALL|$KEYWORDS_MELBOURNE_ALL"
  KEYWORDS_AUSTRALIA_ALL="$KEYWORDS_AUSTRALIA|$KEYWORDS_AUSTRALIA_EXCLUDE"

fi

  
