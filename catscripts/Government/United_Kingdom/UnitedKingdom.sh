#!/bin/bash

egrep -i 'United(| )Kingdom|\bUK\b|\bU\.K\b' newpages.txt | egrep -iv 'England|Scotland|Wales|Northern(| )Ireland' >> UnitedKingdom.txt 

UNITEDKINGDOM=`stat --print=%s UnitedKingdom.txt`

if [ $UNITEDKINGDOM -ne 0 ];
then
  export CATFILE="UnitedKingdom.txt"
  export CATNAME="United Kingdom"
  $CATEGORIZE
fi

rm UnitedKingdom.txt