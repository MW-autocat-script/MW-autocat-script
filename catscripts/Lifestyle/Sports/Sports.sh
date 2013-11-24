#!/bin/bash

egrep -i 'soccer|footballer' newpages.txt >> Soccer.txt
egrep -i 'tennis' newpages.txt | egrep -iv 'table tennis' >> Tennis.txt
egrep -i 'ping(|-| )pong' newpages.txt >> PingPong.txt
egrep -i 'Badminton' newpages.txt >> Badminton.txt
egrep -i 'Volleyball' newpages.txt >> Volleyball.txt
egrep -i 'softball' newpages.txt >> Softball.txt
egrep -i 'hockey' newpages.txt | egrep -iv 'field hockey|street hockey|indoor hockey|NHL|Stanley Cup|National Hockey League' >> Hockey.txt
egrep -i 'NHL|National Hockey League|Stanley Cup' newpages.txt >> NHL.txt
egrep -i 'Anaheim Duck' newpages.txt >> NHL.txt
egrep -i 'Boston Bruin' newpages.txt >> NHL.txt
egrep -i 'Buffalo Sabre' newpages.txt >> NHL.txt
egrep -i 'Calgary Flame' newpages.txt >> NHL.txt
egrep -i 'Carolina Hurricane' newpages.txt >> NHL.txt
egrep -i 'Chicago Blackhawk' newpages.txt >> NHL.txt
egrep -i 'Colorado Avalanche' newpages.txt >> NHL.txt
egrep -i 'Columbus Blue Jacket' newpages.txt >> NHL.txt
egrep -i 'Dallas Star' newpages.txt >> NHL.txt
egrep -i 'Detroit Red Wing' newpages.txt >> NHL.txt
egrep -i 'Edmonton Oiler' newpages.txt >> NHL.txt
egrep -i 'Florida Panther' newpages.txt | egrep -i 'NHL|hockey|sport|arena|\bwin|\bwon\b|Stanley|\brink' >> NHL.txt
egrep -i 'Los Angeles King' newpages.txt >> NHL.txt
egrep -i 'Minnesota Wild' newpages.txt >> NHL.txt
egrep -i 'Montreal Canadien' newpages.txt >> NHL.txt
egrep -i 'Nashville Predator' newpages.txt >> NHL.txt
egrep -i 'New Jersey Devil' newpages.txt >> NHL.txt
egrep -i 'New York Islander' newpages.txt >> NHL.txt
egrep -i 'New York Ranger' newpages.txt >> NHL.txt
egrep -i 'Philadelphia Flyer' newpages.txt >> NHL.txt
egrep -i 'Phoenix Coyote' newpages.txt >> NHL.txt
egrep -i 'Pittsburgh Penguin' newpages.txt >> NHL.txt
egrep -i 'Ottawa Senator' newpages.txt >> NHL.txt
egrep -i 'San Jose Shark' newpages.txt >> NHL.txt
egrep -i 'St Louis Blue' newpages.txt >> NHL.txt
egrep -i 'Tampa Bay Lightning' newpages.txt >> NHL.txt
egrep -i 'Toronto Maple Leaf' newpages.txt >> NHL.txt
egrep -i 'Vancouver Canuck' newpages.txt >> NHL.txt
egrep -i 'Washington Capital' newpages.txt >> NHL.txt
egrep -i 'Winnipeg Jet' newpages.txt >> NHL.txt

KEYWORDS_BASKETBALL="Basket(| )ball"
KEYWORDS_NBA="\bNBA\b"
KEYWORDS_MICHAELJORDAN="Michael(| )Jordan"
KEYWORDS_SHAQUILLEONEAL="Shaquille(| )O(|')Neal|\bShaq\b"
KEYWORDS_KOBEBRYANT="Kobe(| )Bryant"
KEYWORDS_NBA_EXCLUDE="$KEYWORDS_MICHAELJORDAN|$KEYWORDS_SHAQUILLEONEAL|$KEYWORDS_KOBEBRYANT"
KEYWORDS_BASKETBALL_EXCLUDE="$KEYWORDS_NBA_EXCLUDE|$KEYWORDS_NBA"


SOCCER=`stat --print=%s Soccer.txt`
TENNIS=`stat --print=%s Tennis.txt`
PINGPONG=`stat --print=%s PingPong.txt`
BADMINTON=`stat --print=%s Badminton.txt`
VOLLEYBALL=`stat --print=%s Volleyball.txt`
SOFTBALL=`stat --print=%s Softball.txt`
HOCKEY=`stat --print=%s Hockey.txt`
NHL=`stat --print=%s NHL.txt`
BASKETBALL=`egrep -i "$KEYWORDS_NBA" newpages.txt | egrep -iv "$KEYWORDS_NBA_EXCLUDE"`
NBA=`egrep -i "$KEYWORDS_NBA" newpages.txt | egrep -iv "$KEYWORDS_NBA_EXCLUDE"`
MICHAELJORDAN=`egrep -i "$KEYWORDS_MICHAELJORDAN" newpages.txt`
SHAQUILLEONEAL=`egrep -i "$KEYWORDS_SHAQUILLEONEAL" newpages.txt`
KOBEBRYANT=`egrep -i "$KEYWORDS_KOBEBRYANT" newpages.txt`

if [ $SOCCER -ne 0 ];
then
  export CATFILE="Soccer.txt"
  export CATNAME="Soccer (association football)"
  $CATEGORIZE
fi

if [ $TENNIS -ne 0 ];
then
  export CATFILE="Tennis.txt"
  export CATNAME="Tennis"
  $CATEGORIZE
fi

if [ $PINGPONG -ne 0 ];
then
  export CATFILE="PingPong.txt"
  export CATNAME="Ping-pong"
  $CATEGORIZE
fi

if [ $BADMINTON -ne 0 ];
then
  export CATFILE="Badminton.txt"
  export CATNAME="Badminton"
  $CATEGORIZE
fi

if [ $VOLLEYBALL -ne 0 ];
then
  export CATFILE="Volleyball.txt"
  export CATNAME="Volleyball"
  $CATEGORIZE
fi

if [ $SOFTBALL -ne 0 ];
then
  export CATFILE="Softball.txt"
  export CATNAME="Softball"
  $CATEGORIZE
fi

if [ $HOCKEY -ne 0 ];
then
  export CATFILE="Hockey.txt"
  export CATNAME="Hockey"
  $CATEGORIZE
fi

if [ $NHL -ne 0 ];
then
  export CATFILE="NHL.txt"
  export CATNAME="NHL"
  $CATEGORIZE
fi

if [ "$BASKETBALL" != "" ];
then
  egrep -i "$KEYWORDS_BASKETBALL" newpages.txt | egrep -iv "$KEYWORDS_BASKETBALL_EXCLUDE" > Basketball.txt
  export CATFILE="Basketball.txt"
  export CATNAME="Basketball"
  $CATEGORIZE
  rm Basketball.txt
  unset BASKETBALL
fi

if [ "$NBA" != "" ];
then
  egrep -i "$KEYWORDS_NBA" newpages.txt | egrep -iv "$KEYWORDS_NBA_EXCLUDE" > NBA.txt
  export CATFILE="NBA.txt"
  export CATNAME="NBA"
  $CATEGORIZE
  rm NBA.txt
  unset NBA
fi

if [ "$MICHAELJORDAN" != "" ];
then
  egrep -i "$KEYWORDS_MICHAELJORDAN" newpages.txt > MichaelJordan.txt
  export CATFILE="MichaelJordan.txt"
  export CATNAME="Michael Jordan"
  $CATEGORIZE
  rm MichaelJordan.txt
  unset MICHAELJORDAN
fi

if [ "$SHAQUILLEONEAL" != "" ];
then
  egrep -i "$KEYWORDS_SHAQUILLEONEAL" newpages.txt > ShaquilleONeal.txt
  export CATFILE="ShaquilleONeal.txt"
  export CATNAME="Shaquille O'Neal"
  $CATEGORIZE
  rm ShaquilleONeal.txt
  unset SHAQUILLEONEAL
fi

if [ "$KOBEBRYANT" != "" ];
then
  egrep -i "$KEYWORDS_KOBEBRYANT" newpages.txt > KobeBraynt.txt
  export CATFILE="KobeBraynt.txt"
  export CATNAME="Kobe Bryant"
  $CATEGORIZE
  rm KobeBraynt.txt
  unset KOBEBRYANT
fi

rm Soccer.txt
rm Tennis.txt
rm PingPong.txt
rm Badminton.txt
rm Volleyball.txt
rm Softball.txt
rm Hockey.txt
rm NHL.txt

export CURRENTDIR="./catscripts/Lifestyle/Sports"

$CURRENTDIR/Autoracing.sh