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
KEYWORDS_POKEMONSPECIES_N="$KEYWORDS_NATU|$KEYWORDS_NIDOKING|$KEYWORDS_NIDOQUEEN|$KEYWORDS_NIDORAN_NONSPECIFIC|$KEYWORDS_NIDORINA|$KEYWORDS_NIDORINO|$KEYWORDS_NINCADA|$KEYWORDS_NINETALES|$KEYWORDS_NINJASK|$KEYWORDS_NOCTOWL|$KEYWORDS_NOSEPASS|$KEYWORDS_NUMEL|$KEYWORDS_NUZLEAF"

if [ "$1" == "" ];
then

  debug_start "Pokemon N script"

  NATU=$(egrep -i "$KEYWORDS_NATU" "$NEWPAGES")

  categorize "NATU" "Natu"

  NIDOKING=$(egrep -i "$KEYWORDS_NIDOKING" "$NEWPAGES")

  categorize "NIDOKING" "Nidoking"

  NIDOQUEEN=$(egrep -i "$KEYWORDS_NIDOQUEEN" "$NEWPAGES")

  categorize "NIDOQUEEN" "Nidoqueen"

  NIDORANFEMALE=$(egrep -i "$KEYWORDS_NIDORANFEMALE" "$NEWPAGES")

  categorize "NIDORANFEMALE" "Nidoran (female)"

  NIDORANMALE=$(egrep -i "$KEYWORDS_NIDORANMALE" "$NEWPAGES")

  categorize "NIDORANMALE" "Nidoran (male)"

  NIDORANGENERIC=$(egrep -i "$KEYWORDS_NIDORAN_NONSPECIFIC" "$NEWPAGES" | egrep -iv "$KEYWORDS_NIDORAN_NONSPECIFIC_EXCLUDE")
  NIDORANGENERIC2="$NIDORANGENERIC"

  categorize "NIDORANGENERIC" "Nidoran (female)"
  categorize "NIDORANGENERIC2" "Nidoran (male)"

  NIDORINA=$(egrep -i "$KEYWORDS_NIDORINA" "$NEWPAGES")

  categorize "NIDORINA" "Nidorina"

  NIDORINO=$(egrep -i "$KEYWORDS_NIDORINO" "$NEWPAGES")

  categorize "NIDORINO" "Nidorino"

  NINCADA=$(egrep -i "$KEYWORDS_NINCADA" "$NEWPAGES")

  categorize "NINCADA" "Nincada"

  NINETALES=$(egrep -i "$KEYWORDS_NINETALES" "$NEWPAGES")

  categorize "NINETALES" "Ninetales"

  NINJASK=$(egrep -i "$KEYWORDS_NINJASK" "$NEWPAGES")

  categorize "NINJASK" "Ninjask"

  NOCTOWL=$(egrep -i "$KEYWORDS_NOCTOWL" "$NEWPAGES")

  categorize "NOCTOWL" "Noctowl"

  NOSEPASS=$(egrep -i "$KEYWORDS_NOSEPASS" "$NEWPAGES")

  categorize "NOSEPASS" "Nosepass"

  NUMEL=$(egrep -i "$KEYWORDS_NUMEL" "$NEWPAGES")

  categorize "NUMEL" "Numel"

  NUZLEAF=$(egrep -i "$KEYWORDS_NUZLEAF" "$NEWPAGES")

  categorize "NUZLEAF" "Nuzleaf"


  debug_end "Pokemon N script"

fi
