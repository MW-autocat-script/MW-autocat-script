#!/bin/bash

egrep -i 'Sudoku' newpages.txt >> Sudoku.txt
egrep -i 'Crossword' newpages.txt >> Crossword.txt
egrep -i '[0-9]{1,}(|-)letter word for' newpages.txt >> Crossword.txt

SUDOKU=`stat --print=%s Sudoku.txt`
CROSSWORD=`stat --print=%s Crossword/txt`

if [ $SUDOKU -ne 0 ];
then
  export CATFILE="Sudoku.txt"
  export CATNAME="Sudoku"
  ./catscripts/Categorize.sh
fi

if [ $CROSSWORD -ne 0 ];
then
  export CATFILE="Crossword.txt"
  export CATNAME="Crossword Puzzles"
  ./catscripts/Categorize.sh
fi

rm Sudoku.txt
rm Crossword.txt