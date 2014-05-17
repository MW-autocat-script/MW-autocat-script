#!/bin/bash

egrep -i 'Halo(|\:) (CE|Combat Evolved|Custom Edition)|Halo 1' newpages.txt >> Halo1.txt
egrep -i 'Halo 2' newpages.txt >> Halo2.txt
egrep -i 'Halo 3' newpages.txt | egrep -iv 'ODST' >> Halo3.txt
egrep -i 'Halo 3(|\:)(| )ODST' newpages.txt >> ODST.txt
egrep -i 'Halo 4' newpages.txt >> Halo4.txt
egrep -i 'Halo Wars' newpages.txt >> HaloWars.txt
egrep -i 'Halo series|Cortana|(Captain|Miranda) Keyes|John(|-)(| )117|ODST' newpages.txt | egrep -iv 'Halo(|\:) (1|2|3|4|Wars|CE|Combat Evolved|Custom Edition)' >> Haloseries.txt

HALO1=$(stat --print=%s Halo1.txt)
HALO2=$(stat --print=%s Halo2.txt)
HALO3=$(stat --print=%s Halo3.txt)
ODST=$(stat --print=%s ODST.txt)
HALO4=$(stat --print=%s Halo4.txt)
HALOWARS=$(stat --print=%s HaloWars.txt)
SERIES=$(stat --print=%s Haloseries.txt)

if [ $HALO1 -ne 0 ];
then
	export CATFILE="Halo1.txt"
	export CATNAME="Halo: Combat Evolved"
	$CATEGORIZE
fi

if [ $HALO2 -ne 0 ];
then
	export CATFILE="Halo2.txt"
	export CATNAME="Halo 2"
	$CATEGORIZE
fi

if [ $HALO3 -ne 0 ];
then
	export CATFILE="Halo3.txt"
	export CATNAME="Halo 3"
	$CATEGORIZE
fi

if [ $ODST -ne 0 ];
then
	export CATFILE="ODST.txt"
	export CATNAME="Halo 3: ODST"
	$CATEGORIZE
fi

rm Halo*.txt
rm ODST.txt
