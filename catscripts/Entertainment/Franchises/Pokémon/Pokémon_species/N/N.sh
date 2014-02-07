#!/bin/bash

KEYWORDS_NATU="Natu\b"
KEYWORDS_NIDOKING="Nidoking"
KEYWORDS_NIDOQUEEN="Nidoqueen"
KEYWORDS_NIDORANFEMALE="Nidoran(| )(♀|girl|female)|Nidoran(| )\(female\)|(girl|female)(| )Nidoran"
KEYWORDS_NIDORANMALE="Nidoran(| )(♂|boy|guy|male)|Nidoran(| )\(male\)|(boy|guy|male)(| )Nidoran"
KEYWORDS_NIDORAN_NONSPECIFIC="Nidoran"
KEYWORDS_NIDORAN_NONSPECIFIC_EXCLUDE="♀|♀|girl|female|male|guy|boy"
KEYWORDS_NIDORINA="Nidorina"
KEYWORDS_NIDORINO="Nidorino"
KEYWORDS_NINCADA="Nincada"
KEYWORDS_NINETALES="Ninetales"
KEYWORDS_NINJASK="Ninjask"
KEYWORDS_NOCTOWL="Noctowl"
KEYWORDS_NOSEPASS="Nosepass"
KEYWORDS_NUMEL="Numel"
KEYWORDS_NUZLEAF="Nuzleaf"

if [ "$1" == "" ];
then

  debug_start "Pokemon N script"

  NATU="$(egrep -i "$KEYWORDS_NATU" newpages.txt)"
  NIDOKING="$(egrep -i "$KEYWORDS_NIDOKING" newpages.txt)"
  NIDOQUEEN="$(egrep -i "$KEYWORDS_NIDOQUEEN" newpages.txt)"
  NIDORANFEMALE="$(egrep -i "$KEYWORDS_NIDORANFEMALE" newpages.txt)"
  NIDORANMALE="$(egrep -i "$KEYWORDS_NIDORANMALE" newpages.txt)"
  NIDORANGENERIC="$(egrep -i "$KEYWORDS_NIDORAN_NONSPECIFIC" newpages.txt | egrep -iv "$KEYWORDS_NIDORAN_NONSPECIFIC_EXCLUDE")"
  NIDORINA="$(egrep -i "$KEYWORDS_NIDORINA" newpages.txt)"
  NIDORINO="$(egrep -i "$KEYWORDS_NIDORINO" newpages.txt)"
  NINCADA="$(egrep -i "$KEYWORDS_NINCADA" newpages.txt)"
  NINETALES="$(egrep -i "$KEYWORDS_NINETALES" newpages.txt)"
  NINJASK="$(egrep -i "$KEYWORDS_NINJASK" newpages.txt)"
  NOCTOWL="$(egrep -i "$KEYWORDS_NOCTOWL" newpages.txt)"
  NOSEPASS="$(egrep -i "$KEYWORDS_NOSEPASS" newpages.txt)"
  NUMEL="$(egrep -i "$KEYWORDS_NUMEL" newpages.txt)"
  NUZLEAF="$(egrep -i "$KEYWORDS_NUZLEAF" newpages.txt)"

  if [ "$NATU" != "" ];
  then
    printf "%s" "$NATU" > Natu.txt
    export CATFILE="Natu.txt"
    export CATNAME="Natu"
    $CATEGORIZE
    rm Natu.txt
    unset NATU
  fi

  if [ "$NIDOKING" != "" ];
  then
    printf "%s" "$NIDOKING" > Nidoking.txt
    export CATFILE="Nidoking.txt"
    export CATNAME="Nidoking"
    $CATEGORIZE
    rm Nidoking.txt
    unset NIDOKING
  fi

  if [ "$NIDOQUEEN" != "" ];
  then
    printf "%s" "$NIDOQUEEN" > Nidoqueen.txt
    export CATFILE="Nidoqueen.txt"
    export CATNAME="Nidoqueen"
    $CATEGORIZE
    rm Nidoqueen.txt
    unset NIDOQUEEN
  fi

  if [ "$NIDORANFEMALE" != "" ];
  then
    printf "%s" "$NIDORANFEMALE" > Nidoran♀.txt
    export CATFILE="Nidoran♀.txt"
    export CATNAME="Nidoran (female)"
    $CATEGORIZE
    rm Nidoran♀.txt
    unset NIDORANFEMALE
  fi

  if [ "$NIDORANMALE" != "" ];
  then
    printf "%s" "$NIDORANMALE" > Nidoran♂.txt
    export CATFILE="Nidoran♂.txt"
    export CATNAME="Nidoran (male)"
    $CATEGORIZE
    rm Nidoran♂.txt
    unset NIDORANMALE
  fi

  if [ "$NIDORANGENERIC" != "" ];
  then
    printf "%s" "$NIDORANGENERIC" > NidoranGeneric.txt
    export CATFILE="NidoranGeneric.txt"
    export CATNAME="Nidoran (female)"
    $CATEGORIZE
    export CATFILE="NidoranGeneric.txt"
    export CATNAME="Nidoran (male)"
    rm NidoranGeneric.txt
    unset NIDORANGENERIC
  fi

  if [ "$NIDORINA" != "" ];
  then
    printf "%s" "$NIDORINA" > Nidorina.txt
    export CATFILE="Nidorina.txt"
    export CATNAME="Nidorina"
    $CATEGORIZE
    rm Nidorina.txt
    unset NIDORINA
  fi

  if [ "$NIDORINO" != "" ];
  then
    printf "%s" "$NIDORINO" > Nidorino.txt
    export CATFILE="Nidorino.txt"
    export CATNAME="Nidorino"
    $CATEGORIZE
    rm Nidorino.txt
    unset NIDORINO
  fi

  if [ "$NINCADA" != "" ];
  then
    printf "%s" "$NINCADA" > Nincada.txt
    export CATFILE="Nincada.txt"
    export CATNAME="Nincada"
    $CATEGORIZE
    rm Nincada.txt
    unset NINCADA
  fi

  if [ "$NINETALES" != "" ];
  then
    printf "%s" "$NINETALES" > Ninetales.txt
    export CATFILE="Ninetales.txt"
    export CATNAME="Ninetales"
    $CATEGORIZE
    rm Ninetales.txt
    unset NINETALES
  fi

  if [ "$NINJASK" != "" ];
  then
    printf "%s" "$NINJASK" > Ninjask.txt
    export CATFILE="Ninjask.txt"
    export CATNAME="Ninjask"
    $CATEGORIZE
    rm Ninjask.txt
    unset NINJASK
  fi

  if [ "$NOCTOWL" != "" ];
  then
    printf "%s" "$NOCTOWL" > Noctowl.txt
    export CATFILE="Noctowl.txt"
    export CATNAME="Noctowl"
    $CATEGORIZE
    rm Noctowl.txt
    unset NOCTOWL
  fi

  if [ "$NOSEPASS" != "" ];
  then
    printf "%s" "$NOSEPASS" > Nosepass.txt
    export CATFILE="Nosepass.txt"
    export CATNAME="Nosepass"
    $CATEGORIZE
    rm Nosepass.txt
    unset NOSEPASS
  fi

  if [ "$NUMEL" != "" ];
  then
    printf "%s" "$NUMEL" > Numel.txt
    export CATFILE="Numel.txt"
    export CATNAME="Numel"
    $CATEGORIZE
    rm Numel.txt
    unset NUMEL
  fi

  if [ "$NUZLEAF" != "" ];
  then
    printf "%s" "$NUZLEAF" > Nuzleaf.txt
    export CATFILE="Nuzleaf.txt"
    export CATNAME="Nuzleaf"
    $CATEGORIZE
    rm Nuzleaf.txt
    unset NUZLEAF
  fi

  debug_end "Pokemon N script"

fi
