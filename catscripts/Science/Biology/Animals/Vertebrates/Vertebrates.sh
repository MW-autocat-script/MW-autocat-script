#!/bin/bash

CURRENTDIR="./catscripts/Science/Biology/Animals/Vertebrates"

export KEYWORDS_VERTEBRATE="fish|amphibian|mammal|bird|reptile"

if [ "$1" == "" ];
then

  debug_start "Vertebrates"

  . $CURRENTDIR/Mammals/Mammals.sh 
  . $CURRENTDIR/Reptiles/Reptiles.sh 
  . $CURRENTDIR/Amphibians/Amphibians.sh #KEYWORDS_AMPHIBIANS_ALL

  debug_end "Vertebrates"

fi
