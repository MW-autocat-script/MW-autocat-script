#!/bin/bash

KEYWORDS_GERMANY="Germany"
KEYWORDS_NAZIGERMANY="Nazi"
KEYWORDS_HITLER="Hitler"
KEYWORDS_NAZIGERMANY_SECONDARY="Hitler(| )youth"
KEYWORDS_HITLER_EXCLUDE="$KEYWORDS_NAZIGERMANY_SECONDARY"
KEYWORDS_BERLIN="Berlin"
KEYWORDS_AUSCHWITZ="Auschwitz|Oświęcim"
KEYWORDS_ANNEFRANK="(Anne|Otto)(| )Frank"
KEYWORDS_NAZIGERMANY_EXCLUDE="$KEYWORDS_HITLER|$KEYWORDS_AUSCHWITZ|$KEYWORDS_ANNEFRANK"
KEYWORDS_GERMANY_EXCLUDE="$KEYWORDS_NAZIGERMANY|$KEYWORDS_HITLER|$KEYWORDS_NAZIGERMANY_SECONDARY|$KEYWORDS_AUSCHWITZ|$KEYWORDS_BERLIN"

KEYWORDS_GERMANY_ALL="$KEYWORDS_GERMANY|$KEYWORDS_NAZIGERMANY|$KEYWORDS_HITLER|$KEYWORDS_NAZIGERMANY_SECONDARY|$KEYWORDS_BERLIN|$KEYWORDS_AUSCHWITZ"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Germany"

  GERMANY=$(egrep -i "$KEYWORDS_GERMANY" newpages.txt | egrep -iv "$KEYWORDS_GERMANY_EXCLUDE")
  NAZI=$(egrep -i "$KEYWORDS_NAZIGERMANY" newpages.txt | egrep -iv "$KEYWORDS_NAZIGERMANY_EXCLUDE" && egrep -i "$KEYWORDS_NAZIGERMANY_SECONDARY" newpages.txt)
  HITLER=$(egrep -i "$KEYWORDS_HITLER" newpages.txt | egrep -iv "$KEYWORDS_HITLER_EXCLUDE")
  ANNEFRANK=$(egrep -i "$KEYWORDS_ANNEFRANK" newpages.txt)
  BERLIN=$(egrep -i "$KEYWORDS_BERLIN" newpages.txt)

  if [ "$GERMANY" != "" ];
  then
    printf "%s" "$GERMANY" > Germany.txt
    export CATFILE="Germany.txt"
    export CATNAME="Germany"
    $CATEGORIZE
    rm Germany.txt
    unset GERMANY
  fi

  if [ "$NAZI" != "" ];
  then
    printf "%s" "$NAZI" > NaziGermany.txt
    printf "%s" "$NAZISECONDARY" >> NaziGermany.txt
    export CATFILE="NaziGermany.txt"
    export CATNAME="Nazi Germany"
    $CATEGORIZE
    rm NaziGermany.txt
    unset NAZI
    unset NAZISECONDARY
  fi

  if [ "$HITLER" != "" ];
  then
    printf "%s" "$HITLER" > AdolfHitler.txt
    export CATFILE="AdolfHitler.txt"
    export CATNAME="Adolf Hitler"
    $CATEGORIZE
    rm AdolfHitler.txt
    unset HITLER
  fi

  if [ "$ANNEFRANK" != "" ];
  then
    printf "%s" "$ANNEFRANK" > AnneFrank.txt
    export CATFILE="AnneFrank.txt"
    export CATNAME="Anne Frank"
    $CATEGORIZE
    rm AnneFrank.txt
    unset ANNEFRANK
  fi

  if [ "$BERLIN" != "" ];
  then
    printf "%s" "$BERLIN" > Berlin.txt
    export CATFILE="Berlin.txt"
    export CATNAME="Berlin"
    $CATEGORIZE
    rm Berlin.txt
    unset BERLIN
  fi

  debug_end "Germany"

fi
