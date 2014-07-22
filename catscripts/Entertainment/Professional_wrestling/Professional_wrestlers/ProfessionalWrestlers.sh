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

  PROFESSIONALWRESTLERS="$(egrep -i "$KEYWORDS_PROFESSIONALWRESTLERS" newpages.txt | egrep -iv "$KEYWORDS_PROFESSIONALWRESTLERS_EXCLUDE")"
  DAVEBAUTISTA="$(egrep -i "$KEYWORDS_DAVEBAUTISTA" newpages.txt)"
  PHILLIPBROOKS="$(egrep -i "$KEYWORDS_PHILLIPBROOKS" newpages.txt)"
  MARKCALAWAY="$(egrep -i "$KEYWORDS_MARKCALAWAY" newpages.txt)"
  JOHNCENA="$(egrep -i "$KEYWORDS_JOHNCENA" newpages.txt)"
  JEFFHARDY="$(egrep -i "$KEYWORDS_JEFFHARDY" newpages.txt)"
  MATTHARDY="$(egrep -i "$KEYWORDS_MATTHARDY" newpages.txt)"
  CHRISTOPHERIRVINE="$(egrep -i "$KEYWORDS_CHRISTOPHERIRVINE" newpages.txt)"

  if [ "$PROFESSIONALWRESTLERS" != "" ];
  then
    printf "%s" "$PROFESSIONALWRESTLERS" > ProfessionalWrestlers.txt
    export CATFILE="ProfessionalWrestlers.txt"
    export CATNAME="Professional wrestlers"
    $CATEGORIZE
    rm ProfessionalWrestlers.txt
    unset PROFESSIONALWRESTLERS
  fi

  if [ "$DAVEBAUTISTA" != "" ];
  then
    printf "%s" "$DAVEBAUTISTA" > DaveBautista.txt
    export CATFILE="DaveBautista.txt"
    export CATNAME="Dave Bautista"
    $CATEGORIZE
    rm DaveBautista.txt
    unset DAVEBAUTISTA
  fi

  if [ "$PHILLIPBROOKS" != "" ];
  then
    printf "%s" "$PHILLIPBROOKS" > PhillipBrooks.txt
    export CATFILE="PhillipBrooks.txt"
    export CATNAME="Phillip Brooks"
    $CATEGORIZE
    rm PhillipBrooks.txt
    unset PHILLIPBROOKS
  fi

  if [ "$MARKCALAWAY" != "" ];
  then
    printf "%s" "$MARKCALAWAY" > MarkCalaway.txt
    export CATFILE="MarkCalaway.txt"
    export CATNAME="Mark Calaway"
    $CATEGORIZE
    rm MarkCalaway.txt
    unset MARKCALAWAY
  fi

  if [ "$JOHNCENA" != "" ];
  then
    printf "%s" "$JOHNCENA" > JohnCena.txt
    export CATFILE="JohnCena.txt"
    export CATNAME="John Cena"
    $CATEGORIZE
    rm JohnCena.txt
    unset JOHNCENA
  fi

  if [ "$JEFFHARDY" != "" ];
  then
    printf "%s" "$JEFFHARDY" > JeffHardy.txt
    export CATFILE="JeffHardy.txt"
    export CATNAME="Jeff Hardy"
    $CATEGORIZE
    rm JeffHardy.txt
    unset JEFFHARDY
  fi

  if [ "$MATTHARDY" != "" ];
  then
    printf "%s" "$MATTHARDY" > MattHardy.txt
    export CATFILE="MattHardy.txt"
    export CATNAME="Matt Hardy"
    $CATEGORIZE
    rm MattHardy.txt
    unset MATTHARDY
  fi

  if [ "$CHRISTOPHERIRVINE" != "" ];
  then
    printf "%s" "$CHRISTOPHERIRVINE" > ChristopherIrvine.txt
    export CATFILE="ChristopherIrvine.txt"
    export CATNAME="Christopher Irvine"
    $CATEGORIZE
    rm ChristopherIrvine.txt
    unset CHRISTOPHERIRVINE
  fi

  debug_end "Professional wrestlers"

fi
