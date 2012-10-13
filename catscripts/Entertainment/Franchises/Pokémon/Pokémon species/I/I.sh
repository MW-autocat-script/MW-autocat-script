#!/bin/bash
cat newpages.txt | egrep -i 'Igglybuff' >> Igglybuff.txt
cat newpages.txt | egrep -i 'Illumise' >> Illumise.txt
cat newpages.txt | egrep -i 'Infernape' >> Infernape.txt
cat newpages.txt | egrep -i 'Ivysaur' >> Ivysaur.txt

Igglybuff=`stat --print=%s Igglybuff.txt`
Illumise=`stat --print=%s Illumise.txt`
Infernape=`stat --print=%s Infernape.txt`
Ivysaur=`stat --print=%s Ivysaur.txt`

if [ $Igglybuff -ne 0 ];
then
   export CATFILE="Igglybuff.txt"
   export CATNAME="Igglybuff"
   ./catscripts/Categorize.sh
fi

if [ $Illumise -ne 0 ];
then
   export CATFILE="Illumise.txt"
   export CATNAME="Illumise"
   ./catscripts/Categorize.sh
fi

if [ $Infernape -ne 0 ];
then
   export CATFILE="Infernape.txt"
   export CATNAME="Infernape"
   ./catscripts/Categorize.sh
fi

if [ $Ivysaur -ne 0 ];
then
   export CATFILE="Ivysaur.txt"
   export CATNAME="Ivysaur"
   ./catscripts/Categorize.sh
fi

rm Igglybuff.txt
rm Illumise.txt
rm Infernape.txt
rm Ivysaur.txt
