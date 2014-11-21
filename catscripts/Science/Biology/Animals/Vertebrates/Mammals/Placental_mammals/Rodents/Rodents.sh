#!/bin/bash

KEYWORDS_RODENTS="rodent"
RODENTSDIR="$PLACENTALDIR/Rodents"

if [ "$1" == "" ];
then

  debug_start "Rodents"

  . $RODENTSDIR/Beavers/Beavers.sh #KEYWORDS_BEAVERS_ALL
  . $RODENTSDIR/Capybaras/Capybaras.sh #KEYWORDS_CAPYBARAS_ALL
  . $RODENTSDIR/Chinchillas/Chinchillas.sh #KEYWORDS_CHINCHILLAS_ALL
  . $RODENTSDIR/Groundhogs/Groundhogs.sh #KEYWORDS_GROUNDHOGS_ALL
  . $RODENTSDIR/Guinea_pigs/GuineaPigs.sh #KEYWORDS_GUINEAPIGS_ALL
  . $RODENTSDIR/Mice/Mice.sh #KEYWORDS_MICE_ALL
  . $RODENTSDIR/Mole_rats/MoleRats.sh #KEYWORDS_MOLERATS_ALL
  . $RODENTSDIR/Porcupines/Porcupines.sh #KEYWORDS_PORCUPINES_ALL
  . $RODENTSDIR/Prairie_dogs/PrairieDogs.sh #KEYWORDS_PRAIRIEDOGS_ALL
  . $RODENTSDIR/Rats/Rats.sh #KEYWORDS_RATS_ALL
  . $RODENTSDIR/Squirrels/Squirrels.sh #KEYWORDS_SQUIRRELS_ALL

  KEYWORDS_RODENTS_EXCLUDE="$KEYWORDS_BEAVERS_ALL|$KEYWORDS_CAPYBARAS_ALL|$KEYWORDS_CHINCHILLAS_ALL|$KEYWORDS_GROUNDHOGS_ALL|$KEYWORDS_GUINEAPIGS_ALL|$KEYWORDS_MICE_ALL|$KEYWORDS_MOLERATS_ALL|$KEYWORDS_PORCUPINES_ALL|$KEYWORDS_PRAIRIEDOGS_ALL|$KEYWORDS_RATS_ALL|$KEYWORDS_SQUIRRELS_ALL"
  KEYWORDS_RODENTS_ALL="$KEYWORDS_RODENTS|$KEYWORDS_BEAVERS_ALL|$KEYWORDS_CAPYBARAS_ALL|$KEYWORDS_CHINCHILLAS_ALL|$KEYWORDS_GROUNDHOGS_ALL|$KEYWORDS_GUINEAPIGS_ALL|$KEYWORDS_MICE_ALL|$KEYWORDS_MOLERATS_ALL|$KEYWORDS_PORCUPINES_ALL|$KEYWORDS_PRAIRIEDOGS_ALL|$KEYWORDS_RATS_ALL|$KEYWORDS_SQUIRRELS_ALL"

  debug_end "Rodents"

fi