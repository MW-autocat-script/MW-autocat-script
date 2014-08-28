#!/bin/bash

KEYWORDS_SUDOKU="Sudoku"
KEYWORDS_CROSSWORD="Crossword|[0-9]{1,}(| |-)letter(| )word(| )for|'(three|four|five|six|seven|eight|nine|ten|eleven|twelve|thirteen|fourteen|fifteen|sixteen|seventeen|eighteen|nineteen|twenty)( |-)letter word for"

if [ "$1" == "" ];
then
  
  debug_start "Puzzles"

  SUDOKU=$(egrep -i "$KEYWORDS_SUDOKU" "$NEWPAGES")
  CROSSWORD=$(egrep -i "$KEYWORDS_CROSSWORD" "$NEWPAGES")

  categorize "SUDOKU" "Sudoku"
  categorize "CROSSWORD" "Crossword puzzles"

  debug_end "Puzzles"

fi