#!/bin/bash
PMPDIR="./catscripts/Technology/Portable_media_players"
KEYWORDS_PMP="MP(3|4)(| )player|portable(| )media(| )player"

if [ "$1" == "" ];
then

  debug_start "Portable media players"

  . $PMPDIR/iPods/iPods.sh #KEYWORDS_IPODS_ALL
  . $PMPDIR/Zune/Zune.sh #KEYWORDS_ZUNE

  KEYWORDS_PMP_EXCLUDE="$KEYWORDS_IPODS_ALL|$KEYWORDS_ZUNE"
  KEYWORDS_PMP_ALL="$KEYWORDS_PMP|$KEYWORDS_IPODS_ALL|$KEYWORDS_ZUNE"

  PMP=$(egrep -i "$KEYWORDS_PMP" "$NEWPAGES" | egrep -iv "$KEYWORDS_PMP_EXCLUDE")

  categorize "PMP" "Portable media players"

  debug_end "Portable media players"

else

  . $PMPDIR/iPods/iPods.sh norun #KEYWORDS_IPODS_ALL
  . $PMPDIR/Zune/Zune.sh norun #KEYWORDS_ZUNE

  KEYWORDS_PMP_ALL="$KEYWORDS_PMP|$KEYWORDS_IPODS_ALL|$KEYWORDS_ZUNE"

fi

#This is here to make ShellCheck not complain about KEYWORDS_PMP_ALL, which is used elsewhere
KEYWORDS_PMP_ALL="$KEYWORDS_PMP_ALL"
