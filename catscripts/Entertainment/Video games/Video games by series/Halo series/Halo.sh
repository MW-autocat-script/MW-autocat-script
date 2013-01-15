#1/bin/bash

cat newpages.txt | egrep -i 'Halo(|\:) (CE|Combat Evolved|Custom Edition)|Halo 1' >> Halo1.txt
cat newpages.txt | egrep -i 'Halo 2' >> Halo2.txt
cat newpages.txt | egrep -i 'Halo 3' | egrep -iv 'ODST' >> Halo3.txt
cat newpages.txt | egrep -i 'Halo 3(|\:)(| )ODST' >> ODST.txt
cat newpages.txt | egrep -i 'Halo 4' >> Halo4.txt
cat newpages.txt | egrep -i 'Halo Wars' >> HaloWars.txt
cat newpages.txt | egrep -i 'Halo series|Cortana|(Captain|Miranda) Keyes|John(|-)(| )117|ODST' | egrep -iv 'Halo(|\:) (1|2|3|4|Wars|CE|Combat Evolved|Custom Edition)' >> Haloseries.txt

HALO1=`stat --print=%s Halo1.txt`
HALO2=`stat --print=%s Halo2.txt`
HALO3=`stat --print=%s Halo3.txt`
ODST=`stat --print=%s ODST.txt`
HALO4=`stat --print=%s Halo4.txt`
HALOWARS=`stat --print=%s HaloWars.txt`
SERIES=`stat --print=%s Haloseries.txt`

if [ $HALO1 -ne 0 ];
then
	export CATFILE="Halo1.txt"
	export CATNAME="Halo: Combat Evolved"
	./catscripts/Categorize.sh
fi

if [ $HALO2 -ne 0 ];
then
	export CATFILE="Halo2.txt"
	export CATNAME="Halo 2"
	./catscripts/Categorize.sh
fi

if [ $HALO3 -ne 0 ];
then
	export CATFILE="Halo3.txt"
	export CATNAME="Halo 3"
	./catscripts/Categorize.sh
fi

if [ $ODST -ne 0 ];
then
	export CATFILE="ODST.txt"
	export CATNAME="Halo 3: ODST"
	./catscripts/Categorize.sh
fi

rm Halo*.txt
rm ODST.txt
