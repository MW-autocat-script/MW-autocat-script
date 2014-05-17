#!/bin/bash

egrep -i 'Phil(|l)ip(| )(J|)(\.|)(| )Fry|Leela|Bender(| )(|Bending)(| )Rodríguez|Planetary(| )Express|Zoidberg|Prof(\.||essor)(| )Farnsworth|Futurama' newpages.txt | egrep -iv 'Futurama' >> Futurama.txt

FUTURAMA=$(stat --print=%s Futurama.txt)

if [ $FUTURAMA -ne 0 ];
then
  export CATFILE="Futurama.txt"
  export CATNAME="Futurama"
  $CATEGORIZE
fi

rm Futurama.txt