#!/bin/bash
#Categorization script for the adult cartoon South Park
egrep -i 'South(| )Park|Kenny(| )McCormick|Cartman|(Kyle|Gerald|Sheila|Ike)(| )Broflovski|(Randy|Stan)(| )Marsh|Butters(| )Stotch|(Herbert|Mr(|\.))(| )Garrison|choksondik|Mr(|\.)(| )Mackey|Matt(| )Stone|Trey(| )Parker|Matt.+\bTrey|\bTrey.+Matt|Wendy(| )Testaburger|Jesus and Pals|Make Love(|,)(| )Not Warcraft|Good Times With Weapons|Mysterion|The Coon\b|Karen(| )McCormick|Clyde(| )Donovan|Clyde(| )Frog|(Scott|Jack|Mr\. and Mrs\.)(| )Tenorman|Craig(| )Tucker|Jimmy(| )Valmer|Timmy(| )Burch|Token(| )Black|Mr(|\.)(| )Hat' newpages.txt >> SouthPark.txt

SOUTHPARK=`stat --print=%s SouthPark.txt`

if [ $SOUTHPARK -ne 0 ];
then
  export CATFILE="SouthPark.txt"
  export CATNAME="South Park"
  $CATEGORIZE
fi


rm SouthPark.txt