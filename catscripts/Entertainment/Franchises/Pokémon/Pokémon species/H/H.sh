#!/bin/bash
cat newpages.txt | egrep -i 'Happiny' >> Happiny.txt
cat newpages.txt | egrep -i 'Hariyama' >> Hariyama.txt
cat newpages.txt | egrep -i 'Haunter' >> Haunter.txt
cat newpages.txt | egrep -i 'Haxorus' >> Haxorus.txt
cat newpages.txt | egrep -i 'Heatmor' >> Heatmor.txt
cat newpages.txt | egrep -i 'Heatran' >> Heatran.txt
cat newpages.txt | egrep -i 'Heracross' >> Heracross.txt
cat newpages.txt | egrep -i 'Herdier' >> Herdier.txt
cat newpages.txt | egrep -i 'Hippopotas' >> Hippopotas.txt
cat newpages.txt | egrep -i 'Hippowdon' >> Hippowdon.txt
cat newpages.txt | egrep -i 'Hitmonchan' >> Hitmonchan.txt
cat newpages.txt | egrep -i 'Hitmonlee' >> Hitmonlee.txt
cat newpages.txt | egrep -i 'Hitmontop' >> Hitmontop.txt
cat newpages.txt | egrep -i 'Ho-Oh' >> Ho-Oh.txt
cat newpages.txt | egrep -i 'Honchkrow' >> Honchkrow.txt
cat newpages.txt | egrep -i 'Hoothoot' >> Hoothoot.txt
cat newpages.txt | egrep -i 'Hoppip' >> Hoppip.txt
cat newpages.txt | egrep -i 'Horsea' >> Horsea.txt
cat newpages.txt | egrep -i 'Houndoom' >> Houndoom.txt
cat newpages.txt | egrep -i 'Houndour' >> Houndour.txt
cat newpages.txt | egrep -i 'Huntail' >> Huntail.txt
cat newpages.txt | egrep -i 'Hydreigon' >> Hydreigon.txt
cat newpages.txt | egrep -i 'Hypno\b' >> Hypno.txt

Happiny=`stat --print=%s Happiny.txt`
Hariyama=`stat --print=%s Hariyama.txt`
Haunter=`stat --print=%s Haunter.txt`
Haxorus=`stat --print=%s Haxorus.txt`
Heatmor=`stat --print=%s Heatmor.txt`
Heatran=`stat --print=%s Heatran.txt`
Heracross=`stat --print=%s Heracross.txt`
Herdier=`stat --print=%s Herdier.txt`
Hippopotas=`stat --print=%s Hippopotas.txt`
Hippowdon=`stat --print=%s Hippowdon.txt`
Hitmonchan=`stat --print=%s Hitmonchan.txt`
Hitmonlee=`stat --print=%s Hitmonlee.txt`
Hitmontop=`stat --print=%s Hitmontop.txt`
HoOh=`stat --print=%s Ho-Oh.txt`
Honchkrow=`stat --print=%s Honchkrow.txt`
Hoothoot=`stat --print=%s Hoothoot.txt`
Hoppip=`stat --print=%s Hoppip.txt`
Horsea=`stat --print=%s Horsea.txt`
Houndoom=`stat --print=%s Houndoom.txt`
Houndour=`stat --print=%s Houndour.txt`
Huntail=`stat --print=%s Huntail.txt`
Hydreigon=`stat --print=%s Hydreigon.txt`
Hypno=`stat --print=%s Hypno.txt`

if [ $Happiny -ne 0 ];
then
   export CATFILE="Happiny.txt"
   export CATNAME="Happiny"
   ./catscripts/Categorize.sh
fi

if [ $Hariyama -ne 0 ];
then
   export CATFILE="Hariyama.txt"
   export CATNAME="Hariyama"
   ./catscripts/Categorize.sh
fi

if [ $Haunter -ne 0 ];
then
   export CATFILE="Haunter.txt"
   export CATNAME="Haunter"
   ./catscripts/Categorize.sh
fi

if [ $Haxorus -ne 0 ];
then
   export CATFILE="Haxorus.txt"
   export CATNAME="Haxorus"
   ./catscripts/Categorize.sh
fi

if [ $Heatmor -ne 0 ];
then
   export CATFILE="Heatmor.txt"
   export CATNAME="Heatmor"
   ./catscripts/Categorize.sh
fi

if [ $Heatran -ne 0 ];
then
   export CATFILE="Heatran.txt"
   export CATNAME="Heatran"
   ./catscripts/Categorize.sh
fi

if [ $Heracross -ne 0 ];
then
   export CATFILE="Heracross.txt"
   export CATNAME="Heracross"
   ./catscripts/Categorize.sh
fi

if [ $Herdier -ne 0 ];
then
   export CATFILE="Herdier.txt"
   export CATNAME="Herdier"
   ./catscripts/Categorize.sh
fi

if [ $Hippopotas -ne 0 ];
then
   export CATFILE="Hippopotas.txt"
   export CATNAME="Hippopotas"
   ./catscripts/Categorize.sh
fi

if [ $Hippowdon -ne 0 ];
then
   export CATFILE="Hippowdon.txt"
   export CATNAME="Hippowdon"
   ./catscripts/Categorize.sh
fi

if [ $Hitmonchan -ne 0 ];
then
   export CATFILE="Hitmonchan.txt"
   export CATNAME="Hitmonchan"
   ./catscripts/Categorize.sh
fi

if [ $Hitmonlee -ne 0 ];
then
   export CATFILE="Hitmonlee.txt"
   export CATNAME="Hitmonlee"
   ./catscripts/Categorize.sh
fi

if [ $Hitmontop -ne 0 ];
then
   export CATFILE="Hitmontop.txt"
   export CATNAME="Hitmontop"
   ./catscripts/Categorize.sh
fi

if [ $HoOh -ne 0 ];
then
   export CATFILE="Ho-Oh.txt"
   export CATNAME="Ho-Oh"
   ./catscripts/Categorize.sh
fi

if [ $Honchkrow -ne 0 ];
then
   export CATFILE="Honchkrow.txt"
   export CATNAME="Honchkrow"
   ./catscripts/Categorize.sh
fi

if [ $Hoothoot -ne 0 ];
then
   export CATFILE="Hoothoot.txt"
   export CATNAME="Hoothoot"
   ./catscripts/Categorize.sh
fi

if [ $Hoppip -ne 0 ];
then
   export CATFILE="Hoppip.txt"
   export CATNAME="Hoppip"
   ./catscripts/Categorize.sh
fi

if [ $Horsea -ne 0 ];
then
   export CATFILE="Horsea.txt"
   export CATNAME="Horsea"
   ./catscripts/Categorize.sh
fi

if [ $Houndoom -ne 0 ];
then
   export CATFILE="Houndoom.txt"
   export CATNAME="Houndoom"
   ./catscripts/Categorize.sh
fi

if [ $Houndour -ne 0 ];
then
   export CATFILE="Houndour.txt"
   export CATNAME="Houndour"
   ./catscripts/Categorize.sh
fi

if [ $Huntail -ne 0 ];
then
   export CATFILE="Huntail.txt"
   export CATNAME="Huntail"
   ./catscripts/Categorize.sh
fi

if [ $Hydreigon -ne 0 ];
then
   export CATFILE="Hydreigon.txt"
   export CATNAME="Hydreigon"
   ./catscripts/Categorize.sh
fi

if [ $Hypno -ne 0 ];
then
   export CATFILE="Hypno.txt"
   export CATNAME="Hypno"
   ./catscripts/Categorize.sh
fi


rm Happiny.txt
rm Hariyama.txt
rm Haunter.txt
rm Haxorus.txt
rm Heatmor.txt
rm Heatran.txt
rm Heracross.txt
rm Herdier.txt
rm Hippopotas.txt
rm Hippowdon.txt
rm Hitmonchan.txt
rm Hitmonlee.txt
rm Hitmontop.txt
rm Ho-Oh.txt
rm Honchkrow.txt
rm Hoothoot.txt
rm Hoppip.txt
rm Horsea.txt
rm Houndoom.txt
rm Houndour.txt
rm Huntail.txt
rm Hydreigon.txt
rm Hypno.txt
