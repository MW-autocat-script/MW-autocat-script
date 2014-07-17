#!/bin/bash

LITERATUREDIR="./catscripts/Entertainment/Literature"

if [ "$1" == "" ];
then

  debug_start "Literature"

  . $LITERATUREDIR/Books/Books.sh

  debug_end "Literature"

fi

