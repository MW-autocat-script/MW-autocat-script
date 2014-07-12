#!/bin/bash

KEYWORDS_HARRYPOTTER="Harry(| )Potter|Hermione|Ron(| )Weasley|Dumbledore|Snape|Voldemort|Hagrid|Remus(| )Lupin|Sirius(| )Black|Peter(| )Pettigrew|Hogwarts|Quidditch|Philosopher(|'s)(| )Stone|deathly(| )hallows|goblet(| )of(| )fire|chamber(| )of(| )secrets|Azkaban|Order(| )of(| )the(| )Phoenix|Half(|-)(| )blood(| )prince|\bMuggle|Pensieve|Horcrux|Elder(| )Wand"

if [ "$1" == "" ];
then

  debug_start "Harry Potter"

  HARRYPOTTER=$(egrep -i "$KEYWORDS_HARRYPOTTER" newpages.txt )

  if [ "$HARRYPOTTER" != "" ];
  then
    printf "%s" "$HARRYPOTTER" > HarryPotter.txt
    export CATFILE="HarryPotter.txt"
    export CATNAME="Harry Potter"
    $CATEGORIZE
    rm HarryPotter.txt
    unset HARRYPOTTER
  fi

  debug_end "Harry Potter"

fi