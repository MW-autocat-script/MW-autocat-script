#!/bin/bash

KEYWORDS_BOARDGAMES="board(| )game"
KEYWORDS_CHESS="\bChess\b|Chessboard"
KEYWORDS_CHESS_EXCLUDE="Leonard Chess|Chess Roberts|Harry Potter|Smallville|Chess River|River Chess"
KEYWORDS_CHECKERS="Checkers|Checker(| )board"
KEYWORDS_BOARDGAMES_EXCLUDE="$KEYWORDS_CHESS|$KEYWORDS_CHECKERS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Board games"

  BOARDGAMES=$(egrep -i "$KEYWORDS_BOARDGAMES" newpages.txt | egrep -iv "$KEYWORDS_BOARDGAMES_EXCLUDE")
  CHESS=$(egrep -i "$KEYWORDS_CHESS" newpages.txt | egrep -iv "$KEYWORDS_CHESS_EXCLUDE")
  CHECKERS=$(egrep -i "$KEYWORDS_CHECKERS" newpages.txt)

  if [ "$BOARDGAMES" != "" ];
  then
    printf "%s" "$BOARDGAMES" > Boardgames.txt
    export CATFILE="Boardgames.txt"
    export CATNAME="Board games"
    $CATEGORIZE
    rm Boardgames.txt
    unset BOARDGAMES
  fi

  if [ "$CHESS" != "" ];
  then
    printf "%s" "$CHESS" > Chess.txt
    export CATFILE="Chess.txt"
    export CATNAME="Chess"
    $CATEGORIZE
    rm Chess.txt
    unset CHESS
  fi

  if [ "$CHECKERS" != "" ];
  then
    printf "%s" "$CHECKERS" > Checkers.txt
    export CATFILE="Checkers.txt"
    export CATNAME="Checkers"
    $CATEGORIZE
    rm Checkers.txt
    unset CHECKERS
  fi

  debug_end "Board games"

fi
  