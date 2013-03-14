#!/bin/bash
egrep -i 'Jellicent' newpages.txt >> Jellicent.txt
egrep -i 'Jigglypuff' newpages.txt >> Jigglypuff.txt
egrep -i 'Jirachi' newpages.txt >> Jirachi.txt
egrep -i 'Jolteon' newpages.txt >> Jolteon.txt
egrep -i 'Joltik' newpages.txt >> Joltik.txt
egrep -i 'Jumpluff' newpages.txt >> Jumpluff.txt
egrep -i 'Jynx' newpages.txt >> Jynx.txt

Jellicent=`stat --print=%s Jellicent.txt`
Jigglypuff=`stat --print=%s Jigglypuff.txt`
Jirachi=`stat --print=%s Jirachi.txt`
Jolteon=`stat --print=%s Jolteon.txt`
Joltik=`stat --print=%s Joltik.txt`
Jumpluff=`stat --print=%s Jumpluff.txt`
Jynx=`stat --print=%s Jynx.txt`

if [ $Jellicent -ne 0 ];
then
   export CATFILE="Jellicent.txt"
   export CATNAME="Jellicent"
   ./catscripts/Categorize.sh
fi

if [ $Jigglypuff -ne 0 ];
then
   export CATFILE="Jigglypuff.txt"
   export CATNAME="Jigglypuff"
   ./catscripts/Categorize.sh
fi

if [ $Jirachi -ne 0 ];
then
   export CATFILE="Jirachi.txt"
   export CATNAME="Jirachi"
   ./catscripts/Categorize.sh
fi

if [ $Jolteon -ne 0 ];
then
   export CATFILE="Jolteon.txt"
   export CATNAME="Jolteon"
   ./catscripts/Categorize.sh
fi

if [ $Joltik -ne 0 ];
then
   export CATFILE="Joltik.txt"
   export CATNAME="Joltik"
   ./catscripts/Categorize.sh
fi

if [ $Jumpluff -ne 0 ];
then
   export CATFILE="Jumpluff.txt"
   export CATNAME="Jumpluff"
   ./catscripts/Categorize.sh
fi

if [ $Jynx -ne 0 ];
then
   export CATFILE="Jynx.txt"
   export CATNAME="Jynx"
   ./catscripts/Categorize.sh
fi

rm Jellicent.txt
rm Jigglypuff.txt
rm Jirachi.txt
rm Jolteon.txt
rm Joltik.txt
rm Jumpluff.txt
rm Jynx.txt
