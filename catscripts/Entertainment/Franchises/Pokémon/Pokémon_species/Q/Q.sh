#!/bin/bash
egrep -i 'Quagsire' newpages.txt >> Quagsire.txt
egrep -i 'Quilava' newpages.txt >> Quilava.txt
egrep -i 'Qwilfish' newpages.txt >> Qwilfish.txt

Quagsire=`stat --print=%s Quagsire.txt`
Quilava=`stat --print=%s Quilava.txt`
Qwilfish=`stat --print=%s Qwilfish.txt`

if [ $Quagsire -ne 0 ];
then
  export CATFILE="Quagsire.txt"
  export CATNAME="Quagsire"
  ./catscripts/Categorize.sh
fi

if [ $Quilava -ne 0 ];
then
  export CATFILE="Quilava.txt"
  export CATNAME="Quilava"
  ./catscripts/Categorize.sh
fi

if [ $Qwilfish -ne 0 ];
then
  export CATFILE="Qwilfish.txt"
  export CATNAME="Qwilfish"
  ./catscripts/Categorize.sh
fi


rm Quagsire.txt
rm Quilava.txt
rm Qwilfish.txt