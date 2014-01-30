#!/bin/bash

KEYWORDS_TELEPHONES="telephone|\bphone|caller(| )ID|call(| )waiting|busy(| )signal"

KEYWORDS_CELLPHONES="cell(|ular)(| )phone|mobile(| )(|tele)phone|SIM(| )card|(^| )(2|3|4)G\b|GPRS"
KEYWORDS_IPHONE="\bi(| )phone"
KEYWORDS_NOKIA="Nokia"
KEYWORDS_LGSCRIPT="LG(| )Script"
KEYWORDS_SMS="\bSMS\b|text(| )messag(e|ing)|texting|sexting"

KEYWORDS_CELLPHONES_EXCLUDE="$KEYWORDS_IPHONE|$KEYWORDS_NOKIA|$KEYWORDS_LGSCRIPT|$KEYWORDS_SMS"
KEYWORDS_CELLPHONES_ALL="$KEYWORDS_CELLPHONES|$KEYWORDS_IPHONE|$KEYWORDS_NOKIA|$KEYWORDS_LGSCRIPT|$KEYWORDS_SMS"
KEYWORDS_TELEPHONES_EXCLUDE="$KEYWORDS_CELLPHONES_ALL|$KEYWORDS_CELLPHONES_EXCLUDE"


if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Telephones\n"
  fi

  TELEPHONES="$(egrep -i "$KEYWORDS_TELEPHONES" newpages.txt | egrep -iv "$KEYWORDS_TELEPHONES_EXCLUDE")"
  CELLPHONES="$(egrep -i "$KEYWORDS_CELLPHONES" newpages.txt | egrep -iv "$KEYWORDS_CELLPHONES_EXCLUDE")"
  IPHONES="$(egrep -i "$KEYWORDS_IPHONE" newpages.txt)"
  NOKIA="$(egrep -i "$KEYWORDS_NOKIA" newpages.txt)"
  LGSCRIPT="$(egrep -i "$KEYWORDS_LGSCRIPT" newpages.txt)"
  SMS="$(egrep -i "$KEYWORDS_SMS" newpages.txt)"

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

  if [ "$SMS" != "" ];
  then
    printf "%s" "$SMS" > SMS.txt
    export CATFILE="SMS.txt"
    export CATNAME="SMS"
    $CATEGORIZE
    rm SMS.txt
    unset SMS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Telephones\n"
  fi

fi