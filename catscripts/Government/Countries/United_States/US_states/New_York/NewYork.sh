#!/bin/bash

egrep -i 'New(| )York' newpages.txt | egrep -iv 'New(| )York(| )City|\bNYC|Manhattan|Brooklyn' >> NewYork.txt
egrep -i 'New(| )York(| )City|\bNYC|Manhattan' newpages.txt >> NewYorkCity.txt

NEWYORK=`stat --print=%s NewYork.txt`
NYC=`stat --print=%s NewYorkCity.txt`

if [ $NEWYORK -ne 0 ];
then
  export CATFILE="NewYork.txt"
  export CATNAME="New York"
  $CATEGORIZE
fi

if [ $NYC -ne 0 ];
then
  export CATFILE="NewYorkCity.txt"
  export CATNAME="New York City"
  $CATEGORIZE
fi

rm NewYork.txt
rm NewYorkCity.txt