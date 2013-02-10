#!/bin/bash

egrep -i 'Phil(|l)ip(| )(J|)(\.|)(| )Fry|Leela|Bender(| )(|Bending)(| )Rodríguez|Planetary(| )Express|Zoidberg|Prof(\.||essor)(| )Farnsworth|Futurama' nespages.txt >> Futurama.txt

FUTURAMA=`stat --print=%s Futurama.txt`

if [ $FUTURAMA -ne 0 ];
then
  export CATFILE="Futurama.txt"
  export CATNAME="Futurama"
  ./catscripts/Categorize.sh
fi

rm Futurama.txt