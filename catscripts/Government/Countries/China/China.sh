#!/bin/bash

egrep -i "People(|')s(| )Republic(| )of(| )China" newpages.txt >> China.txt
egrep -i 'China' newpages.txt | egrep -iv 'Republic of China|fine china|antique china' >> China.txt #There are two "Republics of China". If one is not named  explicitly, presume the question is about the People's Republic, as it is larger and more internationally recognized

CHINA=`stat --print=%s China.txt`

if [ $CHINA -ne 0 ];
then
  export CATFILE="China.txt"
  export CATNAME="China"
  $CATEGORIZE
fi

rm China.txt