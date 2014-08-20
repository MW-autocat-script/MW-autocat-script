#!/bin/bash

KEYWORDS_SUDOKU="Sudoku"
KEYWORDS_CROSSWORD="Crossword|[0-9]{1,}(| |-)letter(| )word(| )for|'(three|four|five|six|seven|eight|nine|ten|eleven|twelve|thirteen|fourteen|fifteen|sixteen|seventeen|eighteen|nineteen|twenty)( |-)letter word for"

if [ "$1" == "" ];
then
  
  debug_start "Puzzles"

  SUDOKU="$(egrep -i "$KEYWORDS_SUDOKU" "$NEWPAGES")"
  CROSSWORD="$(egrep -i "$KEYWORDS_CROSSWORD" "$NEWPAGES")"

  if [ "$SUDOKU" != "" ];
  then
    printf "%s" "$SUDOKU" > Sudoku.txt
    export CATFILE="Sudoku.txt"
    export CATNAME="Sudoku"
    $CATEGORIZE
    rm Sudoku.txt
    unset SUDOKU
  fi

  if [ "$CROSSWORD" != "" ];
  then
    printf "%s" "$CROSSWORD" > Crossword.txt
    export CATFILE="Crossword.txt"
    export CATNAME="Crossword puzzles"
    $CATEGORIZE
    rm Crossword.txt
    unset CROSSWORD
  fi

  debug_end "Puzzles"

fi