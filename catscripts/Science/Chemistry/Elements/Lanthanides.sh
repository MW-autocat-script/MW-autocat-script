#!/bin/bash

KEYWORDS_LANTHANUM="Lanthanum"
KEYWORDS_CERIUM="Cerium"
KEYWORDS_PRASEODYMIUM="Praseodymium"
KEYWORDS_NEODYMIUM="Neodymium"
KEYWORDS_PROMETHIUM="Promethium"
KEYWORDS_SAMARIUM="Samarium"
KEYWORDS_EUROPIUM="Europium"
KEYWORDS_GADOLINIUM="Gadolinium"
KEYWORDS_TERBIUM="\bTerbium"
KEYWORDS_DYSPROSIUM="Dysprosium"
KEYWORDS_HOLMIUM="Holmium"
KEYWORDS_ERBIUM="\bErbium"
KEYWORDS_THULIUM="Thulium"
KEYWORDS_YTTERBIUM="Ytterbium"
KEYWORDS_LUTETIUM="Lutetium"
KEYWORDS_LANTHANIDE_ELEMENTS="$KEYWORDS_LANTHANUM|$KEYWORDS_CERIUM|$KEYWORDS_PRASEODYMIUM|$KEYWORDS_NEODYMIUM|$KEYWORDS_PROMETHIUM|$KEYWORDS_SAMARIUM|$KEYWORDS_EUROPIUM|$KEYWORDS_GADOLINIUM|$KEYWORDS_TERBIUM|$KEYWORDS_DYSPROSIUM|$KEYWORDS_HOLMIUM|$KEYWORDS_ERBIUM|$KEYWORDS_THULIUM|$KEYWORDS_YTTERBIUM|$KEYWORDS_LUTETIUM"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Lanthanide group\n"
  fi

  LANTHANUM="$(egrep -i "$KEYWORDS_LANTHANUM" newpages.txt)"
  CERIUM="$(egrep -i "$KEYWORDS_CERIUM" newpages.txt)"
  PRASEODYMIUM="$(egrep -i "$KEYWORDS_PRASEODYMIUM" newpages.txt)"
  NEODYMIUM="$(egrep -i "$KEYWORDS_NEODYMIUM" newpages.txt)"
  PROMETHIUM="$(egrep -i "$KEYWORDS_PROMETHIUM" newpages.txt)"
  SAMARIUM="$(egrep -i "$KEYWORDS_SAMARIUM" newpages.txt)"
  EUROPIUM="$(egrep -i "$KEYWORDS_EUROPIUM" newpages.txt)"
  GADOLINIUM="$(egrep -i "$KEYWORDS_GADOLINIUM" newpages.txt)"
  TERBIUM="$(egrep -i "$KEYWORDS_TERBIUM" newpages.txt)"
  DYSPROSIUM="$(egrep -i "$KEYWORDS_DYSPROSIUM" newpages.txt)"
  HOLMIUM="$(egrep -i "$KEYWORDS_HOLMIUM" newpages.txt)"
  ERBIUM="$(egrep -i "$KEYWORDS_ERBIUM" newpages.txt)"
  THULIUM="$(egrep -i "$KEYWORDS_THULIUM" newpages.txt)"
  YTTERBIUM="$(egrep -i "$KEYWORDS_YTTERBIUM" newpages.txt)"
  LUTETIUM="$(egrep -i "$KEYWORDS_LUTETIUM" newpages.txt)"

  if [ "$LANTHANUM" != "" ] ;
  then
    printf "%s" "$LANTHANUM" > Lanthanum.txt
    export CATFILE="Lanthanum.txt"
    export CATNAME="Lanthanum"
    $CATEGORIZE
    rm Lanthanum.txt
    unset LANTHANUM
  fi

  if [ "$CERIUM" != "" ] ;
  then
    printf "%s" "$CERIUM" > Cerium.txt
    export CATFILE="Cerium.txt"
    export CATNAME="Cerium"
    $CATEGORIZE
    rm Cerium.txt
    unset CERIUM
  fi

  if [ "$PRASEODYMIUM" != "" ] ;
  then
    printf "%s" "$PRASEODYMIUM" > Praseodymium.txt    
    export CATFILE="Praseodymium.txt"
    export CATNAME="Praseodymium"
    $CATEGORIZE
    rm Praseodymium.txt
    unset PRASEODYMIUM
  fi

  if [ "$NEODYMIUM" != "" ] ;
  then
    printf "%s" "$NEODYMIUM" > Neodymium.txt
    export CATFILE="Neodymium.txt"
    export CATNAME="Neodymium"
    $CATEGORIZE
    rm Neodymium.txt
    unset NEODYMIUM
  fi

  if [ "$PROMETHIUM" != "" ] ;
  then
    printf "%s" "$PROMETHIUM" > Promethium.txt
    export CATFILE="Promethium.txt"
    export CATNAME="Promethium"
    $CATEGORIZE
    rm Promethium.txt
    unset PROMETHIUM
  fi

  if [ "$SAMARIUM" != "" ] ;
  then
    printf "%s" "$SAMARIUM" > Samarium.txt
    export CATFILE="Samarium.txt"
    export CATNAME="Samarium"
    $CATEGORIZE
    rm Samarium.txt
    unset SAMARIUM
  fi

  if [ "$EUROPIUM" != "" ] ;
  then
    printf "%s" "$EUROPIUM" > Europium.txt
    export CATFILE="Europium.txt"
    export CATNAME="Europium"
    $CATEGORIZE
    rm Europium.txt
    unset EUROPIUM
  fi

  if [ "$GADOLINIUM" != "" ] ;
  then
    printf "%s" "$GADOLINIUM" > Gadolinium.txt
    export CATFILE="Gadolinium.txt"
    export CATNAME="Gadolinium"
    $CATEGORIZE
    rm Gadolinium.txt
    unset GADOLINIUM
  fi

  if [ "$TERBIUM" != "" ] ;
  then
    printf "%s" "$TERBIUM" > Terbium.txt
    export CATFILE="Terbium.txt"
    export CATNAME="Terbium"
    $CATEGORIZE
    rm Terbium.txt
    unset TERBIUM
  fi

  if [ "$DYSPROSIUM" != "" ] ;
  then
    printf "%s" "$DYSPROSIUM" > Dysprosium.txt
    export CATFILE="Dysprosium.txt"
    export CATNAME="Dysprosium"
    $CATEGORIZE
    rm Dysprosium.txt
    unset DYSPROSIUM
  fi

  if [ "$HOLMIUM" != "" ] ;
  then
    printf "%s" "$HOLMIUM" > Holmium.txt
    export CATFILE="Holmium.txt"
    export CATNAME="Holmium"
    $CATEGORIZE
    rm Holmium.txt
    unset HOLMIUM
  fi

  if [ "$ERBIUM" != "" ] ;
  then
    printf "%s" "$ERBIUM" > Erbium.txt
    export CATFILE="Erbium.txt"
    export CATNAME="Erbium"
    $CATEGORIZE
    rm Erbium.txt
    unset ERBIUM
  fi

  if [ "$THULIUM" != "" ] ;
  then
    printf "%s" "$THULIUM" > Thulium.txt
    export CATFILE="Thulium.txt"
    export CATNAME="Thulium"
    $CATEGORIZE
    rm Thulium.txt
    unset THULIUM
  fi

  if [ "$YTTERBIUM" != "" ] ;
  then
    printf "%s" "$YTTERBIUM" > Ytterbium.txt
    export CATFILE="Ytterbium.txt"
    export CATNAME="Ytterbium"
    $CATEGORIZE
    rm Ytterbium.txt
    unset YTTERBIUM
  fi

  if [ "$LUTETIUM" != "" ] ;
  then
    printf "%s" "$LUTETIUM" > Lutetium.txt
    export CATFILE="Lutetium.txt"
    export CATNAME="Lutetium"
    $CATEGORIZE
    rm Lutetium.txt
    unset LUTETIUM
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Lanthanide group\n"
  fi

fi