#!/bin/bash

egrep -i "People(|')s(| )Republic(| )of(| )China" newpages.txt >> China.txt
egrep -i 'China' newpages.txt | egrep -iv 'Republic(| )of(| )China|fine(| )china|antique(| )china|Great(| )Wall(| )of(| )China|Beijing|Hong(| )Kong|China(| )town' >> China.txt #There are two "Republics of China". If one is not named  explicitly, presume the question is about the People's Republic, as it is larger and more internationally recognized
egrep -i "Great(| )Wall(| )of(| )China" newpages.txt >> GreatWall.txt
egrep -i "Beijing" newpages.txt >> Beijing.txt
egrep -i "Hong(| )Kong" newpages.txt >> HongKong.txt 

CHINA=`stat --print=%s China.txt`
WALL=`stat --print=%s GreatWall.txt`
BEIJING=`stat --print=%s Beijing.txt`
HONGKONG=`stat --print=%s HongKong.txt`

if [ $CHINA -ne 0 ];
then
  export CATFILE="China.txt"
  export CATNAME="China"
  $CATEGORIZE
fi

if [ $WALL -ne 0 ];
then
  export CATFILE="GreatWall.txt"
  export CATNAME="Great Wall of China"
  $CATEGORIZE
fi

if [ $BEIJING -ne 0 ];
then
  export CATFILE="Beijing.txt"
  export CATNAME="Beijing"
  $CATEGORIZE
fi

if [ $HONGKONG -ne 0 ];
then
  export CATFILE="HongKong.txt"
  export CATNAME="Hong Kong"
  $CATEGORIZE
fi

rm China.txt
rm GreatWall.txt
rm Beijing.txt
rm HongKong.txt