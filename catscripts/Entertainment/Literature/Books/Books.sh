#!/bin/bash

BOOKSDIR="./catscripts/Entertainment/Literature/Books"

if [ "$1" == "" ];
then

  debug_start "Books"

  . $BOOKSDIR/Artemis_Fowl/ArtemisFowl.sh #KEYWORDS_ARTEMISFOWL
  . $BOOKSDIR/Lord_of_the_Flies/LordoftheFlies.sh #KEYWORDS_LORDOFTHEFLIES
  . $BOOKSDIR/Moby_Dick/MobyDick.sh #KEYWORDS_MOBYDICK
  . $BOOKSDIR/Redwall/Redwall.sh #KEYWORDS_REDWALL
  . $BOOKSDIR/The_39_Clues/The39Clues.sh #KEYWORDS_THE39CLUES
  . $BOOKSDIR/The_Giver/TheGiver.sh #KEYWORDS_THEGIVER
  . $BOOKSDIR/To_Kill_a_Mockingbird/ToKillAMockingbird.sh #KEYWORDS_TOKILLAMOCKINGBIRD

  debug_end "Books"

fi