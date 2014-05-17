#!/bin/bash

egrep -i "Harry(| )Potter|Hermione|Ron(| )Weasley|Dumbledore|Snape|Voldemort|Hagrid|Remus(| )Lupin|Sirius(| )Black|Peter(| )Pettigrew|Hogwarts|Quidditch|Philosopher(|'s)(| )Stone|deathly(| )hallows|goblet(| )of(| )fire|chamber(| )of(| )secrets|Azkaban|Order(| )of(| )the(| )Phoenix|Half(|-)(| )blood(| )prince|\bMuggle|Pensieve|Horcrux|Elder Wand" newpages.txt >> HarryPotter.txt

HARRYPOTTER=$(stat --print=%s HarryPotter.txt)

if [ $HARRYPOTTER -ne 0 ];
then
  export CATFILE="HarryPotter.txt"
  export CATNAME="Harry Potter"
  $CATEGORIZE
fi

rm HarryPotter.txt