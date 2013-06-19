#!/bin/bash

#Toyota cars

KEYWORDS_TOYOTA_2000GT="Toyota(| )2000(| )GT|[0-9]{1,}(| )2000(| )GT"
KEYWORDS_TOYOTA_86="Toyota(| )86"
KEYWORDS_TOYOTA_ALLEX="Toyota(| )Allex|[0-9](| )Allex"
KEYWORDS_TOYOTA_CAMRY="Camry"
KEYWORDS_TOYOTA_COROLLA="Corolla|$KEYWORDS_TOYOTA_ALLEX" #The Allex is a rebadged Corolla hatchback
KEYWORDS_TOYOTA_PUBLICA="Toyota(| )(1000|Publica)|[0-9]{1,}(| )Publica"
KEYWORDS_TOYOTA_PRIUS="Prius"
KEYWORDS_TOYOTA_CARS="$KEYWORDS_TOYOTA_2000GT|$KEYWORDS_TOYOTA_86|$KEYWORDS_TOYOTA_ALLEX|$KEYWORDS_TOYOTA_CAMRY|$KEYWORDS_TOYOTA_COROLLA|$KEYWORDS_TOYOTA_PUBLICA|$KEYWORDS_TOYOTA_PRIUS"
KEYWORDS_TOYOTA_CARS_NONPOP="$KEYWORDS_TOYOTA_2000GT|$KEYWORDS_TOYOTA_PUBLICA" #Cars which don't have their own category and should be placed in the parent

#Toyota SUVs

KEYWORDS_TOYOTA_4RUNNER="4Runner| 4(| )Runner\b"


#Toyota vans

KEYWORDS_TOYOTA_ALPHARD="Toyota(| )Alphard|[0-9]{1,}(| )Alphard" #Alphard is also the name of a star, so we can't grab just Alphard


#Search cars

egrep -i "$KEYWORDS_TOYOTA_CAMRY" newpages.txt >> ToyotaCamry.txt
egrep -i "$KEYWORDS_TOYOTA_COROLLA" newpages.txt >> ToyotaCorolla.txt
egrep -i "$KEYWORDS_TOYOTA_PRIUS" newpages.txt >> ToyotaPrius.txt

#Search SUVs

#Search vans

#Stat cars

CAMRY=`stat --print=%s ToyotaCamry.txt`
COROLLA=`stat --print=%s ToyotaCorolla.txt`
PRIUS=`stat --print=%s ToyotaPrius`

#Stat SUVs

#Stat vans

#Categorize cars

if [ $CAMRY -ne 0 ];
then
  export CATFILE="ToyotaCamry.txt"
  export CATNAME="Toyota Camry"
  $CATEGORIZE
fi

if [ $COROLLA -ne 0 ];
then
  export CATFILE="ToyotaCorolla.txt"
  export CATNAME="Toyota Corolla"
  $CATEGORIZE
fi

if [ $PRIUS -ne 0 ];
then
  export CATFILE="ToyotaPrius.txt"
  export CATNAME="Toyota Prius"
  $CATEGORIZE
fi

#Categorize SUVs

#Categorize vans

#Cleanup cars

rm ToyotaCamry.txt
rm ToyotaCorolla.txt
rm ToyotaPrius.txt