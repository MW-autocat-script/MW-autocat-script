#!/bin/bash

KEYWORDS_PLACENTALMAMMALS="Placental(| )mammal"

if [ "$1" == "" ];
then
  
  debug_start "Placental mammals"

  PLACENTALDIR="$MAMMALDIR/Placental_mammals"

  . $PLACENTALDIR/Aardvarks/Aardvarks.sh #KEYWORDS_AARDVARKS_ALL
  . $PLACENTALDIR/Anteaters/Anteaters.sh #KEYWORDS_ANTEATERS_ALL
  . $PLACENTALDIR/Armadillos/Armadillos.sh #KEYWORDS_ARMADILLOS_ALL
  . $PLACENTALDIR/Bats/Bats.sh #KEYWORDS_BATS_ALL
  . $PLACENTALDIR/Camels/Camels.sh #KEYWORDS_CAMELS_ALL
  . $PLACENTALDIR/Dolphins/Dolphins.sh #KEYWORDS_DOLPHINS
  . $PLACENTALDIR/Dugongs/Dugongs.sh #KEYWORDS_DUGONGS_ALL
  . $PLACENTALDIR/Elephants/Elephants.sh #KEYWORDS_ELEPHANTS_ALL
  . $PLACENTALDIR/Hares/Hares.sh #KEYWORDS_HARES_ALL
  . $PLACENTALDIR/Hedgehogs/Hedgehogs.sh #KEYWORDS_HEDGEHOGS_ALL
  . $PLACENTALDIR/Llamas/Llamas.sh #KEYWORDS_LLAMAS_ALL
  . $PLACENTALDIR/Manatees/Manatees.sh #KEYWORDS_MANATEES_ALL
  . $PLACENTALDIR/Pigs/Pigs.sh #KEYWORDS_PIGS_ALL
  . $PLACENTALDIR/Pikas/Pikas.sh #KEYWORDS_PIKAS_ALL
  . $PLACENTALDIR/Porpoises/Porpoises.sh #KEYWORDS_PORPOISES_ALL
  . $PLACENTALDIR/Rabbits/Rabbits.sh #KEYWORDS_RABBITS_ALL
  . $PLACENTALDIR/Shrews/Shrews.sh #KEYWORDS_SHREWS_ALL
  . $PLACENTALDIR/Sloths/Sloths.sh #KEYWORDS_SLOTHS_ALL
  . $PLACENTALDIR/Whales/Whales.sh #KEYWORDS_WHALES_ALL

  KEYWORDS_PLACENTALEXCLUDE="$KEYWORDS_AARDVARKS_ALL|$KEYWORDS_ANTEATERS_ALL|$KEYWORDS_ARMADILLOS_ALL|$KEYWORDS_BATS_ALL|$KEYWORDS_CAMELS_ALL|$KEYWORDS_DOLPHINS|$KEYWORDS_DUGONGS_ALL|$KEYWORDS_ELEPHANTS_ALL|$KEYWORDS_HARES_ALL|$KEYWORDS_HEDGEHOGS_ALL|$KEYWORDS_LLAMAS_ALL|$KEYWORDS_MANATEES_ALL|$KEYWORDS_PIGS_ALL|$KEYWORDS_PIKAS_ALL|$KEYWORDS_PORPOISES_ALL|$KEYWORDS_RABBITS_ALL|$KEYWORDS_SHREWS_ALL|$KEYWORDS_SLOTHS_ALL|$KEYWORDS_WHALES_ALL"
  KEYWORDS_PLACENTALMAMMALS_ALL="$KEYWORDS_PLACENTALMAMMALS|$KEYWORDS_AARDVARKS_ALL|$KEYWORDS_ANTEATERS_ALL|$KEYWORDS_ARMADILLOS_ALL|$KEYWORDS_BATS_ALL|$KEYWORDS_CAMELS_ALL|$KEYWORDS_DOLPHINS|$KEYWORDS_DUGONGS_ALL|$KEYWORDS_ELEPHANTS_ALL|$KEYWORDS_HARES_ALL|$KEYWORDS_HEDGEHOGS_ALL|$KEYWORDS_LLAMAS_ALL|$KEYWORDS_MANATEES_ALL|$KEYWORDS_PIGS_ALL|$KEYWORDS_PIKAS_ALL|$KEYWORDS_PORPOISES_ALL|$KEYWORDS_RABBITS_ALL|$KEYWORDS_SHREWS_ALL|$KEYWORDS_SLOTHS_ALL|$KEYWORDS_WHALES_ALL"

  debug_end "Placental mammals"

fi