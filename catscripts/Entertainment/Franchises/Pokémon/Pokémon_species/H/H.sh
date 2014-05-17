#!/bin/bash
egrep -i 'Happiny' newpages.txt >> Happiny.txt
egrep -i 'Hariyama' newpages.txt >> Hariyama.txt
egrep -i 'Haunter' newpages.txt >> Haunter.txt
egrep -i 'Haxorus' newpages.txt >> Haxorus.txt
egrep -i 'Heatmor' newpages.txt >> Heatmor.txt
egrep -i 'Heatran' newpages.txt >> Heatran.txt
egrep -i 'Heracross' newpages.txt >> Heracross.txt
egrep -i 'Herdier' newpages.txt >> Herdier.txt
egrep -i 'Hippopotas' newpages.txt >> Hippopotas.txt
egrep -i 'Hippowdon' newpages.txt >> Hippowdon.txt
egrep -i 'Hitmonchan' newpages.txt >> Hitmonchan.txt
egrep -i 'Hitmonlee' newpages.txt >> Hitmonlee.txt
egrep -i 'Hitmontop' newpages.txt >> Hitmontop.txt
egrep -i 'Ho-Oh' newpages.txt >> Ho-Oh.txt
egrep -i 'Honchkrow' newpages.txt >> Honchkrow.txt
egrep -i 'Hoothoot' newpages.txt >> Hoothoot.txt
egrep -i 'Hoppip' newpages.txt >> Hoppip.txt
egrep -i 'Horsea' newpages.txt >> Horsea.txt
egrep -i 'Houndoom' newpages.txt >> Houndoom.txt
egrep -i 'Houndour' newpages.txt >> Houndour.txt
egrep -i 'Huntail' newpages.txt >> Huntail.txt
egrep -i 'Hydreigon' newpages.txt >> Hydreigon.txt
egrep -i 'Hypno\b' newpages.txt >> Hypno.txt

Happiny=$(stat --print=%s Happiny.txt)
Hariyama=$(stat --print=%s Hariyama.txt)
Haunter=$(stat --print=%s Haunter.txt)
Haxorus=$(stat --print=%s Haxorus.txt)
Heatmor=$(stat --print=%s Heatmor.txt)
Heatran=$(stat --print=%s Heatran.txt)
Heracross=$(stat --print=%s Heracross.txt)
Herdier=$(stat --print=%s Herdier.txt)
Hippopotas=$(stat --print=%s Hippopotas.txt)
Hippowdon=$(stat --print=%s Hippowdon.txt)
Hitmonchan=$(stat --print=%s Hitmonchan.txt)
Hitmonlee=$(stat --print=%s Hitmonlee.txt)
Hitmontop=$(stat --print=%s Hitmontop.txt)
HoOh=$(stat --print=%s Ho-Oh.txt)
Honchkrow=$(stat --print=%s Honchkrow.txt)
Hoothoot=$(stat --print=%s Hoothoot.txt)
Hoppip=$(stat --print=%s Hoppip.txt)
Horsea=$(stat --print=%s Horsea.txt)
Houndoom=$(stat --print=%s Houndoom.txt)
Houndour=$(stat --print=%s Houndour.txt)
Huntail=$(stat --print=%s Huntail.txt)
Hydreigon=$(stat --print=%s Hydreigon.txt)
Hypno=$(stat --print=%s Hypno.txt)

if [ $Happiny -ne 0 ];
then
   export CATFILE="Happiny.txt"
   export CATNAME="Happiny"
   $CATEGORIZE
fi

if [ $Hariyama -ne 0 ];
then
   export CATFILE="Hariyama.txt"
   export CATNAME="Hariyama"
   $CATEGORIZE
fi

if [ $Haunter -ne 0 ];
then
   export CATFILE="Haunter.txt"
   export CATNAME="Haunter"
   $CATEGORIZE
fi

if [ $Haxorus -ne 0 ];
then
   export CATFILE="Haxorus.txt"
   export CATNAME="Haxorus"
   $CATEGORIZE
fi

if [ $Heatmor -ne 0 ];
then
   export CATFILE="Heatmor.txt"
   export CATNAME="Heatmor"
   $CATEGORIZE
fi

if [ $Heatran -ne 0 ];
then
   export CATFILE="Heatran.txt"
   export CATNAME="Heatran"
   $CATEGORIZE
fi

if [ $Heracross -ne 0 ];
then
   export CATFILE="Heracross.txt"
   export CATNAME="Heracross"
   $CATEGORIZE
fi

if [ $Herdier -ne 0 ];
then
   export CATFILE="Herdier.txt"
   export CATNAME="Herdier"
   $CATEGORIZE
fi

if [ $Hippopotas -ne 0 ];
then
   export CATFILE="Hippopotas.txt"
   export CATNAME="Hippopotas"
   $CATEGORIZE
fi

if [ $Hippowdon -ne 0 ];
then
   export CATFILE="Hippowdon.txt"
   export CATNAME="Hippowdon"
   $CATEGORIZE
fi

if [ $Hitmonchan -ne 0 ];
then
   export CATFILE="Hitmonchan.txt"
   export CATNAME="Hitmonchan"
   $CATEGORIZE
fi

if [ $Hitmonlee -ne 0 ];
then
   export CATFILE="Hitmonlee.txt"
   export CATNAME="Hitmonlee"
   $CATEGORIZE
fi

if [ $Hitmontop -ne 0 ];
then
   export CATFILE="Hitmontop.txt"
   export CATNAME="Hitmontop"
   $CATEGORIZE
fi

if [ $HoOh -ne 0 ];
then
   export CATFILE="Ho-Oh.txt"
   export CATNAME="Ho-Oh"
   $CATEGORIZE
fi

if [ $Honchkrow -ne 0 ];
then
   export CATFILE="Honchkrow.txt"
   export CATNAME="Honchkrow"
   $CATEGORIZE
fi

if [ $Hoothoot -ne 0 ];
then
   export CATFILE="Hoothoot.txt"
   export CATNAME="Hoothoot"
   $CATEGORIZE
fi

if [ $Hoppip -ne 0 ];
then
   export CATFILE="Hoppip.txt"
   export CATNAME="Hoppip"
   $CATEGORIZE
fi

if [ $Horsea -ne 0 ];
then
   export CATFILE="Horsea.txt"
   export CATNAME="Horsea"
   $CATEGORIZE
fi

if [ $Houndoom -ne 0 ];
then
   export CATFILE="Houndoom.txt"
   export CATNAME="Houndoom"
   $CATEGORIZE
fi

if [ $Houndour -ne 0 ];
then
   export CATFILE="Houndour.txt"
   export CATNAME="Houndour"
   $CATEGORIZE
fi

if [ $Huntail -ne 0 ];
then
   export CATFILE="Huntail.txt"
   export CATNAME="Huntail"
   $CATEGORIZE
fi

if [ $Hydreigon -ne 0 ];
then
   export CATFILE="Hydreigon.txt"
   export CATNAME="Hydreigon"
   $CATEGORIZE
fi

if [ $Hypno -ne 0 ];
then
   export CATFILE="Hypno.txt"
   export CATNAME="Hypno"
   $CATEGORIZE
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
