#!/bin/bash

KEYWORDS_WILLIAMSHAKESPEARE="Shake(| )spear(|e)"
KEYWORDS_ROMEOANDJULIET="\bRomeo(|')(|s)\b|Juliet(|'s)(|s)|Montague|Capulet|(Friar|Father)(| )(Laurence|Lawrence)"
KEYWORDS_ROMEOANDJULIET_EXCLUDE="Rune(| )Scape|Juliet(| )(Butler|Burke)|Alfa(| )Romeo|Romeo(| )(Santos|Beckham)|Louis(| )Juliet|on(| )Lost|Unseen(| )Academicals|wizards(| )of(| )waverly(| )place"
KEYWORDS_MACBETH="Macbeth"
KEYWORDS_KINGLEAR="\bKing(| )Lear"
KEYWORDS_HAMLET="Hamlet"
KEYWORDS_OTHELLO="Othello"
KEYWORDS_MIDSUMMERNIGHT="Mid(| )summer(| )Night"
KEYWORDS_THETEMPEST="The(| )Tempest"
KEYWORDS_MUCHADO="Much(| )Ado(| )About(| )Nothing"
KEYWORDS_CORIOLANUS="Coriolanus"
KEYWORDS_TAMINGSHREW="Taming(| )of(| )the(| )Shrew"
KEYWORDS_ASYOULIKEIT="As(| )You(| )Like(| )It"
KEYWORDS_TITUSANDRONICUS="Titus(| )Andronicus"
KEYWORDS_MERCHANTVENICE="Merchant(| )of(| )Venice"
KEYWORDS_TWELFTHNIGHT="(12th|Twelfth)(| )Night"
KEYWORDS_WILLIAMSHAKESPEARE_EXCLUDE="$KEYWORDS_HAMLET|$KEYWORDS_KINGLEAR|$KEYWORDS_MACBETH|$KEYWORDS_MIDSUMMERNIGHT|$KEYWORDS_OTHELLO|$KEYWORDS_ROMEOANDJULIET|$KEYWORDS_THETEMPEST|$KEYWORDS_MUCHADO|$KEYWORDS_CORIOLANUS|$KEYWORDS_TAMINGSHREW|$KEYWORDS_ASYOULIKEIT|$KEYWORDS_TITUSANDRONICUS|$KEYWORDS_MERCHANTVENICE|$KEYWORDS_TWELFTHNIGHT"

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
  ASYOULIKEIT=$(egrep -i "$KEYWORDS_ASYOULIKEIT" newpages.txt)
  MUCHADO=$(egrep -i "$KEYWORDS_MUCHADO" newpages.txt)
  MERCHANT=$(egrep -i "$KEYWORDS_MERCHANTVENICE" newpages.txt)
  SHREW=$(egrep -i "$KEYWORDS_TAMINGSHREW" newpages.txt)
  TWELFTH=$(egrep -i "$KEYWORDS_TWELFTHNIGHT" newpages.txt)
  TITUS=$(egrep -i "$KEYWORDS_TITUSANDRONICUS" newpages.txt)

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

  if [ "$ASYOULIKEIT" != "" ];
  then
    printf "%s" "$ASYOULIKEIT" > AsYouLikeIt.txt
    export CATFILE="AsYouLikeIt.txt"
    export CATNAME="As You Like It"
    $CATEGORIZE
    rm AsYouLikeIt.txt
    unset ASYOULIKEIT
  fi

  if [ "$MUCHADO" != "" ];
  then
    printf "%s" "$MUCHADO" > MuchAdo.txt
    export CATFILE="MuchAdo.txt"
    export CATNAME="Much Ado About Nothing"
    $CATEGORIZE
    rm MuchAdo.txt
    unset MUCHADO
  fi

  if [ "$MERCHANT" != "" ];
  then
    printf "%s" "$MERCHANT" > Merchant.txt
    export CATFILE="Merchant.txt"
    export CATNAME="The Merchant of Venice"
    $CATEGORIZE
    rm Merchant.txt
    unset MERCHANT
  fi
  
  if [ "$SHREW" != "" ];
  then
    printf "%s" "$SHREW" > Shrew.txt
    export CATFILE="Shrew.txt"
    export CATNAME="The Taming of the Shrew"
    $CATEGORIZE
    rm Shrew.txt
    unset SHREW
  fi

  if [ "$TWELFTH" != "" ];
  then
    printf "%s" "$TWELFTH" > Twelfth.txt
    export CATFILE="Twelfth.txt"
    export CATNAME="Twelfth Night"
    $CATEGORIZE
    rm Twelfth.txt
    unset TWELFTH
  fi

  if [ "$TITUS" != "" ];
  then
    printf "%s" "$TITUS" > Titus.txt
    export CATFILE="Titus.txt"
    export CATNAME="Titus Andronicus"
    $CATEGORIZE
    rm Titus.txt
    unset TITUS
  fi

  debug_end "William Shakespeare"

fi