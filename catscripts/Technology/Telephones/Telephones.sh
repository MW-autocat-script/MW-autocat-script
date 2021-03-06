#!/bin/bash

KEYWORDS_TELEPHONES="telephone|\bphone(|s)\b|caller(| )ID|call(| )waiting|busy(| )signal"

KEYWORDS_CELLPHONES="(mobile|cell(|ular)|smart|Android)(| )phone|SIM(| )card|(^| )(2|3|4)G\b|GPRS"
KEYWORDS_IPHONE="\bi(| )phone"
KEYWORDS_NOKIA="Nokia"
KEYWORDS_LGSCRIPT="LG(| )Script"
KEYWORDS_LGENVTOUCH="env(|y)(| )Touch|VX11000"
KEYWORDS_SAMSUNGPHONES="Samsung(| )((|cell)(| )phone|Focus|Ativ|Omnia|Exhibit|Captivate(| )Glide|Droid(| )Charge|innov8)"
KEYWORDS_SMS="\bSMS\b|text(| )messag(e|ing)|texting|sexting"
KEYWORDS_SNAPCHAT="Snap(| )chat"
KEYWORDS_INSTAGRAM="Insta(| )gram"

KEYWORDS_CELLPHONES_EXCLUDE="$KEYWORDS_IPHONE|$KEYWORDS_NOKIA|$KEYWORDS_LGSCRIPT|$KEYWORDS_SMS|$KEYWORDS_SNAPCHAT|$KEYWORDS_INSTAGRAM|$KEYWORDS_LGENVTOUCH|$KEYWORDS_SAMSUNGPHONES"
KEYWORDS_CELLPHONES_ALL="$KEYWORDS_CELLPHONES|$KEYWORDS_IPHONE|$KEYWORDS_NOKIA|$KEYWORDS_LGSCRIPT|$KEYWORDS_LGENVTOUCH|$KEYWORDS_SMS|$KEYWORDS_SNAPCHAT|$KEYWORDS_INSTAGRAM|$KEYWORDS_SAMSUNGPHONES"
KEYWORDS_TELEPHONES_EXCLUDE="$KEYWORDS_CELLPHONES_ALL|$KEYWORDS_CELLPHONES_EXCLUDE"


if [ "$1" == "" ];
then

  debug_start "Telephones"

  TELEPHONES=$(egrep -i "$KEYWORDS_TELEPHONES" "$NEWPAGES" | egrep -iv "$KEYWORDS_TELEPHONES_EXCLUDE")
  CELLPHONES=$(egrep -i "$KEYWORDS_CELLPHONES" "$NEWPAGES" | egrep -iv "$KEYWORDS_CELLPHONES_EXCLUDE")
  IPHONES=$(egrep -i "$KEYWORDS_IPHONE" "$NEWPAGES")
  NOKIA=$(egrep -i "$KEYWORDS_NOKIA" "$NEWPAGES")
  LGSCRIPT=$(egrep -i "$KEYWORDS_LGSCRIPT" "$NEWPAGES")
  LGENVTOUCH=$(egrep -i "$KEYWORDS_LGENVTOUCH" "$NEWPAGES")
  SMS=$(egrep -i "$KEYWORDS_SMS" "$NEWPAGES")
  SNAPCHAT=$(egrep -i "$KEYWORDS_SNAPCHAT" "$NEWPAGES")
  INSTAGRAM=$(egrep -i "$KEYWORDS_INSTAGRAM" "$NEWPAGES")
  SAMSUNGPHONES=$(egrep -i "$KEYWORDS_SAMSUNGPHONES" "$NEWPAGES")

  categorize "TELEPHONES" "Telephones"
  categorize "CELLPHONES" "Cellphones"
  categorize "IPHONES" "iPhone"
  categorize "NOKIA" "Nokia"
  categorize "LGSCRIPT" "LG Script"
  categorize "LGENVTOUCH" "LG enV Touch"
  categorize "SAMSUNGPHONES" "Samsung phones"
  categorize "SMS" "SMS"
  categorize "SNAPCHAT" "Snapchat"
  categorize "INSTAGRAM" "Instagram"

  debug_end "Telephones"

fi