#!/bin/bash
#Categorization script for the adult cartoon South Park
egrep -i 'south park|southpark|kenny mccormick|cartman|kyle broflovski|stan marsh|butters stotch|(Herbet|Mr(|\.))(| )Garrison|choksondik|Mr(|\.)(| )Mackey' newpages.txt >> SouthPark.txt

SOUTHPARK=`stat --print=%s SouthPark.txt`

if [ $SOUTHPARK -ne 0 ];
then
  export CATFILE="SouthPark.txt"
  export CATNAME="South Park"
  $CATEGORIZE
fi


rm SouthPark.txt