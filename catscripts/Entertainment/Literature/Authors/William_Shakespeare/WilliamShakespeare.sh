#!/bin/bash

KEYWORDS_WILLIAMSHAKESPEARE="Shake(| )spear(|e)"
KEYWORDS_ROMEOANDJULIET="\bRomeo(|')(|s)\b|Juliet(|'s)(|s)|Montague|Capulet|(Friar|Father)(| )(Laurence|Lawrence)"
KEYWORDS_ROMEOANDJULIET_EXCLUDE="Rune(| )Scape|Juliet(| )(Butler|Burke)|Alfa(| )Romeo|Romeo(| )(Santos|Beckham)|Louis(| )Juliet|on(| )Lost|Unseen(| )Academicals|wizards(| )of(| )waverly(| )place"
KEYWORDS_MACBETH="Macbeth"
KEYWORDS_KINGLEAR="King(| )Lear"
KEYWORDS_HAMLET="Hamlet"
KEYWORDS_OTHELLO="Othello"
KEYWORDS_MIDSUMMERNIGHT="Mid(| )summer(| )Night"
KEYWORDS_THETEMPEST="The(| )Tempest"
KEYWORDS_WILLIAMSHAKESPEARE_EXCLUDE="$KEYWORDS_HAMLET|$KEYWORDS_KINGLEAR|$KEYWORDS_MACBETH|$KEYWORDS_MIDSUMMERNIGHT|$KEYWORDS_OTHELLO|$KEYWORDS_ROMEOANDJULIET|$KEYWORDS_THETEMPEST"

if [ "$1" == "" ];
then
  
  debug_start "William Shakespeare"

  SHAKESPEARE=$(egrep -i "$KEYWORDS_WILLIAMSHAKESPEARE" newpages.txt | egrep -iv "$KEYWORDS_WILLIAMSHAKESPEARE_EXCLUDE")

  if [ "$SHAKESPEARE" != "" ];
  then
    printf "%s" "$SHAKESPEARE" > Shakespeare.txt
    export CATFILE="Shakespeare.txt"
    export CATNAME="William Shakespeare"
    $CATEGORIZE
    rm Shakespeare.txt
    unset SHAKESPEARE
  fi

  debug_end "William Shakespeare"

fi