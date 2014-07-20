#!/bin/bash

LITERATUREDIR="./catscripts/Entertainment/Literature"

if [ "$1" == "" ];
then

  debug_start "Literature"
  
  . $LITERATUREDIR/Authors/Authors.sh
  . $LITERATUREDIR/Books/Books.sh
  . $LITERATUREDIR/Fan_fiction/Fanfiction.sh

  debug_end "Literature"

fi

