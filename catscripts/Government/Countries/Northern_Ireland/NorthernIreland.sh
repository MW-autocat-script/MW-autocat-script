#!/bin/bash

egrep -i 'Northern(| )Ireland' newpages.txt >> NorthernIreland.txt

NIRELAND=`stat --print=%s NorthernIreland.txt`

if [ $NIRELAND -ne 0 ];
then
  export CATFILE="NorthernIreland.txt"
  export CATNAME="Northern Ireland"
  $CATEGORIZE
fi

rm NorthernIreland.txt
