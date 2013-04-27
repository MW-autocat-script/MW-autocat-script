#!/bin/bash

egrep -i 'soccer|footballer' newpages.txt >> Soccer.txt
egrep -i 'tennis' newpages.txt | egrep -iv 'table tennis' >> Tennis.txt
egrep -i 'ping(|-| )pong' newpages.txt >> PingPong.txt
egrep -i 'Badminton' newpages.txt >> Badminton.txt

SOCCER=`stat --print=%s Soccer.txt`
TENNIS=`stat --print=%s Tennis.txt`
PINGPONG=`stat --print=%s PingPong.txt`
BADMINTON=`stat --print=%s Badminton.txt`

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

rm Soccer.txt
rm Tennis.txt
rm PingPong.txt
rm Badminton.txt