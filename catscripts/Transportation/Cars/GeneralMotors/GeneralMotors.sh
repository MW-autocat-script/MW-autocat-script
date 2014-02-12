#!/bin/bash

#####Chevrolet########

#Chevrolet cars

KEYWORDS_CHEVROLETAGILE="Chev(rolet|y)(| )Agile|[0-9]{2,}Agile" #Chevrolet Agile
KEYWORDS_CHEVROLETAVEO="Chev(rolet|y)(| )Aveo|[0-9]{2,}(| )Aveo" #Chevrolet Agile
KEYWORDS_CHEVROLETBERETTA="Chev(rolet|y)(| )Beretta|[0-9]{2,}(| )Beretta" #Chevrolet Beretta
KEYWORDS_CHEVROLETCAMARO="Camaro" #Chevrolet Beretta
KEYWORDS_CHEVROLETCAPRICE="Chev(rolet|y)(| )Caprice|[0-9]{2,}(| )Caprice" #Chevrolet Caprice
KEYWORDS_CHEVROLETCAVALIER="Chev(rolet|y)(| )Cavalier|[0-9]{2,}(| )Cavalier" #Chevrolet Cavalier
KEYWORDS_CHEVROLETCELTA="Chev(rolet|y)(| )(Celta|Prisma)|[0-9]{2,}(| )(Celta|Prisma)" #Chevrolet Celta, also known as the Chevrolet Prisma
KEYWORDS_CHEVROLETCOBALT="Chev(rolet|y)(| )Cobalt|[0-9]{2,}(| )Cobalt" #Chevrolet Cobalt
KEYWORDS_CHEVROLETCORVETTE="Corvette"
KEYWORDS_CHEVROLETCARS="$KEYWORDS_CHEVROLETAGILE|$KEYWORDS_CHEVROLETAVEO|$KEYWORDS_CHEVROLETBERETTA|$KEYWORDS_CHEVROLETCAMARO|$KEYWORDS_CHEVROLETCAPRICE|$KEYWORDS_CHEVROLETCAVALIER|$KEYWORDS_CHEVROLETCELTA|$KEYWORDS_CHEVROLETCOBALT|$KEYWORDS_CHEVROLETCORVETTE"

#Cadillac (all for now)

KEYWORDS_CADILLAC="Cadillac"

if [ "$1" == "" ];
then
  
  debug_start "General Motors"

  AGILE="$(egrep -i "$KEYWORDS_CHEVROLETAGILE" newpages.txt)"
  AVEO="$(egrep -i "$KEYWORDS_CHEVROLETAVEO" newpages.txt )"
  BERETTA="$(egrep -i "$KEYWORDS_CHEVROLETBERETTA" newpages.txt)"
  CAMARO="$(egrep -i "$KEYWORDS_CHEVROLETCAMARO" newpages.txt)"
  CAPRICE="$(egrep -i "$KEYWORDS_CHEVROLETCAPRICE" newpages.txt)"
  CAVALIER="$(egrep -i "$KEYWORDS_CHEVROLETCAVALIER" newpages.txt)"
  CELTA="$(egrep -i "$KEYWORDS_CHEVROLETCELTA" newpages.txt)"
  COBALT="$(egrep -i "$KEYWORDS_CHEVROLETCOBALT" newpages.txt)"
  CORVETTE="$(egrep -i "$KEYWORDS_CHEVROLETCORVETTE" newpages.txt)"

  if [ "$AGILE" != "" ];
  then
    printf "%s" "$AGILE" > Agile.txt
    export CATFILE="Agile.txt"
    export CATNAME="Chverolet Agile"
    $CATEGORIZE
    rm Agile.txt
    unset AGILE
  fi

  if [ "$AVEO" != "" ];
  then
    printf "%s" "$AVEO" > ChevroletAveo.txt
    export CATFILE="ChevroletAveo.txt"
    export CATNAME="Chevrolet Aveo"
    $CATEGORIZE
    rm ChevroletAveo.txt
    unset AVEO
  fi

  if [ "$BERETTA" != "" ];
  then
    printf "%s" "$BERETTA" > ChevroletBeretta.txt
    export CATFILE="ChevroletBeretta.txt"
    export CATNAME="Chevrolet Beretta"
    $CATEGORIZE
    rm ChevroletBeretta.txt
    unset BERETTA
  fi

  if [ "$CAMARO" != "" ];
  then
    printf "%s" "$CAMARO" > ChevroletCamaro.txt
    export CATFILE="ChevroletCamaro.txt"
    export CATNAME="Chevrolet Camaro"
    $CATEGORIZE
    rm ChevroletCamaro.txt
    unset CAMARO
  fi

  if [ "$CAPRICE" != "" ];
  then
    printf "%s" "$CAPRICE" > ChevroletCaprice.txt
    export CATFILE="ChevroletCaprice.txt"
    export CATNAME="Chevrolet Caprice"
    $CATEGORIZE
    rm ChevroletCaprice.txt
    unset CAPRICE
  fi

  if [ "$CAVALIER" != "" ];
  then
    printf "%s" "$CAVALIER" > ChevroletCavalier.txt
    export CATFILE="ChevroletCavalier.txt"
    export CATNAME="Chevrolet Cavalier"
    $CATEGORIZE
    rm ChevroletCavalier.txt
    unset CAVALIER
  fi

  if [ "$CELTA" != "" ];
  then
    printf "%s" "$CELTA" > Celta.txt
    export CATFILE="Celta.txt"
    export CATNAME="Chevrolet Celta"
    $CATEGORIZE
    rm Celta.txt
    unset CELTA
  fi

  if [ "$COBALT" != "" ];
  then
    printf "%s" "$COBALT" > Cobalt.txt
    export CATFILE="Cobalt.txt"
    export CATNAME="Chevrolet Cobalt"
    $CATEGORIZE
    rm Cobalt.txt
    unset COBALT
  fi

  if [ "$CORVETTE" != "" ];
  then
    printf "%s" "$CORVETTE" > Corvette.txt
    export CATFILE="Corvette.txt"
    export CATNAME="Chevrolet Corvette"
    $CATEGORIZE
    rm Corvette.txt
    unset CORVETTE
  fi

  CADILLAC="$(egrep -i "$KEYWORDS_CADILLAC" newpages.txt)"

  if [ "$CADILLAC" != "" ];
  then
    printf "%s" "$CADILLAC" > Cadillac.txt
    export CATFILE="Cadillac.txt"
    export CATNAME="Cadillac"
    $CATEGORIZE
    rm Cadillac.txt
    unset CADILLAC
  fi

  debug_end "General Motors"

fi