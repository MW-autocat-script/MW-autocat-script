#!/bin/bash

###Chevrolet Cars###

KEYWORDS_CHEVROLET_AGILE="Chev(y|rolet)(| )Agile|[0-9]{2,}(| )Agile"
KEYWORDS_CHEVROLET_AVEO="Chev(y|rolet)(| )Aveo|[0-9]{2,}(| )Aveo"
KEYWORDS_CHEVROLET_BERETTA="Chev(y|rolet)(| )Beretta|[0-9]{2,}(| )Beretta"
KEYWORDS_CHEVROLET_CAMARO="Camaro"
KEYWORDS_CHEVROLET_CAPRICE="Chev(y|rolet)(| )Caprice|[0-9]{2,}(| )Caprice"
KEYWORDS_CHEVROLET_CAVALIER="Chev(y|rolet)(| )Cavalier|[0-9]{2,}(| )Cavalier"
KEYWORDS_CHEVROLET_CELTA="Chev(y|rolet)(| )Celta|[0-9]{2,}(| )Celta"
KEYWORDS_CHEVROLET_COBALT="Chev(y|rolet)(| )Cobalt|[0-9]{2,}(| )Cobalt"
KEYWORDS_CHEVROLET_CORVETTE="Corvette"
KEYWORDS_CHEVROLET_CRUZE="Chev(y|rolet)(| )Cruze|[0-9]{2,}(| )Cruze\b"
KEYWORDS_CHEVROLET_IMPALA="Chev(y|rolet)(| )Impala|[0-9]{2,}(| )Impala"
KEYWORDS_CHEVROLET_LACETTI="Lacetti"
KEYWORDS_CHEVROLET_LANOS="Chev(y|rolet)(| )Lanos|[0-9]{2,}(| )Lanos"
KEYWORDS_CHEVROLET_LOVA="Chev(y|rolet)(| )Lova|[0-9]{2,}(| )Lova"
KEYWORDS_CHEVROLET_LUMINA="Chev(y|rolet)(| )Lumina|[0-9]{2,}(| )Lumina"
KEYWORDS_CHEVROLET_MALIBU="Chev(y|rolet)(| )Malibu|[0-9]{2,}(| )Malibu"
KEYWORDS_CHEVROLET_ONIX="Chev(y|rolet)(| )Onix|[0-9]{2,}(| )Onix"
KEYWORDS_CHEVROLET_PRISMA="Chev(y|rolet)(| )Prisma|[0-9]{2,}(| )Prisma"
KEYWORDS_CHEVROLET_SAIL="Chev(y|rolet)(| )Sail|[0-9]{2,}(| )Sail\b"
KEYWORDS_CHEVROLET_SONIC="Chev(y|rolet)(| )Sonic"
KEYWORDS_CHEVROLET_SPARK="Chev(y|rolet)(| )Spark"
KEYWORDS_CHEVROLET_SS="Chev(y|rolet)(| )SS|[0-9]{2,}(| )SS\b"
KEYWORDS_CHEVROLET_VOLT="Chev(y|rolet)(| )Volt"


if [ "$1" == "" ];
then
  
  debug_start "Chevrolet"

  AGILE=$(egrep -i "$KEYWORDS_CHEVROLET_AGILE" "$NEWPAGES")
  AVEO=$(egrep -i "$KEYWORDS_CHEVROLET_AVEO" "$NEWPAGES")
  BERETTA=$(egrep -i "$KEYWORDS_CHEVROLET_BERETTA" "$NEWPAGES")
  CAMARO=$(egrep -i "$KEYWORDS_CHEVROLET_CAMARO" "$NEWPAGES")
  CAPRICE=$(egrep -i "$KEYWORDS_CHEVROLET_CAPRICE" "$NEWPAGES")
  CAVALIER=$(egrep -i "$KEYWORDS_CHEVROLET_CAVALIER" "$NEWPAGES")
  CELTA=$(egrep -i "$KEYWORDS_CHEVROLET_CELTA" "$NEWPAGES")
  COBALT=$(egrep -i "$KEYWORDS_CHEVROLET_COBALT" "$NEWPAGES")
  CORVETTE=$(egrep -i "$KEYWORDS_CHEVROLET_CORVETTE" "$NEWPAGES")
  CRUZE=$(egrep -i "$KEYWORDS_CHEVROLET_CRUZE" "$NEWPAGES")
  IMPALA=$(egrep -i "$KEYWORDS_CHEVROLET_IMPALA" "$NEWPAGES")
  LACETTI=$(egrep -i "$KEYWORDS_CHEVROLET_LACETTI" "$NEWPAGES")
  LANOS=$(egrep -i "$KEYWORDS_CHEVROLET_LANOS" "$NEWPAGES")
  LOVA=$(egrep -i "$KEYWORDS_CHEVROLET_LOVA" "$NEWPAGES")
  LUMINA=$(egrep -i "$KEYWORDS_CHEVROLET_LUMINA" "$NEWPAGES")
  MALIBU=$(egrep -i "$KEYWORDS_CHEVROLET_MALIBU" "$NEWPAGES")
  ONIX=$(egrep -i "$KEYWORDS_CHEVROLET_ONIX" "$NEWPAGES")
  PRISMA=$(egrep -i "$KEYWORDS_CHEVROLET_PRISMA" "$NEWPAGES")
  SAIL=$(egrep -i "$KEYWORDS_CHEVROLET_SAIL" "$NEWPAGES")
  SONIC=$(egrep -i "$KEYWORDS_CHEVROLET_SONIC" "$NEWPAGES")
  SPARK=$(egrep -i "$KEYWORDS_CHEVROLET_SPARK" "$NEWPAGES")
  SS=$(egrep -i "$KEYWORDS_CHEVROLET_SS" "$NEWPAGES")
  VOLT=$(egrep -i "$KEYWORDS_CHEVROLET_VOLT" "$NEWPAGES")

  categorize "AGILE"    "Chevrolet Agile"
  categorize "AVEO"     "Chevrolet Aveo"
  categorize "BERETTA"  "Chevrolet Beretta"
  categorize "CAMARO"   "Chevrolet Camaro"
  categorize "CAPRICE"  "Chevrolet Caprice"
  categorize "CAVALIER" "Chevrolet Cavalier"
  categorize "CELTA"    "Chevrolet Celta"
  categorize "COBALT"   "Chevrolet Cobalt"
  categorize "CORVETTE" "Chevrolet Corvette"
  categorize "CRUZE"    "Chevrolet Cruze"
  categorize "IMPALA"   "Chevrolet Impala"
  categorize "LACETTI"  "Chevrolet Lacetti"
  categorize "LANOS"    "Chevrolet Lanos"
  categorize "LOVA"     "Chevrolet Lova"
  categorize "LUMINA"   "Chevrolet Lumina"
  categorize "MALIBU"   "Chevrolet Malibu"
  categorize "ONIX"     "Chevrolet Onix"
  categorize "PRISMA"   "Chevrolet Prisma"
  categorize "SAIL"     "Chevrolet Sail"
  categorize "SONIC"    "Chevrolet Sonic"
  categorize "SPARK"    "Chevrolet Spark"
  categorize "SS"       "Chevrolet SS"
  categorize "VOLT"     "Chevrolet Volt"

  debug_end "Chevrolet"

fi