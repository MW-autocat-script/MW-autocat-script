#!/bin/bash

KEYWORDS_MICE="\b(Mouse|Mice)"
KEYWORDS_MICE_EXCLUDE="(Mickey|Minnie|Mighty|Magic|wireless|optical|PS/2|mechanical) (Mice|Mouse)|computer|desktop|laptop|joystick|keyboard|track(| )(ball|pad|point)|mouse(-| )(deer|lemur|button|pointer|connector)|The(| )Great Mouse(| )Detective|Of Mice(| )and(| )Men|mousefur|mouse(| )trap|mousehunt|Cyber Mice(| )Party|(3|Three)(| )Blind Mice|The Mouse(| )and(| )the(| )Motorcycle|user(| |-)interface|Poptropica|Star(| )Wars|The(| )Cat(|_)and(|_)The_Mouse|Call(| )of(| )Duty|House(| )of(| )Mouse|Disney|Tom(| )(&|and)(| )Jerry|[0-9]-letter(| )word|Stuart(| )Little|Bear(| )in(| )the(| )Big(| )Blue(| )House|Mouse(| )Ka(|-| )boom"
KEYWORDS_MICE_ALL="$KEYWORDS_MICE"

if [ "$1" == "" ];
then
  
  debug_start "Mice"

  MICE=$(egrep -i "$KEYWORDS_MICE" "$NEWPAGES" | egrep -iv "$KEYWORDS_MICE_EXCLUDE")

  categorize "MICE" "Mice"

  debug_end "Mice"

fi