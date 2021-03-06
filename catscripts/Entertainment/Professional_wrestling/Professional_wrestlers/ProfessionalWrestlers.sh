#!/bin/bash

KEYWORDS_PROFESSIONALWRESTLERS="Pro(|fessional)(| )wrestler"


KEYWORDS_DAVEBAUTISTA="Dave(| )Bautista|Batista\b" #Ring name: Batista
KEYWORDS_PHILLIPBROOKS="(Phillip(| )(|Jack)(| )Brooks|CM(| )Punk)"
KEYWORDS_MARKCALAWAY="Mark(| )Calaway|The(| )Undertaker" #Ring name: The Undertaker
KEYWORDS_JOHNCENA="\bCena(|s)\b"
KEYWORDS_JEFFHARDY="(Jeffrey(| )(|Nero)|Jeff)(| )Hardy"
KEYWORDS_MATTHARDY="(Matthew(| )(|Moore)|Matt)(| )Hardy"
KEYWORDS_CHRISTOPHERIRVINE="Chris(|topher)(| )(|Keith)(| )(Jericho|Irvine)" #Ring name: Chris Jericho

KEYWORDS_PROFESSIONALWRESTLERS_EXCLUDE="$KEYWORDS_DAVEBAUTISTA|$KEYWORDS_PHILLIPBROOKS|$KEYWORDS_MARKCALAWAY|$KEYWORDS_JOHNCENA|$KEYWORDS_JEFFHARDY|$KEYWORDS_MATTHARDY|$KEYWORDS_CHRISTOPHERIRVINE"

KEYWORDS_PROFESSIONALWRESTLERS_ALL="$KEYWORDS_PROFESSIONALWRESTLERS|$KEYWORDS_DAVEBAUTISTA|$KEYWORDS_PHILLIPBROOKS|$KEYWORDS_MARKCALAWAY|$KEYWORDS_JOHNCENA|$KEYWORDS_JEFFHARDY|$KEYWORDS_MATTHARDY|$KEYWORDS_CHRISTOPHERIRVINE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Professional wrestlers"

  PROFESSIONALWRESTLERS=$(egrep -i "$KEYWORDS_PROFESSIONALWRESTLERS" "$NEWPAGES" | egrep -iv "$KEYWORDS_PROFESSIONALWRESTLERS_EXCLUDE")
  DAVEBAUTISTA=$(egrep -i "$KEYWORDS_DAVEBAUTISTA" "$NEWPAGES")
  PHILLIPBROOKS=$(egrep -i "$KEYWORDS_PHILLIPBROOKS" "$NEWPAGES")
  MARKCALAWAY=$(egrep -i "$KEYWORDS_MARKCALAWAY" "$NEWPAGES")
  JOHNCENA=$(egrep -i "$KEYWORDS_JOHNCENA" "$NEWPAGES")
  JEFFHARDY=$(egrep -i "$KEYWORDS_JEFFHARDY" "$NEWPAGES")
  MATTHARDY=$(egrep -i "$KEYWORDS_MATTHARDY" "$NEWPAGES")
  CHRISTOPHERIRVINE=$(egrep -i "$KEYWORDS_CHRISTOPHERIRVINE" "$NEWPAGES")

  categorize "PROFESSIONALWRESTLERS" "Professional wrestlers"
  categorize "DAVEBAUTISTA" "Dave Bautista"
  categorize "PHILLIPBROOKS" "Phillip Brooks"
  categorize "MARKCALAWAY" "Mark Calaway"
  categorize "JOHNCENA" "John Cena"
  categorize "JEFFHARDY" "Jeff Hardy"
  categorize "MATTHARDY" "Matt Hardy"
  categorize "CHRISTOPHERIRVINE" "Christopher Irvine"

  debug_end "Professional wrestlers"

fi
