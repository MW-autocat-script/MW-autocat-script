#!/bin/bash

KEYWORDS_ARNIS="\bArnis"
KEYWORDS_KARATE="karate"
KEYWORDS_KARATE_EXCLUDE="Karate(| )(Champ|Kid)"
KEYWORDS_TAEKWONDO="tae(| )kwon(|-| )do"
KEYWORDS_KUNGFU="Kung(|-| )fu"
KEYWORDS_KUNGFU_EXCLUDE="(world|king)(| )of(| )$KEYWORDS_KUNGFU|$KEYWORDS_KUNGFU(| )Panda"
KEYWORDS_MARTIALARTS="Martial(| )art"
KEYWORDS_MARTIALARTS_EXCLUDE="$KEYWORDS_ARNIS|$KEYWORDS_KARATE|$KEYWORDS_KUNGFU|$KEYWORDS_TAEKWONDO"

if [ "$1" == "" ];
then
  
  debug_start "Martial arts"

  ARNIS=$(egrep -i "$KEYWORDS_ARNIS" "$NEWPAGES")
  KARATE=$(egrep -i "$KEYWORDS_KARATE" "$NEWPAGES" | egrep -iv "$KEYWORDS_KARATE_EXCLUDE")
  TAEKWONDO=$(egrep -i "$KEYWORDS_TAEKWONDO" "$NEWPAGES")
  KUNGFU=$(egrep -i "$KEYWORDS_KUNGFU" "$NEWPAGES" | egrep -iv "$KEYWORDS_KUNGFU_EXCLUDE")
  MARTIALARTS=$(egrep -i "$KEYWORDS_MARTIALARTS" "$NEWPAGES"| egrep -iv "$KEYWORDS_MARTIALARTS_EXCLUDE")

  categorize "ARNIS" "Arnis"
  categorize "KARATE" "Karate"
  categorize "TAEKWONDO" "Taekwondo"
  categorize "KUNGFU" "Kung fu"
  categorize "MARTIALARTS" "Martial arts"

  debug_end "Martial arts"

fi