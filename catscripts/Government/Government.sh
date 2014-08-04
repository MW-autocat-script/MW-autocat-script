#!/bin/bash 
GOVERNMENTDIR="./catscripts/Government"

if [ "$1" == "" ];
then

  debug_start "Government"

  . $GOVERNMENTDIR/Countries/Countries.sh
  . $GOVERNMENTDIR/United_Nations/UnitedNations.sh

  debug_end "Government"

fi