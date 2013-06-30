#!/bin/bash

KEYWORDS_EGYPT="Egypt(|s|ian)"
KEYWORDS_ANCIENTEGYPYT="ancient Egypt|Tutankhamen|Tutencarmoon|tootencarmoon"
KEYWORDS_NILERIVER="Nile River|River Nile|Nile delta|Aswan dam"

egrep -i "$KEYWORDS_EGYPT" newpages.txt | egrep -iv "$KEYWORDS_ANCIENTEGYPYT|$KEYWORDS_NILERIVER" >> Egypt.txt
egrep -i "$KEYWORDS_ANCIENTEGYPYT" newpages.txt >> AncientEgypt.txt
egrep -i "$KEYWORDS_NILERIVER" newpages.txt >> NileRiver.txt

EGYPT=`stat --print=%s Egypt.txt`
ANCIENT=`stat --print=%s AncientEgypt.txt`
NILE=`stat --print=%s NileRiver.txt`

if [ $EGYPT -ne 0 ];
then
  export CATFILE="Egypt.txt"
  export CATNAME="Egypt"
  $CATEGORIZE
fi

if [ $ANCIENT -ne 0 ];
then
  export CATFILE="AncientEgypt.txt"
  export CATNAME="Ancient Egypt"
  $CATEGORIZE
fi

if [ $NILE -ne 0 ];
then
  export CATFILE="NileRiver.txt"
  export CATNAME="Nile River"
  $CATEGORIZE
fi

rm Egypt.txt
rm AncientEgypt.txt
rm NileRiver.txt