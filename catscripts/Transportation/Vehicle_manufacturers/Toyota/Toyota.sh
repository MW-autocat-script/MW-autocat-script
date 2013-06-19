#!/bin/bash

#Toyota cars

KEYWORDS_TOYOTA_2000GT="Toyota(| )2000(| )GT|[0-9]{1,}(| )2000(| )GT"
KEYWORDS_TOYOTA_86="Toyota(| )86"
KEYWORDS_TOYOTA_ALLEX="Toyota(| )Allex|[0-9](| )Allex"
KEYWORDS_TOYOTA_AVALON="Toyota(| )Avalon|[0-9]{1,}(| )Avalon"
KEYWORDS_TOYOTA_CAMRY="Camry"
KEYWORDS_TOYOTA_COROLLA="Corolla|$KEYWORDS_TOYOTA_ALLEX" #The Allex is a rebadged Corolla hatchback
KEYWORDS_TOYOTA_PUBLICA="Toyota(| )(1000|Publica)|[0-9]{1,}(| )Publica"
KEYWORDS_TOYOTA_PRIUS="Prius"
KEYWORDS_TOYOTA_CARS="$KEYWORDS_TOYOTA_2000GT|$KEYWORDS_TOYOTA_86|$KEYWORDS_TOYOTA_ALLEX|$KEYWORDS_TOYOTA_AVALON|$KEYWORDS_TOYOTA_CAMRY|$KEYWORDS_TOYOTA_COROLLA|$KEYWORDS_TOYOTA_PUBLICA|$KEYWORDS_TOYOTA_PRIUS"
KEYWORDS_TOYOTA_CARS_NONPOP="$KEYWORDS_TOYOTA_2000GT|$KEYWORDS_TOYOTA_PUBLICA" #Cars which don't have their own category and should be placed in the parent

#Toyota SUVs

KEYWORDS_TOYOTA_4RUNNER="4Runner| 4(| )Runner\b"


#Toyota vans

KEYWORDS_TOYOTA_ALPHARD="Toyota(| )Alphard|[0-9]{1,}(| )Alphard" #Alphard is also the name of a star, so we can't grab just Alphard

#Brands

KEYWORDS_LEXUS="\bLexus"
KEYWORDS_SCION="Scion"

#Search cars

egrep -i "$KEYWORDS_TOYOTA_AVALON" newpages.txt >> ToyotaAvalon.txt
egrep -i "$KEYWORDS_TOYOTA_CAMRY" newpages.txt >> ToyotaCamry.txt
egrep -i "$KEYWORDS_TOYOTA_COROLLA" newpages.txt >> ToyotaCorolla.txt
egrep -i "$KEYWORDS_TOYOTA_PRIUS" newpages.txt >> ToyotaPrius.txt


#Search SUVs

#Search vans

#Search brands

egrep -i "$KEYWORDS_LEXUS" newpages.txt >> Lexus.txt
egrep -i "$KEYWORDS_SCION" newpages.txt >> Scion.txt

#Stat cars

AVALON=`stat --print=%s ToyotaAvalon.txt`
CAMRY=`stat --print=%s ToyotaCamry.txt`
COROLLA=`stat --print=%s ToyotaCorolla.txt`
PRIUS=`stat --print=%s ToyotaPrius.txt`

#Stat SUVs

#Stat vans

#Stat brands

LEXUS=`stat --print=%s Lexus.txt`
SCION=`stat --print=%s Scion.txt`

#Categorize cars

if [ $AVALON -ne 0 ];
then
  export CATFILE="ToyotaAvalon.txt"
  export CATNAME="Toyota Avalon"
  $CATEGORIZE
fi

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

#Categorize brands

if [ $LEXUS -ne 0 ];
then
  export CATFILE="Lexus.txt"
  export CATNAME="Lexus"
  $CATEGORIZE
fi

if [ $SCION -ne 0 ];
then
  export CATFILE="Scion.txt"
  export CATNAME="Scion"
  $CATEGORIZE
fi

#Cleanup cars

rm ToyotaAvalon.txt
rm ToyotaCamry.txt
rm ToyotaCorolla.txt
rm ToyotaPrius.txt

#Cleanup brands

rm Lexus.txt
rm Scion.txt