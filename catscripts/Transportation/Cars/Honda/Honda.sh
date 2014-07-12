#!/bin/bash

KEYWORDS_HONDAACCORD="Honda(| )Accord|[0-9]{2,}(| )Accord"
KEYWORDS_HONDACIVIC="Honda(| )Civic|[0-9]{2,}(| )Civic"
KEYWORDS_HONDAPASSPORT="Honda(| )Passport|[0-9]{2,}(| )Passport"
KEYWORDS_HONDAELEMENT="Honda(| )Element|[0-9]{2,}(| )Element\b"

if [ "$1" == "" ];
then

  debug_start "Honda cars"

  ACCORD=$(egrep -i "$KEYWORDS_HONDAACCORD" newpages.txt)
  CIVIC=$(egrep -i "$KEYWORDS_HONDACIVIC" newpages.txt)
  PASSPORT=$(egrep -i "$KEYWORDS_HONDAPASSPORT" newpages.txt)
  ELEMENT=$(egrep -i "$KEYWORDS_HONDAELEMENT" newpages.txt)

  if [ "$ACCORD" != "" ];
  then
    printf "%s" "$ACCORD" > HondaAccord.txt
    export CATFILE="HondaAccord.txt"
    export CATNAME="Honda Accord"
    $CATEGORIZE
    rm HondaAccord.txt
    unset ACCORD
  fi

  if [ "$CIVIC" != "" ];
  then
    printf "%s" "$CIVIC" > HondaCivic.txt
    export CATFILE="HondaCivic.txt"
    export CATNAME="Honda Civic"
    $CATEGORIZE
    rm HondaCivic.txt
    unset CIVIC
  fi

  if [ "$PASSPORT" != "" ];
  then
    printf "%s" "$PASSPORT" > HondaPassport.txt
    export CATFILE="HondaPassport.txt"
    export CATNAME="Honda Passport"
    $CATEGORIZE
    rm HondaPassport.txt
    unset PASSPORT
  fi

  if [ "$ELEMENT" != "" ];
  then
    printf "%s" "$ELEMENT" > HondaElement.txt
    export CATFILE="HondaElement.txt"
    export CATNAME="Honda Element"
    $CATEGORIZE
    rm HondaElement.txt
    unset ELEMENT
  fi

  debug_end "Honda cars"

fi