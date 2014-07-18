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
  ROMEOANDJULIET=$(egrep -i "$KEYWORDS_ROMEOANDJULIET" newpages.txt | egrep -iv "$KEYWORDS_ROMEOANDJULIET_EXCLUDE")
  MACBETH=$(egrep -i "$KEYWORDS_MACBETH" newpages.txt)
  KINGLEAR=$(egrep -i "$KEYWORDS_KINGLEAR" newpages.txt)
  HAMLET=$(egrep -i "$KEYWORDS_HAMLET" newpages.txt)
  OTHELLO=$(egrep -i "$KEYWORDS_OTHELLO" newpages.txt)
  MIDSUMMER=$(egrep -i "$KEYWORDS_MIDSUMMERNIGHT" newpages.txt)
  TEMPEST=$(egrep -i "$KEYWORDS_THETEMPEST" newpages.txt)

  if [ "$SHAKESPEARE" != "" ];
  then
    printf "%s" "$SHAKESPEARE" > Shakespeare.txt
    export CATFILE="Shakespeare.txt"
    export CATNAME="William Shakespeare"
    $CATEGORIZE
    rm Shakespeare.txt
    unset SHAKESPEARE
  fi

  if [ "$ROMEOANDJULIET" != "" ];
  then
    printf "%s" "$ROMEOANDJULIET" > RomeoandJuliet.txt
    export CATFILE="RomeoandJuliet.txt"
    export CATNAME="Romeo and Juliet"
    $CATEGORIZE
    rm RomeoandJuliet.txt
    unset ROMEOANDJULIET
  fi

  if [ "$MACBETH" != "" ];
  then
    printf "%s" "$MACBETH" > Macbeth.txt
    export CATFILE="Macbeth.txt"
    export CATNAME="Macbeth"
    $CATEGORIZE
    rm Macbeth.txt
    unset MACBETH
  fi

  if [ "$KINGLEAR" != "" ];
  then
    printf "%s" "$KINGLEAR" > KingLear.txt
    export CATFILE="KingLear.txt"
    export CATNAME="King Lear"
    $CATEGORIZE
    rm KingLear.txt
    unset KINGLEAR
  fi

  if [ "$HAMLET" != "" ];
  then
    printf "%s" "$HAMLET" > Hamlet.txt
    export CATFILE="Hamlet.txt"
    export CATNAME="Hamlet"
    $CATEGORIZE
    rm Hamlet.txt
    unset HAMLET
  fi

  if [ "$OTHELLO" != "" ];
  then
    printf "%s" "$OTHELLO" > Othello.txt
    export CATFILE="Othello.txt"
    export CATNAME="Othello"
    $CATEGORIZE
    rm Othello.txt
    unset OTHELLO
  fi

  if [ "$MIDSUMMER" != "" ];
  then
    printf "%s" "$MIDSUMMER" > Midsummer.txt
    export CATFILE="Midsummer.txt"
    export CATNAME="A Midsummer Night's Dream"
    $CATEGORIZE
    rm Midsummer.txt
    unset MIDSUMMER
  fi

  if [ "$TEMPEST" != "" ];
  then
    printf "%s" "$TEMPEST" > Tempest.txt
    export CATFILE="Tempest.txt"
    export CATNAME="The Tempest"
    $CATEGORIZE
    rm Tempest.txt
    unset TEMPEST
  fi

  debug_end "William Shakespeare"

fi