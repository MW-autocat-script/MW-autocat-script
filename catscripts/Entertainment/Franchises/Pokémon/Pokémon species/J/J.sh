#!/bin/bash
cat newpages.txt | egrep -i 'Jellicent' >> Jellicent.txt
cat newpages.txt | egrep -i 'Jigglypuff' >> Jigglypuff.txt
cat newpages.txt | egrep -i 'Jirachi' >> Jirachi.txt
cat newpages.txt | egrep -i 'Jolteon' >> Jolteon.txt
cat newpages.txt | egrep -i 'Joltik' >> Joltik.txt
cat newpages.txt | egrep -i 'Jumpluff' >> Jumpluff.txt
cat newpages.txt | egrep -i 'Jynx' >> Jynx.txt

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
