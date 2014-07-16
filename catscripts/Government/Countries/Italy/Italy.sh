#!/bin/bash

KEYWORDS_ITALY="Italy"
KEYWORDS_ROME="\bRome(|s)\b"
KEYWORDS_JULIUSCAESAR="Julius(| )Caesar"
KEYWORDS_PISA="Pisa"
KEYWORDS_POMPEII="Pompeii"
KEYWORDS_VENICE="Venice"
KEYWORDS_MILAN="\bMilan(|s)\b"
KEYWORDS_ANCIENTROME="Ancient(| )Rome|Romans|Roman(| )times|Augustus(| )Caesar|Emperor(| )Nero|Caligula|Roman(| )Empire|Emperor(| )of(| )Rome"
KEYWORDS_ANCIENTROME_EXCLUDE="$KEYWORDS_POMPEII|$KEYWORDS_JULIUSCAESAR|Book of Romans|Romans [0-9]{1,}\:[0-9]{1,}"
KEYWORDS_ROME_EXCLUDE="$KEYWORDS_ANCIENTROME|$KEYWORDS_ANCIENTROME_EXCLUDE|Rome(,|)(| )Georgia"
KEYWORDS_ITALY_EXCLUDE="$KEYWORDS_ROME|$KEYWORDS_ROME_EXCLUDE|$KEYWORDS_PISA|$KEYWORDS_VENICE|$KEYWORDS_MILAN"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Italy"

  ITALY=$(egrep -i "$KEYWORDS_ITALY" newpages.txt | egrep -iv "$KEYWORDS_ITALY_EXCLUDE")
  ROME=$(egrep -i "$KEYWORDS_ROME" newpages.txt | egrep -iv "$KEYWORDS_ROME_EXCLUDE")
  ANCIENTROME=$(egrep -i "$KEYWORDS_ANCIENTROME" newpages.txt | egrep -iv "$KEYWORDS_ANCIENTROME_EXCLUDE")
  PISA=$(egrep -i "$KEYWORDS_PISA" newpages.txt)
  POMPEII=$(egrep -i "$KEYWORDS_POMPEII" newpages.txt)
  JCAESAR=$(egrep -i "$KEYWORDS_JULIUSCAESAR" newpages.txt)
  VENICE=$(egrep -i "$KEYWORDS_VENICE" newpages.txt)
  MILAN=$(egrep -i "$KEYWORDS_MILAN" newpages.txt)

  if [ "$ITALY" != "" ];
  then
    printf "%s" "$ITALY" > Italy.txt
    export CATFILE="Italy.txt"
    export CATNAME="Italy"
    $CATEGORIZE
    rm Italy.txt
    unset ITALY
  fi

  if [ "$ROME" != "" ];
  then
    printf "%s" "$ROME" > Rome.txt
    export CATFILE="Rome.txt"
    export CATNAME="Rome"
    $CATEGORIZE
    rm Rome.txt
    unset ROME
  fi

  if [ "$ANCIENTROME" != "" ];
  then
    printf "%s" "$ANCIENTROME" > AncientRome.txt
    export CATFILE="AncientRome.txt"
    export CATNAME="Ancient Rome"
    $CATEGORIZE
    rm AncientRome.txt
    unset ANCIENTROME
  fi

  if [ "$PISA" != "" ];
  then
    printf "%s" "$PISA" > Pisa.txt
    export CATFILE="Pisa.txt"
    export CATNAME="Pisa, Italy"
    $CATEGORIZE
    rm Pisa.txt
    unset PISA
  fi

  if [ "$POMPEII" != "" ];
  then
    printf "%s" "$POMPEII" > Pompeii.txt
    export CATFILE="Pompeii.txt"
    export CATNAME="Pompeii"
    $CATEGORIZE
    rm Pompeii.txt
    unset POMPEII
  fi

  if [ "$JCAESAR" != "" ];
  then
    printf "%s" "$JCAESAR" > JuliusCaesar.txt
    export CATFILE="JuliusCaesar.txt"
    export CATNAME="Julius Caesar"
    $CATEGORIZE
    rm JuliusCaesar.txt
    unset JCAESAR
  fi

  if [ "$VENICE" != "" ];
  then
    printf "%s" "$VENICE" > Venice.txt
    export CATFILE="Venice.txt"
    export CATNAME="Venice"
    $CATEGORIZE
    rm Venice.txt
    unset VENICE
  fi

  if [ "$MILAN" != "" ];
  then
    printf "%s" "$MILAN" > Milan.txt
    export CATFILE="Milan.txt"
    export CATNAME="Milan"
    $CATEGORIZE
    rm Milan.txt
    unset MILAN
  fi

  debug_end "Italy"

fi