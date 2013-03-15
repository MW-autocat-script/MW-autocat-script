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
  $CATEGORIZE
fi

if [ $Quilava -ne 0 ];
then
  export CATFILE="Quilava.txt"
  export CATNAME="Quilava"
  $CATEGORIZE
fi

if [ $Qwilfish -ne 0 ];
then
  export CATFILE="Qwilfish.txt"
  export CATNAME="Qwilfish"
  $CATEGORIZE
fi


rm Quagsire.txt
rm Quilava.txt
rm Qwilfish.txt