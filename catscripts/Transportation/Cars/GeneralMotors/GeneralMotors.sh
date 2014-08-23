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

  AGILE=$(egrep -i "$KEYWORDS_CHEVROLETAGILE" "$NEWPAGES")
  AVEO=$(egrep -i "$KEYWORDS_CHEVROLETAVEO" "$NEWPAGES" )
  BERETTA=$(egrep -i "$KEYWORDS_CHEVROLETBERETTA" "$NEWPAGES")
  CAMARO=$(egrep -i "$KEYWORDS_CHEVROLETCAMARO" "$NEWPAGES")
  CAPRICE=$(egrep -i "$KEYWORDS_CHEVROLETCAPRICE" "$NEWPAGES")
  CAVALIER=$(egrep -i "$KEYWORDS_CHEVROLETCAVALIER" "$NEWPAGES")
  CELTA=$(egrep -i "$KEYWORDS_CHEVROLETCELTA" "$NEWPAGES")
  COBALT=$(egrep -i "$KEYWORDS_CHEVROLETCOBALT" "$NEWPAGES")
  CORVETTE=$(egrep -i "$KEYWORDS_CHEVROLETCORVETTE" "$NEWPAGES")
  CADILLAC=$(egrep -i "$KEYWORDS_CADILLAC" "$NEWPAGES")

  categorize "AGILE" "Chverolet Agile"
  categorize "AVEO" "Chevrolet Aveo"
  categorize "BERETTA" "Chevrolet Beretta"
  categorize "CAMARO" "Chevrolet Camaro"
  categorize "CAPRICE" "Chevrolet Caprice"
  categorize "CAVALIER" "Chevrolet Cavalier"
  categorize "CELTA" "Chevrolet Celta"
  categorize "COBALT" "Chevrolet Cobalt"
  categorize "CORVETTE" "Chevrolet Corvette"
  categorize "CADILLAC" "Cadillac"

  debug_end "General Motors"

fi