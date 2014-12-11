#!/bin/bash
#Script fot the My Little Pony: Friendship is Magic cartoon

KEYWORDS_MLP="Friendship(| )is(| )Magic|MLP\:(| )FIM|MLP(| )FIM|brony|Rainbow(| )Dash|Twilight(| )Sparkle|Pinkie(| )Pie|Princess(| )Celestia|Princess(| )Luna|Princess(| )Cad(a|e)nce|Queen(| )Chrysalis|Fluttershy|My(| )Little(| )Pony"

if [ "$1" == "" ];
then

  debug_start "My Little Pony: Friendship is Magic"

  MLP=$(egrep -i "$KEYWORDS_MLP" "$NEWPAGES")

  categorize "MLP" "My Little Pony: Friendship is Magic"

  debug_end "My Little Pony: Friendship is Magic"

fi