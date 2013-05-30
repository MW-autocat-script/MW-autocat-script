#!/bin/bash 

egrep -i "Silver\b|Silver's|Silvers\b" newpages.txt | egrep -iv 'Pokemon|Pokémon|Soul(| )Silver|Silver Surfer|Silverado|Rune(| )Scape|Hedgehog|(Dragon Age|DragonAge)|MHFU|Monster Hunter|medal|membership|silverlight|Silverstone|(get|catch).+in silver\]\]|penny|nickel|dime|quarter|dollar|gorilla|quicksilver|Silver Sable|Long John|hair|Ron Silver|Silver bells|Silver fern|silver certificate|free silver' > Silver.txt
egrep -i 'Copper' newpages.txt >> Copper.txt
egrep -i "\bGold\b|\bGold's" newpages.txt | egrep -iv "Pokemon|Pokémon|Heart(| )Gold|medal|Gold Rush|Gold Coast|chocobo|Rune(| )Scape|Yugioh|win gold|Warcraft|membership|\bDBZ|minecraft|Xbox|(Dragon Age|DragonAge)|Resident Evil|Last Remnant|Fallout|Monster Hunter|Call of Duty|MW2|Halo 3|Club Penguin|MHFU|penny|nickel|dime|quarter|dollar|hair|(get|catch).+in gold\]\]|Olympi(c|an)|black gold|Gold.+Roger|Gold fish|ribbon|gold chest" >> Gold.txt
egrep -i 'Roentgenium' newpages.txt >> Roentgenium.txt

SILVER=`stat --print=%s Silver.txt`
COPPER=`stat --print=%s Copper.txt`
GOLD=`stat --print=%s Gold.txt`
ROENTGENIUM=`stat --print=%s Roentgenium.txt`

if [ $SILVER -ne 0 ];
then
  export CATFILE="Silver.txt"
  export CATNAME="Silver"
  $CATEGORIZE
fi

if [ $COPPER -ne 0 ];
then
  export CATFILE="Copper.txt"
  export CATNAME="Copper"
  $CATEGORIZE
fi

if [ $GOLD -ne 0 ];
then
  export CATFILE="Gold.txt"
  export CATNAME="Gold"
  $CATEGORIZE
fi

if [ $ROENTGENIUM -ne 0 ];
then
  export CATFILE="Roentgenium.txt"
  export CATNAME="Roentgenium"
  $CATEGORIZE
fi

rm Silver.txt
rm Copper.txt
rm Gold.txt
rm Roentgenium.txt