#!/bin/bash
cat newpages.txt | egrep -i 'Taillow' >> Taillow.txt
cat newpages.txt | egrep -i 'Tangela' >> Tangela.txt
cat newpages.txt | egrep -i 'Tangrowth' >> Tangrowth.txt
cat newpages.txt | egrep -i 'Tauros' >> Tauros.txt
cat newpages.txt | egrep -i 'Teddiursa' >> Teddiursa.txt
cat newpages.txt | egrep -i 'Tentacool' >> Tentacool.txt
cat newpages.txt | egrep -i 'Tentacruel' >> Tentacruel.txt
cat newpages.txt | egrep -i 'Tepig' >> Tepig.txt
cat newpages.txt | egrep -i 'Throh' >> Throh.txt
cat newpages.txt | egrep -i 'Thundurus' >> Thundurus.txt
cat newpages.txt | egrep -i 'Timburr' >> Timburr.txt
cat newpages.txt | egrep -i 'Tirtouga' >> Tirtouga.txt
cat newpages.txt | egrep -i 'Togekiss' >> Togekiss.txt
cat newpages.txt | egrep -i 'Togepi' >> Togepi.txt
cat newpages.txt | egrep -i 'Togetic' >> Togetic.txt
cat newpages.txt | egrep -i 'Torchic' >> Torchic.txt
cat newpages.txt | egrep -i 'Torkoal' >> Torkoal.txt
cat newpages.txt | egrep -i 'Tornadus' >> Tornadus.txt
cat newpages.txt | egrep -i 'Torterra' >> Torterra.txt
cat newpages.txt | egrep -i 'Totodile' >> Totodile.txt
cat newpages.txt | egrep -i 'Toxicroak' >> Toxicroak.txt
cat newpages.txt | egrep -i 'Tranquill' >> Tranquill.txt
cat newpages.txt | egrep -i 'Trapinch' >> Trapinch.txt
cat newpages.txt | egrep -i 'Treecko' >> Treecko.txt
cat newpages.txt | egrep -i 'Tropius' >> Tropius.txt
cat newpages.txt | egrep -i 'Trubbish' >> Trubbish.txt
cat newpages.txt | egrep -i 'Turtwig' >> Turtwig.txt
cat newpages.txt | egrep -i 'Tympole' >> Tympole.txt
cat newpages.txt | egrep -i 'Tynamo' >> Tynamo.txt
cat newpages.txt | egrep -i 'Typhlosion' >> Typhlosion.txt
cat newpages.txt | egrep -i 'Tyranitar' >> Tyranitar.txt
cat newpages.txt | egrep -i 'Tyrogue' >> Tyrogue.txt

Taillow=`stat --print=%s Taillow.txt`
Tangela=`stat --print=%s Tangela.txt`
Tangrowth=`stat --print=%s Tangrowth.txt`
Tauros=`stat --print=%s Tauros.txt`
Teddiursa=`stat --print=%s Teddiursa.txt`
Tentacool=`stat --print=%s Tentacool.txt`
Tentacruel=`stat --print=%s Tentacruel.txt`
Tepig=`stat --print=%s Tepig.txt`
Throh=`stat --print=%s Throh.txt`
Thundurus=`stat --print=%s Thundurus.txt`
Timburr=`stat --print=%s Timburr.txt`
Tirtouga=`stat --print=%s Tirtouga.txt`
Togekiss=`stat --print=%s Togekiss.txt`
Togepi=`stat --print=%s Togepi.txt`
Togetic=`stat --print=%s Togetic.txt`
Torchic=`stat --print=%s Torchic.txt`
Torkoal=`stat --print=%s Torkoal.txt`
Tornadus=`stat --print=%s Tornadus.txt`
Torterra=`stat --print=%s Torterra.txt`
Totodile=`stat --print=%s Totodile.txt`
Toxicroak=`stat --print=%s Toxicroak.txt`
Tranquill=`stat --print=%s Tranquill.txt`
Trapinch=`stat --print=%s Trapinch.txt`
Treecko=`stat --print=%s Treecko.txt`
Tropius=`stat --print=%s Tropius.txt`
Trubbish=`stat --print=%s Trubbish.txt`
Turtwig=`stat --print=%s Turtwig.txt`
Tympole=`stat --print=%s Tympole.txt`
Tynamo=`stat --print=%s Tynamo.txt`
Typhlosion=`stat --print=%s Typhlosion.txt`
Tyranitar=`stat --print=%s Tyranitar.txt`
Tyrogue=`stat --print=%s Tyrogue.txt`

if [ $Taillow -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTaillow.sh
fi

if [ $Tangela -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTangela.sh
fi

if [ $Tangrowth -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTangrowth.sh
fi

if [ $Tauros -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTauros.sh
fi

if [ $Teddiursa -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTeddiursa.sh
fi

if [ $Tentacool -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTentacool.sh
fi

if [ $Tentacruel -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTentacruel.sh
fi

if [ $Tepig -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTepig.sh
fi

if [ $Throh -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catThroh.sh
fi

if [ $Thundurus -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catThundurus.sh
fi

if [ $Timburr -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTimburr.sh
fi

if [ $Tirtouga -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTirtouga.sh
fi

if [ $Togekiss -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTogekiss.sh
fi

if [ $Togepi -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTogepi.sh
fi

if [ $Togetic -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTogetic.sh
fi

if [ $Torchic -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTorchic.sh
fi

if [ $Torkoal -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTorkoal.sh
fi

if [ $Tornadus -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTornadus.sh
fi

if [ $Torterra -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTorterra.sh
fi

if [ $Totodile -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTotodile.sh
fi

if [ $Toxicroak -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catToxicroak.sh
fi

if [ $Tranquill -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTranquill.sh
fi

if [ $Trapinch -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTrapinch.sh
fi

if [ $Treecko -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTreecko.sh
fi

if [ $Tropius -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTropius.sh
fi

if [ $Trubbish -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTrubbish.sh
fi

if [ $Turtwig -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTurtwig.sh
fi

if [ $Tympole -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTympole.sh
fi

if [ $Tynamo -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTynamo.sh
fi

if [ $Typhlosion -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTyphlosion.sh
fi

if [ $Tyranitar -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTyranitar.sh
fi

if [ $Tyrogue -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/T/catTyrogue.sh
fi


rm Taillow.txt
rm Tangela.txt
rm Tangrowth.txt
rm Tauros.txt
rm Teddiursa.txt
rm Tentacool.txt
rm Tentacruel.txt
rm Tepig.txt
rm Throh.txt
rm Thundurus.txt
rm Timburr.txt
rm Tirtouga.txt
rm Togekiss.txt
rm Togepi.txt
rm Togetic.txt
rm Torchic.txt
rm Torkoal.txt
rm Tornadus.txt
rm Torterra.txt
rm Totodile.txt
rm Toxicroak.txt
rm Tranquill.txt
rm Trapinch.txt
rm Treecko.txt
rm Tropius.txt
rm Trubbish.txt
rm Turtwig.txt
rm Tympole.txt
rm Tynamo.txt
rm Typhlosion.txt
rm Tyranitar.txt
rm Tyrogue.txt
