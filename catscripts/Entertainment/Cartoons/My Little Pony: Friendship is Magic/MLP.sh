#!/bin/bash

cat newpages.txt | egrep -i 'Friendship is Magic|MLP\:FIM|MLP FIM|brony|Rainbow Dash|Twilight Sparkle|Pinkie Pie|Princess Celestia|Princess Luna|Princess Cadance|Princess Cadence|Queen Chrysalis' >> MLPFIM.txt

MLP=`stat --print=%s MLPFIM.txt`

if [ $MLP -ne 0 ];
then
  ./catscripts/Entertainment/Cartoons/My\ Little\ Pony\:\ Friendship\ is\ Magic/catMLP.sh
fi


rm MLPFIM.txt