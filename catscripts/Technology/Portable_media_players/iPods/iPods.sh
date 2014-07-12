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

  IPODS=$(egrep -i "$KEYWORDS_IPODS" newpages.txt | egrep -iv "$KEYWORDS_IPODS_EXCLUDE")
  TOUCH=$(egrep -i "$KEYWORDS_IPODTOUCH" newpages.txt)
  NANO=$(egrep -i "$KEYWORDS_IPODNANO" newpages.txt)
  SHUFFLE=$(egrep -i "$KEYWORDS_IPODSHUFFLE" newpages.txt)

  if [ "$IPODS" != "" ];
  then
    printf "%s" "$IPODS" > iPods.txt
    export CATFILE="iPods.txt"
    export CATNAME="iPods"
    $CATEGORIZE
    rm iPods.txt
    unset IPODS
  fi

  if [ "$TOUCH" != "" ];
  then
    printf "%s" "$TOUCH" > iPodtouch.txt
    export CATFILE="iPodtouch.txt"
    export CATNAME="iPod touch"
    $CATEGORIZE
    rm iPodtouch.txt
    unset TOUCH
  fi

  if [ "$NANO" != "" ];
  then
    printf "%s" "$NANO" > iPodnano.txt
    export CATFILE="iPodnano.txt"
    export CATNAME="iPod nano"
    $CATEGORIZE
    rm iPodnano.txt
    unset NANO
  fi

  if [ "$SHUFFLE" != "" ];
  then
    printf "%s" "$SHUFFLE" > iPodshuffle.txt
    export CATFILE="iPodshuffle.txt"
    export CATNAME="iPod shuffle"
    $CATEGORIZE
    rm iPodshuffle.txt
    unset SHUFFLE
  fi

  debug_end "iPods"

fi

#This is here to make ShellCheck ignore KEYWORDS_IPODS_ALL, which is used in another script
KEYWORDS_IPODS_ALL="$KEYWORDS_IPODS_ALL"