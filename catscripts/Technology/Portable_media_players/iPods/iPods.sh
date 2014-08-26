#!/bin/bash

KEYWORDS_IPODS="\bi(| )pod"
KEYWORDS_IPODTOUCH="i(| )pod(| )touch"
KEYWORDS_IPODNANO="i(| )pod(| )nano"
KEYWORDS_IPODSHUFFLE="i(| )pod(| )shuffle"
KEYWORDS_IPODS_EXCLUDE="$KEYWORDS_IPODNANO|$KEYWORDS_IPODSHUFFLE|$KEYWORDS_IPODTOUCH"
KEYWORDS_IPODS_ALL="$KEYWORDS_IPODS|$KEYWORDS_IPODNANO|$KEYWORDS_IPODSHUFFLE|$KEYWORDS_IPODTOUCH"

if [ "$1" == "" ];
then

  debug_start "iPods"

  IPODS=$(egrep -i "$KEYWORDS_IPODS" "$NEWPAGES" | egrep -iv "$KEYWORDS_IPODS_EXCLUDE")
  TOUCH=$(egrep -i "$KEYWORDS_IPODTOUCH" "$NEWPAGES")
  NANO=$(egrep -i "$KEYWORDS_IPODNANO" "$NEWPAGES")
  SHUFFLE=$(egrep -i "$KEYWORDS_IPODSHUFFLE" "$NEWPAGES")

  categorize "IPODS" "iPods"
  categorize "TOUCH" "iPod touch"
  categorize "NANO" "iPod nano"
  categorize "SHUFFLE" "iPod shuffle"

  debug_end "iPods"

fi

#This is here to make ShellCheck ignore KEYWORDS_IPODS_ALL, which is used in another script
KEYWORDS_IPODS_ALL="$KEYWORDS_IPODS_ALL"