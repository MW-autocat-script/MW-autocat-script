#!/bin/bash
egrep -i 'Umbreon' newpages.txt >> Umbreon.txt
egrep -i 'Unfezant' newpages.txt >> Unfezant.txt
egrep -i 'Unown' newpages.txt >> Unown.txt
egrep -i 'Ursaring' newpages.txt >> Ursaring.txt
egrep -i 'Uxie' newpages.txt >> Uxie.txt

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