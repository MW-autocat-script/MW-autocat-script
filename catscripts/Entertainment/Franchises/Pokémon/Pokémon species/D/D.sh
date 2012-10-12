#!/bin/bash 

cat newpages.txt | egrep -i 'Darkrai' >>  Darkrai.txt
cat newpages.txt | egrep -i 'Darmanitan' >>  Darmanitan.txt
cat newpages.txt | egrep -i 'Darumaka' >>  Darumaka.txt
cat newpages.txt | egrep -i 'Deerling' >>  Deerling.txt
cat newpages.txt | egrep -i 'Deino' >>  Deino.txt
cat newpages.txt | egrep -i 'Delcatty' >>  Delcatty.txt
cat newpages.txt | egrep -i 'Delibird' >>  Delibird.txt
cat newpages.txt | egrep -i 'Deoxys' >>  Deoxys.txt
cat newpages.txt | egrep -i 'Dewgong' >>  Dewgong.txt
cat newpages.txt | egrep -i 'Dewott' >>  Dewott.txt
cat newpages.txt | egrep -i 'Dialga' >>  Dialga.txt
cat newpages.txt | egrep -i 'Diglett' >>  Diglett.txt
cat newpages.txt | egrep -i '(find|catch|evolve|level|stats) (Ditto|Dotto)|(Ditto|Dotto) (find|catch|evolve|level|stats|at)' >>  Ditto.txt
cat newpages.txt | egrep -i 'Dodrio' >>  Dodrio.txt
cat newpages.txt | egrep -i 'Doduo' >>  Doduo.txt
cat newpages.txt | egrep -i 'Donphan' >>  Donphan.txt
cat newpages.txt | egrep -i 'Dragonair' >>  Dragonair.txt
cat newpages.txt | egrep -i 'Dragonite' >>  Dragonite.txt
cat newpages.txt | egrep -i 'Drapion' >>  Drapion.txt
cat newpages.txt | egrep -i 'Dratini' >>  Dratini.txt
cat newpages.txt | egrep -i 'Drilbur' >>  Drilbur.txt
cat newpages.txt | egrep -i 'Drifblim' >>  Drifblim.txt
cat newpages.txt | egrep -i 'Drifloon' >>  Drifloon.txt
cat newpages.txt | egrep -i 'Drowzee' >>  Drowzee.txt
cat newpages.txt | egrep -i 'Druddigon' >>  Druddigon.txt
cat newpages.txt | egrep -i 'Ducklett' >>  Ducklett.txt
cat newpages.txt | egrep -i 'Dugtrio' >>  Dugtrio.txt
cat newpages.txt | egrep -i 'Dunsparce' >>  Dunsparce.txt
cat newpages.txt | egrep -i 'Duosion' >>  Duosion.txt
cat newpages.txt | egrep -i 'Durant' >>  Durant.txt
cat newpages.txt | egrep -i 'Dusclops' >>  Dusclops.txt
cat newpages.txt | egrep -i 'Dusknoir' >>  Dusknoir.txt
cat newpages.txt | egrep -i 'Duskull' >>  Duskull.txt
cat newpages.txt | egrep -i 'Dustox' >>  Dustox.txt
cat newpages.txt | egrep -i 'Dwebble' >>  Dwebble.txt

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
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDarkrai.sh
fi

if [ $Darmanitan -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDarmanitan.sh
fi

if [ $Darumaka -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDarumaka.sh
fi

if [ $Deerling -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDeerling.sh
fi

if [ $Deino -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDeino.sh
fi

if [ $Delcatty -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDelcatty.sh
fi

if [ $Delibird -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDelibird.sh
fi

if [ $Deoxys -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDeoxys.sh
fi

if [ $Dewgong -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDewgong.sh
fi

if [ $Dewott -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDewott.sh
fi

if [ $Dialga -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDialga.sh
fi

if [ $Diglett -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDiglett.sh
fi

if [ $Ditto -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDitto.sh
fi

if [ $Dodrio -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDodrio.sh
fi

if [ $Doduo -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDoduo.sh
fi

if [ $Donphan -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDonphan.sh
fi

if [ $Dragonair -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDragonair.sh
fi

if [ $Dragonite -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDragonite.sh
fi

if [ $Drapion -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDrapion.sh
fi

if [ $Dratini -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDratini.sh
fi

if [ $Drilbur -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDrilbur.sh
fi

if [ $Drifblim -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDrifblim.sh
fi

if [ $Drifloon -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDrifloon.sh
fi

if [ $Drowzee -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDrowzee.sh
fi

if [ $Druddigon -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDruddigon.sh
fi

if [ $Ducklett -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDucklett.sh
fi

if [ $Dugtrio -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDugtrio.sh
fi

if [ $Dunsparce -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDunsparce.sh
fi

if [ $Duosion -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDuosion.sh
fi

if [ $Durant -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDurant.sh
fi

if [ $Dusclops -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDusclops.sh
fi

if [ $Dusknoir -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDusknoir
fi

if [ $Duskull -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDuskull.sh
fi

if [ $Dustox -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDustox.sh
fi

if [ $Dwebble -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/D/catDwebble.sh
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