#!/bin/bash

egrep -i 'board(| )game' newpages.txt | egrep -iv 'checkers|chess' >> Boardgames.txt
egrep -i '\bChess\b|Chessboard' newpages.txt >> Chess.txt
egrep -i 'Checkers|Checker(| )board' newpages.txt >> Checkers.txt

BOARDGAMES=`stat --print=%s Boardgames.txt`
CHESS=`stat --print=%s Chess.txt`
CHECKERS=`stat --print=%s Checkers.txt`

if [ $BOARDGAMES -ne 0 ];
then
  export CATFILE="Boardgames.txt"
  export CATNAME="Board games"
  $CATEGORIZE
fi

if [ $CHESS -ne 0 ];
then
  export CATFILE="Chess.txt"
  export CATNAME="Chess"
  $CATEGORIZE
fi

if [ $CHECKERS -ne 0 ];
then
  export CATFILE="Checkers.txt"
  export CATNAME="Checkers"
  $CATEGORIZE
fi

rm Boardgames.txt
rm Chess.txt
rm Checkers.txt
  