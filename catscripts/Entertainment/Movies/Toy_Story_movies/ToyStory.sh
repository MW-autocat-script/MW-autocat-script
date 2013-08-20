#!/bin/bash

export KEYWORDS_MOVIES_TOYSTORY="Toy(| )Story"
export KEYWORDS_MOVIES_TOYSTORY2="Toy(| )Story(| )2"
export KEYWORDS_MOVIES_TOYSTORY3="Toy(| )Story(| )3"

egrep -i "$KEYWORDS_MOVIES_TOYSTORY" newpages.txt | egrep -iv "$KEYWORDS_MOVIES_TOYSTORY2|$KEYWORDS_MOVIES_TOYSTORY3" >> ToyStory.txt
egrep -i "$KEYWORDS_MOVIES_TOYSTORY2" newpages.txt >> ToyStory2.txt
egrep -i "$KEYWORDS_MOVIES_TOYSTORY3" newpages.txt >> ToyStory3.txt

TOYSTORY=`stat --print=%s ToyStory.txt`
TSTWO=`stat --print=%s ToyStory2.txt`
TSTHREE=`stat --print=%s ToyStory3.txt`

if [ $TOYSTORY -ne 0 ];
then
  export CATFILE="ToyStory.txt"
  export CATNAME="Toy Story"
  $CATEGORIZE
fi

if [ $TSTWO -ne 0 ];
then
  export CATFILE="ToyStory2.txt"
  export CATNAME="Toy Story 2"
  $CATEGORIZE
fi

if [ $TSTHREE -ne 0 ];
then
  export CATFILE="ToyStory3.txt"
  export CATNAME="Toy Story 3"
  $CATEGORIZE
fi

rm ToyStory.txt
rm ToyStory2.txt
rm ToyStory3.txt