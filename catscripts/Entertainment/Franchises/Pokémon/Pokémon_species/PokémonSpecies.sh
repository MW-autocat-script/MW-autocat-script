#!/bin/bash

POKEMONSPECIESDIR="./catscripts/Entertainment/Franchises/Pokémon/Pokémon_species"

if [ "$1" == "" ];
then

  debug_start "Pokémon species"

  . $POKEMONSPECIESDIR/A/A.sh  #KEYWORDS_POKEMONSPECIES_A
  . $POKEMONSPECIESDIR/B/B.sh  #KEYWORDS_POKEMONSPECIES_B
  . $POKEMONSPECIESDIR/C/C.sh  #KEYWORDS_POKEMONSPECIES_C
  . $POKEMONSPECIESDIR/D/D.sh  #KEYWORDS_POKEMONSPECIES_D
  . $POKEMONSPECIESDIR/E/E.sh  #KEYWORDS_POKEMONSPECIES_E
  . $POKEMONSPECIESDIR/F/F.sh  #KEYWORDS_POKEMONSPECIES_F
  . $POKEMONSPECIESDIR/G/G.sh  #KEYWORDS_POKEMONSPECIES_G
  . $POKEMONSPECIESDIR/H/H.sh 
  . $POKEMONSPECIESDIR/I/I.sh 
  . $POKEMONSPECIESDIR/J/J.sh 
  . $POKEMONSPECIESDIR/K/K.sh 
  . $POKEMONSPECIESDIR/L/L.sh 
  . $POKEMONSPECIESDIR/M/M.sh 
  . $POKEMONSPECIESDIR/N/N.sh 
  . $POKEMONSPECIESDIR/O/O.sh 
  . $POKEMONSPECIESDIR/P/P.sh 
  . $POKEMONSPECIESDIR/Q/Q.sh 
  . $POKEMONSPECIESDIR/R/R.sh 
  . $POKEMONSPECIESDIR/S/S.sh 
  . $POKEMONSPECIESDIR/T/T.sh
  . $POKEMONSPECIESDIR/U/U.sh
  . $POKEMONSPECIESDIR/V/V.sh
  . $POKEMONSPECIESDIR/W/W.sh
  . $POKEMONSPECIESDIR/X/X.sh
  . $POKEMONSPECIESDIR/Y/Y.sh
  . $POKEMONSPECIESDIR/Z/Z.sh

  debug_end "Pokémon species"

else

  . $POKEMONSPECIESDIR/A/A.sh norun #KEYWORDS_POKEMONSPECIES_A
  . $POKEMONSPECIESDIR/B/B.sh norun #KEYWORDS_POKEMONSPECIES_B
  . $POKEMONSPECIESDIR/C/C.sh norun #KEYWORDS_POKEMONSPECIES_C
  . $POKEMONSPECIESDIR/D/D.sh norun #KEYWORDS_POKEMONSPECIES_D
  . $POKEMONSPECIESDIR/E/E.sh norun #KEYWORDS_POKEMONSPECIES_E
  . $POKEMONSPECIESDIR/F/F.sh norun #KEYWORDS_POKEMONSPECIES_F
  . $POKEMONSPECIESDIR/G/G.sh norun #KEYWORDS_POKEMONSPECIES_G
  . $POKEMONSPECIESDIR/H/H.sh norun
  . $POKEMONSPECIESDIR/I/I.sh norun
  . $POKEMONSPECIESDIR/J/J.sh norun
  . $POKEMONSPECIESDIR/K/K.sh norun
  . $POKEMONSPECIESDIR/L/L.sh norun
  . $POKEMONSPECIESDIR/M/M.sh norun
  . $POKEMONSPECIESDIR/N/N.sh norun
  . $POKEMONSPECIESDIR/O/O.sh norun
  . $POKEMONSPECIESDIR/P/P.sh norun
  . $POKEMONSPECIESDIR/Q/Q.sh norun
  . $POKEMONSPECIESDIR/R/R.sh norun
  . $POKEMONSPECIESDIR/S/S.sh norun
  . $POKEMONSPECIESDIR/T/T.sh norun
  . $POKEMONSPECIESDIR/U/U.sh norun
  . $POKEMONSPECIESDIR/V/V.sh norun
  . $POKEMONSPECIESDIR/W/W.sh norun
  . $POKEMONSPECIESDIR/X/X.sh norun
  . $POKEMONSPECIESDIR/Y/Y.sh norun
  . $POKEMONSPECIESDIR/Z/Z.sh norun

fi