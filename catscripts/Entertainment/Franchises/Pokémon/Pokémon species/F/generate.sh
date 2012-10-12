#!/bin/bash

cat list.txt | while read x ; do ( cat Template.sh | sed "s/_placeholder_/$x/g" >  cat$x.sh ) ; done
cat list.txt | while read x ; do ( echo "cat newpages.txt | egrep -i '$x' >> $x.txt" >> F.sh ) ; done
printf "\n" >> F.sh
cat list.txt | while read x ; do ( echo "$x=\'stat --print=%s $x.txt\`" >> F.sh ) ; done
printf "\n" >> F.sh
cat list.txt | while read x ; do ( echo -e "if [ #$x -ne 0 ];\nthen\n   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/cat$x.sh\nfi\n" >> F.sh ) ; done
printf "\n" >> F.sh
cat list.txt | while read x ; do ( echo "rm $x.txt" >> F.sh ) ; done
chmod +x *.sh
