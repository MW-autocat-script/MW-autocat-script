#!/bin/bash
#Script fot the My Little Pony: Friendship is Magic cartoon

egrep -i 'Friendship is Magic|MLP\:FIM|MLP FIM|brony|Rainbow Dash|Twilight Sparkle|Pinkie Pie|Princess Celestia|Princess Luna|Princess Cadance|Princess Cadence|Queen Chrysalis' newpages.txt >> MLPFIM.txt

MLP=`stat --print=%s MLPFIM.txt`

if [ $MLP -ne 0 ];
then
  export CATFILE="MLPFIM.txt"
  export CATNAME="My Little Pony: Friendship is Magic"
  $CATEGORIZE
fi

rm MLPFIM.txt