#!/bin/bash

debug_start "Bands"

BANDSDIR="./catscripts/Entertainment/Music/Bands"

. $BANDSDIR/Alvin_and_the_Chipmunks/Alvin.sh #KEYWORDS_ALVINANDTHECHIPMUNKS_ALL
. $BANDSDIR/Bon_Jovi/BonJovi.sh
. $BANDSDIR/JLS/JLS.sh
. $BANDSDIR/Linkin_Park/LinkinPark.sh
. $BANDSDIR/Metallica/Metallica.sh
. $BANDSDIR/Mindless_Behavior/MindlessBehavior.sh
. $BANDSDIR/My_Chemical_Romance/MyChemicalRomance.sh
. $BANDSDIR/Nickelback/Nickelback.sh
. $BANDSDIR/One_Direction/OneDirection.sh
. $BANDSDIR/The_Beatles/TheBeatles.sh
. $BANDSDIR/The_Black_Eyed_Peas/TheBlackEyedPeas.sh

debug_end "Bands"