#!/bin/bash 

cat newpages.txt | egrep -i "Silver\b|Silver's|Silvers\b" | egrep -iv 'Pokemon|Pokémon|Soul(| )Silver|Silver Surfer|Silverado|(RuneScape|Rune Scape)|Hedgehog|(Dragon Age|DragonAge)|MHFU|Monster Hunter|medal|membership|silverlight|Silverstone|(get|catch).+in silver\]\]|penny|nickel|dime|quarter|dollar|gorilla|quicksilver|Silver Sable|Long John|hair|Ron Silver|Silver bells|Silver fern|silver certificate|free silver' > Silver.txt

cat newpages.txt | egrep -i 'Copper' >> Copper.txt
cat newpages.txt | egrep -i "Gold\b|Gold's" | egrep -iv 'Pokemon|Pokémon(| Gold)|Heart(| )Gold|(RuneScape|Rune Scape)|(Dragon Age|DragonAge)|MHFU|Monster Hunter|medal|membership|(get|catch).+in gold\]\]|penny|nickel|dime|quarter|dollar|hair' > Gold.txt
cat newpages.txt | egrep -i 'Roentgenium' >> Roentgenium.txt

SILVER=`stat --print=%s Silver.txt`
COPPER=`stat --print=%s Copper.txt`
GOLD=`stat --print=%s Gold.txt`
ROENTGENIUM=`stat --print=%s Roentgenium.txt`

if [ $SILVER -ne 0 ];
then
  export CATFILE="Silver.txt"
  export CATNAME="Silver"
  ./catscripts/Categorize.sh
fi

if [ $COPPER -ne 0 ];
then
  export CATFILE="Copper.txt"
  export CATNAME="Copper"
  ./catscripts/Categorize.sh
fi

if [ $GOLD -ne 0 ];
then
  export CATFILE="Gold.txt"
  export CATNAME="Gold"
  ./catscripts/Categorize.sh
fi

if [ $ROENTGENIUM -ne 0 ];
then
  export CATFILE="Roentgenium.txt"
  export CATNAME="Roentgenium"
  ./catscripts/Categorize.sh
fi

rm Silver.txt
rm Copper.txt
rm Gold.txt
rm Roentgenium.txt