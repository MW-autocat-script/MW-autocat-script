#!/bin/bash

egrep -i 'ISO (image|file)|(CD|DVD|Blu(-|| )Ray) authoring' newpages.txt >> Authoring.txt
egrep -i 'Nero Burning ROM' newpages.txt >> Authoring.txt #CD/DVD writing software
egrep -i 'Nero Linux' newpages.txt >> Authoring.txt 
egrep -i 'burn a (CD|DVD|Blu(|-| )Ray)' newpages.txt >> Authoring.txt
egrep -i 'K3B|Burn Baby Burn' newpages.txt >> Authoring.txt #Linux CD/DVD burning software
egrep -i 'ISO(| )Master' newpages.txt >> Authoring.txt #ISO image creator
egrep -i 'ImgBurn' newpages.txt >> Authoring.txt
egrep -i 'CDBurnerXP' newpages.txt >> Authoring.txt
egrep -i 'InfraRecorder' newpages.txt >> Authoring.txt

AUTHORING=`stat --print=%s Authoring.txt`

if [ $AUTHORING -ne 0 ];
then
  export CATFILE="Authoring.txt"
  export CATNAME="CD and DVD authoring"
  ./catscripts/Categorize.sh
fi

rm Authoring.txt
