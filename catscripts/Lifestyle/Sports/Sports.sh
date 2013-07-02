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


SOCCER=`stat --print=%s Soccer.txt`
TENNIS=`stat --print=%s Tennis.txt`
PINGPONG=`stat --print=%s PingPong.txt`
BADMINTON=`stat --print=%s Badminton.txt`
VOLLEYBALL=`stat --print=%s Volleyball.txt`
SOFTBALL=`stat --print=%s Softball.txt`
HOCKEY=`stat --print=%s Hockey.txt`
NHL=`stat --print=%s NHL.txt`

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