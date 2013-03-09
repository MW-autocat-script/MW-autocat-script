#!/bin/bash

egrep -i 'Pepsi|Mountain Dew|PepsiCo' newpages.txt >> PepsiCo.txt
egrep -i 'Coca( |-)Cola|Diet Coke|Dr(|\.) Pepper' newpages.txt  >> CocaCola.txt
egrep -i 'soft drink|cola|root beer|soda|pop drink' newpages.txt | egrep -iv 'Pepsi|Coca|Diet Coke|baking soda' >> Softdrinks.txt

PEPSICO=`stat --print=%s PepsiCo.txt`
COKE=`stat --print=%s CocaCola.txt`
SOFT=`stat --print=%s Softdrinks.txt`

if [ $PEPSICO -ne 0 ];
then
  export CATFILE="PepsiCo.txt"
  export CATNAME="PepsiCo Inc."
  ./catscripts/Categorize.sh
fi

if [ $COKE -ne 0 ];
then
  export CATFILE="CocaCola.txt"
  export CATNAME="The Coca-Cola Company"
  ./catscripts/Categorize.sh
fi

if [ $SOFT -ne 0 ];
then
  export CATFILE="Softdrinks.txt"
  export CATNAME="Soft drinks"
  ./catscripts/Categorize.sh
fi

rm PepsiCo.txt
rm CocaCola.txt
rm Softdrinks.txt