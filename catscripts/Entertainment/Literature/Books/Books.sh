#!/bin/bash

BOOKSDIR="./catscripts/Entertainment/Literature/Books"

if [ "$1" == "" ];
then

  debug_start "Books"

  . $BOOKSDIR/The_Giver/TheGiver.sh #KEYWORDS_THEGIVER

  debug_end "Books"

fi