#!/bin/bash
cat newpages.txt | egrep -i 'Umbreon' >> Umbreon.txt
cat newpages.txt | egrep -i 'Unfezant' >> Unfezant.txt
cat newpages.txt | egrep -i 'Unown' >> Unown.txt
cat newpages.txt | egrep -i 'Ursaring' >> Ursaring.txt
cat newpages.txt | egrep -i 'Uxie' >> Uxie.txt

Umbreon=`stat --print=%s Umbreon.txt`
Unfezant=`stat --print=%s Unfezant.txt`
Unown=`stat --print=%s Unown.txt`
Ursaring=`stat --print=%s Ursaring.txt`
Uxie=`stat --print=%s Uxie.txt`

if [ $Umbreon -ne 0 ];
then
  export CATFILE="Umbreon.txt"
  export CATNAME="Umbreon"
  ./catscripts/Categorize.sh
fi

if [ $Unfezant -ne 0 ];
then
  export CATFILE="Unfezant.txt"
  export CATNAME="Unfezant"
  ./catscripts/Categorize.sh
fi

if [ $Unown -ne 0 ];
then
  export CATFILE="Unown.txt"
  export CATNAME="Unown"
  ./catscripts/Categorize.sh
fi

if [ $Ursaring -ne 0 ];
then
  export CATFILE="Ursaring.txt"
  export CATNAME="Ursaring"
  ./catscripts/Categorize.sh
fi

if [ $Uxie -ne 0 ];
then
  export CATFILE="Uxie.txt"
  export CATNAME="Uxie"
  ./catscripts/Categorize.sh
fi

rm Umbreon.txt
rm Unfezant.txt
rm Unown.txt
rm Ursaring.txt
rm Uxie.txt