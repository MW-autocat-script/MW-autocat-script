#!/bin/bash
#Categorization script for the adult cartoon South Park
egrep -i 'south park|southpark|kenny mccormick|eric cartman|kyle broflovski|stan marsh|butters stotch|Mr(|\.) Garrison' newpages.txt >> SouthPark.txt

SOUTHPARK=`stat --print=%s SouthPark.txt`

if [ $SOUTHPARK -ne 0 ];
then
  export CATFILE="SouthPark.txt"
  export CATNAME="South Park"
  ./catscripts/Categorize.sh
fi


rm SouthPark.txt