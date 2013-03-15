#!/bin/bash
egrep -i 'Igglybuff' newpages.txt >> Igglybuff.txt
egrep -i 'Illumise' newpages.txt >> Illumise.txt
egrep -i 'Infernape' newpages.txt >> Infernape.txt
egrep -i 'Ivysaur' newpages.txt >> Ivysaur.txt

Igglybuff=`stat --print=%s Igglybuff.txt`
Illumise=`stat --print=%s Illumise.txt`
Infernape=`stat --print=%s Infernape.txt`
Ivysaur=`stat --print=%s Ivysaur.txt`

if [ $Igglybuff -ne 0 ];
then
   export CATFILE="Igglybuff.txt"
   export CATNAME="Igglybuff"
   $CATEGORIZE
fi

if [ $Illumise -ne 0 ];
then
   export CATFILE="Illumise.txt"
   export CATNAME="Illumise"
   $CATEGORIZE
fi

if [ $Infernape -ne 0 ];
then
   export CATFILE="Infernape.txt"
   export CATNAME="Infernape"
   $CATEGORIZE
fi

if [ $Ivysaur -ne 0 ];
then
   export CATFILE="Ivysaur.txt"
   export CATNAME="Ivysaur"
   $CATEGORIZE
fi

rm Igglybuff.txt
rm Illumise.txt
rm Infernape.txt
rm Ivysaur.txt
