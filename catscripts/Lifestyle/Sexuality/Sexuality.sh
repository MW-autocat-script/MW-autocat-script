#!/bin/bash

KEYWORDS_SEXUALITY="sexuality|sexual orientation|\bgay(|s)\b|lesbian|bi(|-)sexual|trans(-|)gender|pansexual|\bBDSM\b|fellatio|cunnilingus|anal(| )sex|vaginal(| )sex|omnisexual|sado-masochis(m|t)"
KEYWORDS_MASTURBATION="Masturbat(e|ion)"
KEYWORDS_SEXUALITY_EXCLUDE="$KEYWORDS_MASTURBATION|Gay(| )Tony"

egrep -i "$KEYWORDS_SEXUALITY" newpages.txt | egrep -iv "$KEYWORDS_SEXUALITY_EXCLUDE" >> Sexuality.txt
egrep -i "$KEYWORDS_MASTURBATION" newpages.txt >> Masturbation.txt

SEXUALITY=`stat --print=%s Sexuality.txt`
MASTURBATION=`stat --print=%s Masturbation.txt`

if [ $SEXUALITY -ne 0 ];
then
  export CATFILE="Sexuality.txt"
  export CATNAME="Sexuality"
  $CATEGORIZE
fi

if [ $MASTURBATION -ne 0 ];
then
  export CATFILE="Masturbation.txt"
  export CATNAME="Masturbation"
  $CATEGORIZE
fi

rm Sexuality.txt
rm Masturbation.txt