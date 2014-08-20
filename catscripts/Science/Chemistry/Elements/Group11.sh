#!/bin/bash 

KEYWORDS_SILVER="Silver\b|Silver's|Silvers\b"
KEYWORDS_SILVER_EXCLUDE="Pokemon|Pokémon|Soul(| )Silver|Silver Surfer|Silverado|Rune(| )Scape|Hedgehog|(Dragon Age|DragonAge)|MHFU|Monster Hunter|medal|membership|silverlight|Silverstone|(get|catch).+in silver$|penny|nickel|dime|quarter|dollar|gorilla|quicksilver|Silver Sable|Long John|hair|Ron Silver|Silver bells|Silver fern|silver certificate|free silver"
KEYWORDS_COPPER="Copper"
KEYWORDS_GOLD="\bGold\b|\bGold's"
KEYWORDS_GOLD_EXCLUDE="Pokemon|Pokémon|Heart(| )Gold|medal|Gold Rush|Gold Coast|chocobo|Rune(| )Scape|Yugioh|win gold|Warcraft|membership|\bDBZ|minecraft|Xbox|(Dragon Age|DragonAge)|Resident Evil|Last Remnant|Fallout|Monster Hunter|Call of Duty|MW2|Halo 3|Club Penguin|MHFU|penny|nickel|dime|quarter|dollar|hair|(get|catch).+in gold$|Olympi(c|an)|black gold|Gold.+Roger|Gold fish|ribbon|gold chest"
KEYWORDS_ROENTGENIUM="Roentgenium"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Group 11 elements"

  SILVER=$(egrep -i "$KEYWORDS_SILVER" "$NEWPAGES" | egrep -iv "$KEYWORDS_SILVER_EXCLUDE")
  COPPER=$(egrep -i "$KEYWORDS_COPPER" "$NEWPAGES")
  GOLD=$(egrep -i "$KEYWORDS_GOLD" "$NEWPAGES" | egrep -iv "$KEYWORDS_GOLD_EXCLUDE")
  ROENTGENIUM=$(egrep -i "$KEYWORDS_ROENTGENIUM" "$NEWPAGES")

  if [ "$SILVER" != "" ];
  then
    printf "%s" "$SILVER" > Silver.txt
    export CATFILE="Silver.txt"
    export CATNAME="Silver"
    $CATEGORIZE
    rm Silver.txt
    unset SILVER
  fi

  if [ "$COPPER" != "" ];
  then
    printf "%s" "$COPPER" > Copper.txt
    export CATFILE="Copper.txt"
    export CATNAME="Copper"
    $CATEGORIZE
    rm Copper.txt
    unset COPPER
  fi

  if [ "$GOLD" != "" ];
  then
    printf "%s" "$GOLD" > Gold.txt
    export CATFILE="Gold.txt"
    export CATNAME="Gold"
    $CATEGORIZE
    rm Gold.txt
    unset GOLD
  fi

  if [ "$ROENTGENIUM" != "" ];
  then
    printf "%s" "$ROENTGENIUM" > Roentgenium.txt
    export CATFILE="Roentgenium.txt"
    export CATNAME="Roentgenium"
    $CATEGORIZE
    rm Roentgenium.txt
    unset ROENTGENIUM
  fi

  debug_end "Group 11 elements"

fi