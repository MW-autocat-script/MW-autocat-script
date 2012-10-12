#!/bin/bash

cat newpages.txt | egrep -i 'south park|southpark|kenny mccormick|eric cartman|kyle broflovski|stan marsh|butters stotch|Mr(|\.) Garrison' >> SouthPark.txt

SOUTHPARK=`stat --print=%s SouthPark.txt`

if [ $SOUTHPARK -ne 0 ];
then
  ./catscripts/Entertainment/Cartoons/South\ park/catSouthPark.sh
fi


rm SouthPark.txt