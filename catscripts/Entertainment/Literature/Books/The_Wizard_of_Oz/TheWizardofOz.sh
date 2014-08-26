#!/bin/bash

KEYWORDS_WIZARDOFOZ="Wizard(| )of(| )Oz|Dorothy.+(lion|tin(| )man|scare(| )crow)|lion.+(Dorothy|Tin(| )Man|scare(| )crow)|Scare(| )crow.+(lion|Tin(| )Man|Dorothy)|Tin(| )Man.+(Dorothy|Lion|Scare(| )Crow)|Wicked(| )Witch(| )of(| )the(| )(East|West)|munchkin|loll(y|i)pop(| )Guild|yellow(| )brick(| )road|click(| )tour(| )heels"

if [ "$1" == "" ];
then
  
  debug_start "The Wizard of Oz"

  OZ=$(egrep -i "$KEYWORDS_WIZARDOFOZ" "$NEWPAGES")

  categorize "OZ" "The Wizard of Oz"

  debug_end "The Wizard of Oz"

fi