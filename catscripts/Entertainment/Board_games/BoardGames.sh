#!/bin/bash

KEYWORDS_BOARDGAMES="board(| )game"
KEYWORDS_CHESS="\bChess\b|Chessboard"
KEYWORDS_CHESS_EXCLUDE="Leonard Chess|Chess Roberts|Harry Potter|Smallville|Chess River|River Chess"
KEYWORDS_CHECKERS="Checkers|Checker(| )board"
KEYWORDS_BOARDGAMES_EXCLUDE="$KEYWORDS_CHESS|$KEYWORDS_CHECKERS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Board games"

  BOARDGAMES=$(egrep -i "$KEYWORDS_BOARDGAMES" "$NEWPAGES" | egrep -iv "$KEYWORDS_BOARDGAMES_EXCLUDE")
  CHESS=$(egrep -i "$KEYWORDS_CHESS" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHESS_EXCLUDE")
  CHECKERS=$(egrep -i "$KEYWORDS_CHECKERS" "$NEWPAGES")

  categorize "BOARDGAMES" "Board games"
  categorize "CHESS" "Chess"
  categorize "CHECKERS" "Checkers"

  debug_end "Board games"

fi
  