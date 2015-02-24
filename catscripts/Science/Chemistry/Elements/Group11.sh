#!/bin/bash 

KEYWORDS_SILVER="Silver\b|Silver's|Silvers\b"
KEYWORDS_SILVER_EXCLUDE="Pokemon|Pokémon|Soul(| )Silver|Silver(| )Surfer|Silverado|Rune(| )Scape|Hedgehog|(Dragon Age|DragonAge)|MHFU|Monster Hunter|medal|membership|silverlight|Silverstone|(get|catch).+in silver$|penny|nickel|dime|quarter|dollar|gorilla|quick(| )silver|Silver(| )Sable|Long(| )John|hair|Ron(| )Silver|Silver(| )bell|Silver(| )fern|silver(| )certificate|free(| )silver|(Mt(|\.)|Mount)(| )Silver|Silver(| )Wing"
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

  categorize "SILVER" "Silver"
  categorize "COPPER" "Copper"
  categorize "GOLD" "Gold"
  categorize "ROENTGENIUM" "Roentgenium"

  debug_end "Group 11 elements"

fi