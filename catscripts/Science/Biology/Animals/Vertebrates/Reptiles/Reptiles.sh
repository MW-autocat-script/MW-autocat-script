#!/bin/bash

KEYWORDS_REPTILES="Reptile"

REPTILESDIR="./catscripts/Science/Biology/Animals/Vertebrates/Reptiles"

if [ "$1" == "" ];
then

  debug_start "Reptiles"

  . $REPTILESDIR/Alligators/Alligators.sh #KEYWORDS_ALLIGATORS_ALL
  . $REPTILESDIR/Crocodiles/Crocodiles.sh #KEYWORDS_CROCODILES_ALL
  . $REPTILESDIR/Lizards/Lizards.sh #KEYWORDS_LIZARDS_ALL
  . $REPTILESDIR/Snakes/Snakes.sh #KEYWORDS_SNAKES_ALL
  . $REPTILESDIR/Tuatara/Tuatara.sh #KEYWORDS_TUATARA_ALL
  . $REPTILESDIR/Turtles/Turtles.sh #KEYWORDS_TURTLES_ALL

  KEYWORDS_REPTILES_EXCLUDE="$KEYWORDS_TURTLES_ALL|$KEYWORDS_SNAKES_ALL|$KEYWORDS_LIZARDS_ALL|$KEYWORDS_TUATARA_ALL|$KEYWORDS_ALLIGATORS_ALL|$KEYWORDS_CROCODILES_ALL"
  KEYWORDS_REPTILES_ALL="$KEYWORDS_REPTILES|$KEYWORDS_TURTLES_ALL|$KEYWORDS_SNAKES_ALL|$KEYWORDS_CROCODILES_ALL|$KEYWORDS_ALLIGATORS_ALL|$KEYWORDS_LIZARDS_ALL|$KEYWORDS_TUATARA_ALL"

  REPTILES=$(egrep -i "$KEYWORDS_REPTILES" "$NEWPAGES" | egrep -iv "$KEYWORDS_REPTILES_EXCLUDE")

  categorize "REPTILES" "Reptiles"

  debug_end "Reptiles"

else

  . $REPTILESDIR/Alligators/Alligators.sh norun #KEYWORDS_ALLIGATORS_ALL
  . $REPTILESDIR/Crocodiles/Crocodiles.sh norun #KEYWORDS_CROCODILES_ALL
  . $REPTILESDIR/Lizards/Lizards.sh norun #KEYWORDS_LIZARDS_ALL
  . $REPTILESDIR/Snakes/Snakes.sh norun #KEYWORDS_SNAKES_ALL
  . $REPTILESDIR/Tuatara/Tuatara.sh norun #KEYWORDS_TUATARA_ALL
  . $REPTILESDIR/Turtles/Turtles.sh norun #KEYWORDS_TURTLES_ALL

  KEYWORDS_REPTILES_EXCLUDE="$KEYWORDS_TURTLES_ALL|$KEYWORDS_SNAKES_ALL|$KEYWORDS_LIZARDS_ALL|$KEYWORDS_TUATARA_ALL|$KEYWORDS_ALLIGATORS_ALL|$KEYWORDS_CROCODILES_ALL"
  KEYWORDS_REPTILES_ALL="$KEYWORDS_REPTILES|$KEYWORDS_TURTLES_ALL|$KEYWORDS_SNAKES_ALL|$KEYWORDS_CROCODILES_ALL|$KEYWORDS_ALLIGATORS_ALL|$KEYWORDS_LIZARDS_ALL|$KEYWORDS_TUATARA_ALL"

fi