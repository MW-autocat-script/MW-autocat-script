#!/bin/bash 
#Pokemon species by name, starting with the letter D
egrep -i 'Darkrai' newpages.txt >>   Darkrai.txt
egrep -i 'Darmanitan' newpages.txt >>   Darmanitan.txt
egrep -i 'Darumaka' newpages.txt >>   Darumaka.txt
egrep -i 'Deerling' newpages.txt >>   Deerling.txt
egrep -i 'Deino(|s)\b' newpages.txt >>   Deino.txt
egrep -i 'Delcatty' newpages.txt >>   Delcatty.txt
egrep -i 'Delibird' newpages.txt >>   Delibird.txt
egrep -i 'Deoxys' newpages.txt >>   Deoxys.txt
egrep -i 'Dewgong' newpages.txt >>   Dewgong.txt
egrep -i 'Dewott' newpages.txt >>   Dewott.txt
egrep -i 'Dialga' newpages.txt >>   Dialga.txt
egrep -i 'Diglett' newpages.txt >>   Diglett.txt
egrep -i '(find|catch|evolve|level|stats) (Ditto|Dotto)|(Ditto|Dotto) (find|catch|evolve|level|stats|at)' newpages.txt >>   Ditto.txt
egrep -i 'Dodrio' newpages.txt >>   Dodrio.txt
egrep -i 'Doduo' newpages.txt >>   Doduo.txt
egrep -i 'Donphan' newpages.txt >>   Donphan.txt
egrep -i 'Dragonair' newpages.txt >>   Dragonair.txt
egrep -i 'Dragonite' newpages.txt >>   Dragonite.txt
egrep -i 'Drapion' newpages.txt >>   Drapion.txt
egrep -i 'Dratini' newpages.txt >>   Dratini.txt
egrep -i 'Drilbur' newpages.txt >>   Drilbur.txt
egrep -i 'Drifblim' newpages.txt >>   Drifblim.txt
egrep -i 'Drifloon' newpages.txt >>   Drifloon.txt
egrep -i 'Drowzee' newpages.txt >>   Drowzee.txt
egrep -i 'Druddigon' newpages.txt >>   Druddigon.txt
egrep -i 'Ducklett' newpages.txt >>   Ducklett.txt
egrep -i 'Dugtrio' newpages.txt >>   Dugtrio.txt
egrep -i 'Dunsparce' newpages.txt >>   Dunsparce.txt
egrep -i 'Duosion' newpages.txt >>   Duosion.txt
egrep -i 'Durant' newpages.txt >>   Durant.txt
egrep -i 'Dusclops' newpages.txt >>   Dusclops.txt
egrep -i 'Dusknoir' newpages.txt >>   Dusknoir.txt
egrep -i 'Duskull' newpages.txt >>   Duskull.txt
egrep -i 'Dustox' newpages.txt >>   Dustox.txt
egrep -i 'Dwebble' newpages.txt >>   Dwebble.txt

Darkrai=`stat --print=%s Darkrai.txt`
Darmanitan=`stat --print=%s Darmanitan.txt`
Darumaka=`stat --print=%s Darumaka.txt`
Deerling=`stat --print=%s Deerling.txt`
Deino=`stat --print=%s Deino.txt`
Delcatty=`stat --print=%s Delcatty.txt`
Delibird=`stat --print=%s Delibird.txt`
Deoxys=`stat --print=%s Deoxys.txt`
Dewgong=`stat --print=%s Dewgong.txt`
Dewott=`stat --print=%s Dewott.txt`
Dialga=`stat --print=%s Dialga.txt`
Diglett=`stat --print=%s Diglett.txt`
Ditto=`stat --print=%s Ditto.txt`
Dodrio=`stat --print=%s Dodrio.txt`
Doduo=`stat --print=%s Doduo.txt`
Donphan=`stat --print=%s Donphan.txt`
Dragonair=`stat --print=%s Dragonair.txt`
Dragonite=`stat --print=%s Dragonite.txt`
Drapion=`stat --print=%s Drapion.txt`
Dratini=`stat --print=%s Dratini.txt`
Drilbur=`stat --print=%s Drilbur.txt`
Drifblim=`stat --print=%s Drifblim.txt`
Drifloon=`stat --print=%s Drifloon.txt`
Drowzee=`stat --print=%s Drowzee.txt`
Druddigon=`stat --print=%s Druddigon.txt`
Ducklett=`stat --print=%s Ducklett.txt`
Dugtrio=`stat --print=%s Dugtrio.txt`
Dunsparce=`stat --print=%s Dunsparce.txt`
Duosion=`stat --print=%s Duosion.txt`
Durant=`stat --print=%s Durant.txt`
Dusclops=`stat --print=%s Dusclops.txt`
Dusknoir=`stat --print=%s Dusknoir.txt`
Duskull=`stat --print=%s Duskull.txt`
Dustox=`stat --print=%s Dustox.txt`
Dwebble=`stat --print=%s Dwebble.txt`


if [ $Darkrai -ne 0 ];
then
   export CATFILE="Darkrai.txt"
   export CATNAME=""
   $CATEGORIZE
fi

if [ $Darmanitan -ne 0 ];
then
   export CATFILE="Darmanitan.txt"
   export CATNAME="Darmanitan"
   $CATEGORIZE
fi

if [ $Darumaka -ne 0 ];
then
   export CATFILE="Darumaka.txt"
   export CATNAME="Darumaka"
   $CATEGORIZE
fi

if [ $Deerling -ne 0 ];
then
   export CATFILE="Deerling.txt"
   export CATNAME="Deerling"
   $CATEGORIZE
fi

if [ $Deino -ne 0 ];
then
   export CATFILE="Deino.txt"
   export CATNAME="Deino"
   $CATEGORIZE
fi

if [ $Delcatty -ne 0 ];
then
   export CATFILE="Delcatty.txt"
   export CATNAME="Delcatty"
   $CATEGORIZE
fi

if [ $Delibird -ne 0 ];
then
   export CATFILE="Delibird.txt"
   export CATNAME="Delibird"
   $CATEGORIZE
fi

if [ $Deoxys -ne 0 ];
then
   export CATFILE="Deoxys.txt"
   export CATNAME="Deoxys"
   $CATEGORIZE
fi

if [ $Dewgong -ne 0 ];
then
   export CATFILE="Dewgong.txt"
   export CATNAME="Dewgong"
   $CATEGORIZE
fi

if [ $Dewott -ne 0 ];
then
   export CATFILE="Dewott.txt"
   export CATNAME="Dewott"
   $CATEGORIZE
fi

if [ $Dialga -ne 0 ];
then
   export CATFILE="Dialga.txt"
   export CATNAME="Dialga"
   $CATEGORIZE
fi

if [ $Diglett -ne 0 ];
then
   export CATFILE="Diglett.txt"
   export CATNAME="Diglett"
   $CATEGORIZE
fi

if [ $Ditto -ne 0 ];
then
   export CATFILE="Ditto.txt"
   export CATNAME="Ditto (Pokémon)"
   $CATEGORIZE
fi

if [ $Dodrio -ne 0 ];
then
   export CATFILE="Dodrio.txt"
   export CATNAME="Dodrio"
   $CATEGORIZE
fi

if [ $Doduo -ne 0 ];
then
   export CATFILE="Doduo.txt"
   export CATNAME="Doduo"
   $CATEGORIZE
fi

if [ $Donphan -ne 0 ];
then
   export CATFILE="Donphan.txt"
   export CATNAME="Donphan"
   $CATEGORIZE
fi

if [ $Dragonair -ne 0 ];
then
   export CATFILE="Dragonair.txt"
   export CATNAME="Dragonair"
   $CATEGORIZE
fi

if [ $Dragonite -ne 0 ];
then
   export CATFILE="Dragonite.txt"
   export CATNAME="Dragonite"
   $CATEGORIZE
fi

if [ $Drapion -ne 0 ];
then
   export CATFILE="Drapion.txt"
   export CATNAME="Drapion"
   $CATEGORIZE
fi

if [ $Dratini -ne 0 ];
then
   export CATFILE="Dratini.txt"
   export CATNAME="Dratini"
   $CATEGORIZE
fi

if [ $Drilbur -ne 0 ];
then
   export CATFILE="Drilbur.txt"
   export CATNAME="Drilbur"
   $CATEGORIZE
fi

if [ $Drifblim -ne 0 ];
then
   export CATFILE="Drifblim.txt"
   export CATNAME="Drifblim"
   $CATEGORIZE
fi

if [ $Drifloon -ne 0 ];
then
   export CATFILE="Drifloon.txt"
   export CATNAME="Drifloon"
   $CATEGORIZE
fi

if [ $Drowzee -ne 0 ];
then
   export CATFILE="Drowzee.txt"
   export CATNAME="Drowzee"
   $CATEGORIZE
fi

if [ $Druddigon -ne 0 ];
then
   export CATFILE="Druddigon.txt"
   export CATNAME="Druddigon"
   $CATEGORIZE
fi

if [ $Ducklett -ne 0 ];
then
   export CATFILE="Ducklett.txt"
   export CATNAME="Ducklett"
   $CATEGORIZE
fi

if [ $Dugtrio -ne 0 ];
then
   export CATFILE="Dugtrio.txt"
   export CATNAME="Dugtrio"
   $CATEGORIZE
fi

if [ $Dunsparce -ne 0 ];
then
   export CATFILE="Dunsparce.txt"
   export CATNAME="Dunsparce"
   $CATEGORIZE
fi

if [ $Duosion -ne 0 ];
then
   export CATFILE="Duosion.txt"
   export CATNAME="Duosion"
   $CATEGORIZE
fi

if [ $Durant -ne 0 ];
then
   export CATFILE="Durant.txt"
   export CATNAME="Durant"
   $CATEGORIZE
fi

if [ $Dusclops -ne 0 ];
then
   export CATFILE="Dusclops.txt"
   export CATNAME="Dusclops"
   $CATEGORIZE
fi

if [ $Dusknoir -ne 0 ];
then
   export CATFILE="Dusknoir.txt"
   export CATNAME="Dusknoir"
   $CATEGORIZE
fi

if [ $Duskull -ne 0 ];
then
   export CATFILE="Duskull.txt"
   export CATNAME="Duskull"
   $CATEGORIZE
fi

if [ $Dustox -ne 0 ];
then
   export CATFILE="Dustox.txt"
   export CATNAME="Dustox"
   $CATEGORIZE
fi

if [ $Dwebble -ne 0 ];
then
   export CATFILE="Dwebble.txt"
   export CATNAME="Dwebble"
   $CATEGORIZE
fi

rm Darkrai.txt
rm Darmanitan.txt
rm Darumaka.txt
rm Deerling.txt
rm Deino.txt
rm Delcatty.txt
rm Delibird.txt
rm Deoxys.txt
rm Dewgong.txt
rm Dewott.txt
rm Dialga.txt
rm Diglett.txt
rm Ditto.txt
rm Dodrio.txt
rm Doduo.txt
rm Donphan.txt
rm Dragonair.txt
rm Dragonite.txt
rm Drapion.txt
rm Dratini.txt
rm Drilbur.txt
rm Drifblim.txt
rm Drifloon.txt
rm Drowzee.txt
rm Druddigon.txt
rm Ducklett.txt
rm Dugtrio.txt
rm Dunsparce.txt
rm Duosion.txt
rm Durant.txt
rm Dusclops.txt
rm Dusknoir.txt
rm Duskull.txt
rm Dustox.txt
rm Dwebble.txt