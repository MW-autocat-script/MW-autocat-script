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

  SHAKESPEARE=$(egrep -i "$KEYWORDS_WILLIAMSHAKESPEARE" "$NEWPAGES" | egrep -iv "$KEYWORDS_WILLIAMSHAKESPEARE_EXCLUDE")
  ROMEOANDJULIET=$(egrep -i "$KEYWORDS_ROMEOANDJULIET" "$NEWPAGES" | egrep -iv "$KEYWORDS_ROMEOANDJULIET_EXCLUDE")
  MACBETH=$(egrep -i "$KEYWORDS_MACBETH" "$NEWPAGES")
  KINGLEAR=$(egrep -i "$KEYWORDS_KINGLEAR" "$NEWPAGES")
  HAMLET=$(egrep -i "$KEYWORDS_HAMLET" "$NEWPAGES")
  OTHELLO=$(egrep -i "$KEYWORDS_OTHELLO" "$NEWPAGES")
  MIDSUMMER=$(egrep -i "$KEYWORDS_MIDSUMMERNIGHT" "$NEWPAGES")
  TEMPEST=$(egrep -i "$KEYWORDS_THETEMPEST" "$NEWPAGES")
  ASYOULIKEIT=$(egrep -i "$KEYWORDS_ASYOULIKEIT" "$NEWPAGES")
  MUCHADO=$(egrep -i "$KEYWORDS_MUCHADO" "$NEWPAGES")
  MERCHANT=$(egrep -i "$KEYWORDS_MERCHANTVENICE" "$NEWPAGES")
  SHREW=$(egrep -i "$KEYWORDS_TAMINGSHREW" "$NEWPAGES")
  TWELFTH=$(egrep -i "$KEYWORDS_TWELFTHNIGHT" "$NEWPAGES")
  TITUS=$(egrep -i "$KEYWORDS_TITUSANDRONICUS" "$NEWPAGES")

  categorize "SHAKESPEARE" "William Shakespeare"
  categorize "ROMEOANDJULIET" "Romeo and Juliet"
  categorize "MACBETH" "Macbeth"
  categorize "KINGLEAR" "King Lear"
  categorize "HAMLET" "Hamlet"
  categorize "OTHELLO" "Othello"
  categorize "MIDSUMMER" "A Midsummer Night's Dream"
  categorize "TEMPEST" "The Tempest"
  categorize "ASYOULIKEIT" "As You Like It"
  categorize "MUCHADO" "Much Ado About Nothing"
  categorize "MERCHANT" "The Merchant of Venice"
  categorize "SHREW" "The Taming of the Shrew"
  categorize "TWELFTH" "Twelfth Night"
  categorize "TITUS" "Titus Andronicus"

  debug_end "William Shakespeare"

fi