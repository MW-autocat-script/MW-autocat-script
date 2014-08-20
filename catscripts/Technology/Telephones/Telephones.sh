#!/bin/bash

KEYWORDS_TELEPHONES="telephone|\bphone|caller(| )ID|call(| )waiting|busy(| )signal"

KEYWORDS_CELLPHONES="cell(|ular)(| )phone|mobile(| )(|tele)phone|SIM(| )card|(^| )(2|3|4)G\b|GPRS"
KEYWORDS_IPHONE="\bi(| )phone"
KEYWORDS_NOKIA="Nokia"
KEYWORDS_LGSCRIPT="LG(| )Script"
KEYWORDS_LGENVTOUCH="env(|y)(| )Touch|VX11000"
KEYWORDS_SMS="\bSMS\b|text(| )messag(e|ing)|texting|sexting"
KEYWORDS_SNAPCHAT="Snap(| )chat"
KEYWORDS_INSTAGRAM="Insta(| )gram"

KEYWORDS_CELLPHONES_EXCLUDE="$KEYWORDS_IPHONE|$KEYWORDS_NOKIA|$KEYWORDS_LGSCRIPT|$KEYWORDS_SMS|$KEYWORDS_SNAPCHAT|$KEYWORDS_INSTAGRAM|$KEYWORDS_LGENVTOUCH"
KEYWORDS_CELLPHONES_ALL="$KEYWORDS_CELLPHONES|$KEYWORDS_IPHONE|$KEYWORDS_NOKIA|$KEYWORDS_LGSCRIPT|$KEYWORDS_LGENVTOUCH|$KEYWORDS_SMS|$KEYWORDS_SNAPCHAT|$KEYWORDS_INSTAGRAM"
KEYWORDS_TELEPHONES_EXCLUDE="$KEYWORDS_CELLPHONES_ALL|$KEYWORDS_CELLPHONES_EXCLUDE"


if [ "$1" == "" ];
then

  debug_start "Telephones"

  TELEPHONES="$(egrep -i "$KEYWORDS_TELEPHONES" "$NEWPAGES" | egrep -iv "$KEYWORDS_TELEPHONES_EXCLUDE")"
  CELLPHONES="$(egrep -i "$KEYWORDS_CELLPHONES" "$NEWPAGES" | egrep -iv "$KEYWORDS_CELLPHONES_EXCLUDE")"
  IPHONES="$(egrep -i "$KEYWORDS_IPHONE" "$NEWPAGES")"
  NOKIA="$(egrep -i "$KEYWORDS_NOKIA" "$NEWPAGES")"
  LGSCRIPT="$(egrep -i "$KEYWORDS_LGSCRIPT" "$NEWPAGES")"
  LGENVTOUCH="$(egrep -i "$KEYWORDS_LGENVTOUCH" "$NEWPAGES")"
  SMS="$(egrep -i "$KEYWORDS_SMS" "$NEWPAGES")"
  SNAPCHAT="$(egrep -i "$KEYWORDS_SNAPCHAT" "$NEWPAGES")"
  INSTAGRAM="$(egrep -i "$KEYWORDS_INSTAGRAM" "$NEWPAGES")"

  if [ "$TELEPHONES" != "" ];
  then
    printf "%s" "$TELEPHONES" > Telephones.txt
    export CATFILE="Telephones.txt"
    export CATNAME="Telephones"
    $CATEGORIZE
    rm Telephones.txt
    unset TELEPHONES
  fi

  if [ "$CELLPHONES" != "" ];
  then
    printf "%s" "$CELLPHONES" > Cellphones.txt
    export CATFILE="Cellphones.txt"
    export CATNAME="Cellphones"
    $CATEGORIZE
    rm Cellphones.txt
    unset CELLPHONES
  fi

  if [ "$IPHONES" != "" ];
  then
    printf "*s" "$IPHONES" > iPhones.txt
    export CATFILE="iPhones.txt"
    export CATNAME="iPhone"
    $CATEGORIZE
    rm iPhones.txt
    unset IPHONES
  fi

  if [ "$NOKIA" != "" ];
  then
    printf "%s" "$NOKIA" > Nokia.txt
    export CATFILE="Nokia.txt"
    export CATNAME="Nokia"
    $CATEGORIZE
    rm Nokia.txt
    unset NOKIA
  fi

  if [ "$LGSCRIPT" != "" ];
  then
    printf "%s" "$LGSCRIPT" > LGScript.txt
    export CATFILE="LGScript.txt"
    export CATNAME="LG Script"
    $CATEGORIZE
    rm LGScript.txt
    unset LGSCRIPT
  fi

  if [ "$LGENVTOUCH" != "" ];
  then
    printf "%s" "$LGENVTOUCH" > LGenVTouch.txt
    export CATFILE="LGenVTouch.txt"
    export CATNAME="LG enV Touch"
    $CATEGORIZE
    rm LGenVTouch.txt
    unset LGENVTOUCH
  fi

  if [ "$SMS" != "" ];
  then
    printf "%s" "$SMS" > SMS.txt
    export CATFILE="SMS.txt"
    export CATNAME="SMS"
    $CATEGORIZE
    rm SMS.txt
    unset SMS
  fi

  if [ "$SNAPCHAT" != "" ];
  then
    printf "%s" "$SNAPCHAT" > Snapchat.txt
    export CATFILE="Snapchat.txt"
    export CATNAME="Snapchat"
    $CATEGORIZE
    rm Snapchat.txt
    unset SNAPCHAT
  fi

  if [ "$INSTAGRAM" != "" ];
  then
    printf "%s" "$INSTAGRAM" > Instagram.txt
    export CATFILE="Instagram.txt"
    export CATNAME="Instagram"
    $CATEGORIZE
    rm Instagram.txt
    unset INSTAGRAM
  fi

  debug_end "Telephones"

fi