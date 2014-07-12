#!/bin/bash

HEALTHDIR="./catscripts/Lifestyle/Health"

if [ "$1" == "" ];
then

  debug_start "Health"

  . $HEALTHDIR/Diseases/Diseases.sh
  . $HEALTHDIR/Drugs/Drugs.sh

  debug_end "Health"

fi