#!/bin/bash

MAMMALDIR="./catscripts/Science/Biology/Animals/Vertebrates/Mammals"
KEYWORDS_MAMMALS="mammal"

if [ "$1" == "" ];
then

  debug_start "Mammals"

  . $MAMMALDIR/Placental_mammals/PlacentalMammals.sh #KEYWORDS_PLACENTALMAMMALS_ALL

  KEYWORDS_MAMMALS_EXCLUDE="$KEYWORDS_PLACENTALMAMMALS_ALL"

  debug_end "Mammals"

else

  . $MAMMALDIR/Placental_mammals/PlacentalMammals.sh norun #KEYWORDS_PLACENTALMAMMALS_ALL

  KEYWORDS_MAMMALS_EXCLUDE="$KEYWORDS_PLACENTALMAMMALS_ALL"

fi