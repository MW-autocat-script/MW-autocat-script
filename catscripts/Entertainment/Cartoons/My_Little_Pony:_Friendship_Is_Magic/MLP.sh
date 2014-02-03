#!/bin/bash
#Script fot the My Little Pony: Friendship is Magic cartoon

KEYWORDS_MLP="Friendship(| )is(| )Magic|MLP\:(| )FIM|MLP(| )FIM|brony|Rainbow(| )Dash|Twilight(| )Sparkle|Pinkie(| )Pie|Princess(| )Celestia|Princess(| )Luna|Princess(| )Cad(a|e)nce|Queen(| )Chrysalis|Fluttershy"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting My Little Pony: Friendship Is Magic\n"
  fi

  MLP="$(egrep -i "$KEYWORDS_MLP" newpages.txt)"

  if [ "$MLP" != "" ];
  then
    printf "%s" "$MLP" > MLPFIM.txt
    export CATFILE="MLPFIM.txt"
    export CATNAME="My Little Pony: Friendship is Magic"
    $CATEGORIZE
    rm MLPFIM.txt
    unset MLP
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing My Little Pony: Friendship Is Magic\n"
  fi

fi