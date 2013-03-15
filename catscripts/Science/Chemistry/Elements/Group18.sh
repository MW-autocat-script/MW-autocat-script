#!/bin/bash 

egrep -i '(\bNeon\b|\bNeons\b)' newpages.txt |egrep -iv '(Dodge|Plymouth) Neon|[0-9]{2,} Neon' >> Neon.txt
egrep -i '\bHelium' newpages.txt >> Helium.txt
egrep -i '\bArgon\b|\bArgons\b' newpages.txt >> Argon.txt
egrep -i 'Krypton' newpages.txt | egrep -iv 'Kryptonite|Superman|planet Krypton|Kryptonian' >> Krypton.txt
egrep -i '\bXenon' newpages.txt | egrep -iv 'LG Xenon' >> Xenon.txt
egrep -i '\bRadon' newpages.txt >> Radon.txt
egrep -i 'Ununoctium' newpages.txt >> Ununoctium.txt

NEON=`stat --print=%s Neon.txt`
HELIUM=`stat --print=%s Helium.txt`
ARGON=`stat --print=%s Argon.txt`
KRYPTON=`stat --print=%s Krypton.txt`
XENON=`stat --print=%s Xenon.txt`
RADON=`stat --print=%s Radon.txt`
UNUNOCTIUM=`stat --print=%s Ununoctium.txt`

if [ $NEON -ne 0 ];
then
  export CATFILE="Neon.txt"
  export CATNAME="Neon"
  $CATEGORIZE
fi

if [ $HELIUM -ne 0 ];
then
  export CATFILE="Helium.txt"
  export CATNAME="Helium"
  $CATEGORIZE
fi

if [ $ARGON -ne 0 ];
then
  export CATFILE="Argon.txt"
  export CATNAME="Argon"
  $CATEGORIZE
fi

if [ $KRYPTON -ne 0 ];
then
  export CATFILE="Krypton.txt"
  export CATNAME="Krypton"
  $CATEGORIZE
fi

if [ $XENON -ne 0 ];
then
  export CATFILE="Xenon.txt"
  export CATNAME="Xenon"
  $CATEGORIZE
fi

if [ $RADON -ne 0 ];
then
  export CATFILE="Radon.txt"
  export CATNAME="Radon"
  $CATEGORIZE
fi

if [ $UNUNOCTIUM -ne 0 ];
then
  export CATFILE="Ununoctium.txt"
  export CATNAME="Ununoctium"
  $CATEGORIZE
fi

rm Neon.txt
rm Helium.txt
rm Argon.txt
rm Krypton.txt
rm Xenon.txt
rm Radon.txt
rm Ununoctium.txt