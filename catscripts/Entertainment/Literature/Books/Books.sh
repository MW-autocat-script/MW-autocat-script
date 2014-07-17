#!/bin/bash

BOOKSDIR="./catscripts/Entertainment/Literature/Books"

if [ "$1" == "" ];
then

  debug_start "Books"

  . $BOOKSDIR/Lord_of_the_Flies/LordoftheFlies.sh #KEYWORDS_LORDOFTHEFLIES
  . $BOOKSDIR/Redwall/Redwall.sh #KEYWORDS_REDWALL
  . $BOOKSDIR/The_Giver/TheGiver.sh #KEYWORDS_THEGIVER
  . $BOOKSDIR/To_Kill_a_Mockingbird/ToKillAMockingbird.sh #KEYWORDS_TOKILLAMOCKINGBIRD

  debug_end "Books"

fi