#!/bin/bash
#Categorization script for the adult cartoon South Park

SOUTHPARK_CHARACTERS="(Kenny|Karen|Kevin)(| )McCormick|Cartman|(Kyle|Ike|Sheila|Gerald)(| )Broflovski|(Randy|Stan|Sharon|Shelly)(| )Marsh|(Butters|Leopold)(| )Stotch|((M(r|s|rs)(|\.)|Herbert))(| )Garrison|Mr(|\.)(| )Mackey|Wendy(| )Testaburger|Choksondick|Clyde(| )Donovan|(Scott|Jack|Mr\. and Mrs\.)(| )Tenorman|Clyde(| )Frog|Craig(| )Tucker|Jimmy(| )Valmer|Timmy(| )Burch|Token(| )Black|Mr(|\.)(| )Hat|Mayor McDaniels|Tweek(| )Tweak|(Phillip|Pip)(| )Pirrup|Towelie|Mr(|\.)(| )Hanky"
SOUTHPARK_MUSIC="Let(|'s)(| )Fighting(| )Love|Eyes of the Child"
SOUTHPARK_EPISODES="Make(| )Love(|,)(| )Not(| )Warcraft|Good(| )Times(| )With Weapons|The Coon\b|Imaginationland|Insheeption|Ass Burgers|Kenny Dies|Mecha-Streisand"

egrep -i "South(| )Park|Matt(| )Stone|Trey(| )Parker|Matt.+\bTrey|\bTrey.+Matt|Jesus and Pals|Mysterion|$SOUTHPARK_CHARACTERS|$SOUTHPARK_EPISODES|$SOUTHPARK_MUSIC" newpages.txt >> SouthPark.txt

SOUTHPARK=`stat --print=%s SouthPark.txt`

if [ $SOUTHPARK -ne 0 ];
then
  export CATFILE="SouthPark.txt"
  export CATNAME="South Park"
  $CATEGORIZE
fi


rm SouthPark.txt