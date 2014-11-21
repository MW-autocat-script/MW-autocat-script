#!/bin/bash

KEYWORDS_RODENTS="rodent"
RODENTSDIR="$PLACENTALDIR/Rodents"

if [ "$1" == "" ];
then

  debug_start "Rodents"

  . $RODENTSDIR/Groundhogs/Groundhogs.sh #KEYWORDS_GROUNDHOGS_ALL
  . $RODENTSDIR/Guinea_pigs/GuineaPigs.sh #KEYWORDS_GUINEAPIGS_ALL
  . $RODENTSDIR/Porcupines/Porcupines.sh #KEYWORDS_PORCUPINES_ALL
  . $RODENTSDIR/Squirrels/Squirrels.sh #KEYWORDS_SQUIRRELS_ALL

  KEYWORDS_RODENTS_EXCLUDE="$KEYWORDS_GROUNDHOGS_ALL|$KEYWORDS_GUINEAPIGS_ALL|$KEYWORDS_PORCUPINES_ALL|$KEYWORDS_SQUIRRELS_ALL"
  KEYWORDS_RODENTS_ALL="$KEYWORDS_RODENTS|$KEYWORDS_GROUNDHOGS_ALL|$KEYWORDS_GUINEAPIGS_ALL|$KEYWORDS_PORCUPINES_ALL|$KEYWORDS_SQUIRRELS_ALL"

  debug_end "Rodents"

fi