#!/bin/bash

KEYWORDS_PLACENTALMAMMALS="Placental(| )mammal"

if [ "$1" == "" ];
then
  
  debug_start "Placental mammals"

  PLACENTALDIR="$MAMMALDIR/Placental_mammals"

  . $PLACENTALDIR/Dolphins/Dolphins.sh #KEYWORDS_DOLPHINS

  KEYWORDS_PLACENTALEXCLUDE="$KEYWORDS_DOLPHINS"
  KEYWORDS_PLACENTALMAMMALS_ALL="$KEYWORDS_DOLPHINS|$KEYWORDS_PLACENTALMAMMALS"

  debug_end "Placental mammals"

fi