#!/bin/bash

export KEYWORDS_BANDS_BONJOVI="Bon(| )Jovi"

egrep -i "$KEYWORDS_BANDS_BONJOVI" newpages.txt | egrep -iv "Jon(| )Bon(| )Jovi" >> BonJovi.txt

BONJOVI=`stat --print=%s BonJovi.txt`

if [ $BONJOVI -ne 0 ];
then
  export CATFILE="BonJovi.txt"
  export CATNAME="Bon Jovi"
  $CATEGORIZE
fi

rm BonJovi.txt