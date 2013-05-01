#!/bin/bash

egrep -i 'soccer|footballer' newpages.txt >> Soccer.txt
egrep -i 'tennis' newpages.txt | egrep -iv 'table tennis' >> Tennis.txt
egrep -i 'ping(|-| )pong' newpages.txt >> PingPong.txt
egrep -i 'Badminton' newpages.txt >> Badminton.txt
egrep -i 'Volleyball' newpages.txt >> Volleyball.txt
egrep -i 'softball' newpages.txt >> Softball.txt

SOCCER=`stat --print=%s Soccer.txt`
TENNIS=`stat --print=%s Tennis.txt`
PINGPONG=`stat --print=%s PingPong.txt`
BADMINTON=`stat --print=%s Badminton.txt`
VOLLEYBALL=`stat --print=%s Volleyball.txt`
SOFTBALL=`stat --print=%s Softball.txt`

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

rm Soccer.txt
rm Tennis.txt
rm PingPong.txt
rm Badminton.txt
rm Volleyball.txt
rm Softball.txt