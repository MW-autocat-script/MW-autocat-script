#!/bin/bash

egrep -i '\bAltima' newpages.txt >> NissanAltima.txt

ALTIMA=`stat --print=%s NissanAltima.txt`

if [ $ALTIMA -ne 0 ];
then
  export CATFILE="NissanAltima"
  export CATNAME="Nissan Altima"
  $CATEGORIZE
fi

rm NissanAltima.txt