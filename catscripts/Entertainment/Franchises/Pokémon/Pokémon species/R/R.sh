#!/bin/bash
cat newpages.txt | egrep -i 'Raichu' >> Raichu.txt
cat newpages.txt | egrep -i 'Raikou' >> Raikou.txt
cat newpages.txt | egrep -i 'Ralts' >> Ralts.txt
cat newpages.txt | egrep -i 'Rampardos' >> Rampardos.txt
cat newpages.txt | egrep -i 'Rapidash' >> Rapidash.txt
cat newpages.txt | egrep -i 'Raticate' >> Raticate.txt
cat newpages.txt | egrep -i 'Rattata' >> Rattata.txt
cat newpages.txt | egrep -i 'Rayquaza' >> Rayquaza.txt
cat newpages.txt | egrep -i 'Regice' >> Regice.txt
cat newpages.txt | egrep -i 'Regigigas' >> Regigigas.txt
cat newpages.txt | egrep -i 'Regirock' >> Regirock.txt
cat newpages.txt | egrep -i 'Registeel' >> Registeel.txt
cat newpages.txt | egrep -i 'Relicanth' >> Relicanth.txt
cat newpages.txt | egrep -i 'Remoraid' >> Remoraid.txt
cat newpages.txt | egrep -i 'Reshiram' >> Reshiram.txt
cat newpages.txt | egrep -i 'Reuniclus' >> Reuniclus.txt
cat newpages.txt | egrep -i 'Rhydon' >> Rhydon.txt
cat newpages.txt | egrep -i 'Rhyhorn' >> Rhyhorn.txt
cat newpages.txt | egrep -i 'Rhyperior' >> Rhyperior.txt
cat newpages.txt | egrep -i 'Riolu' >> Riolu.txt
cat newpages.txt | egrep -i 'Roggenrola' >> Roggenrola.txt
cat newpages.txt | egrep -i 'Roselia' >> Roselia.txt
cat newpages.txt | egrep -i 'Roserade' >> Roserade.txt
cat newpages.txt | egrep -i 'Rotom' >> Rotom.txt
cat newpages.txt | egrep -i 'Rufflet' >> Rufflet.txt

Raichu=`stat --print=%s Raichu.txt`
Raikou=`stat --print=%s Raikou.txt`
Ralts=`stat --print=%s Ralts.txt`
Rampardos=`stat --print=%s Rampardos.txt`
Rapidash=`stat --print=%s Rapidash.txt`
Raticate=`stat --print=%s Raticate.txt`
Rattata=`stat --print=%s Rattata.txt`
Rayquaza=`stat --print=%s Rayquaza.txt`
Regice=`stat --print=%s Regice.txt`
Regigigas=`stat --print=%s Regigigas.txt`
Regirock=`stat --print=%s Regirock.txt`
Registeel=`stat --print=%s Registeel.txt`
Relicanth=`stat --print=%s Relicanth.txt`
Remoraid=`stat --print=%s Remoraid.txt`
Reshiram=`stat --print=%s Reshiram.txt`
Reuniclus=`stat --print=%s Reuniclus.txt`
Rhydon=`stat --print=%s Rhydon.txt`
Rhyhorn=`stat --print=%s Rhyhorn.txt`
Rhyperior=`stat --print=%s Rhyperior.txt`
Riolu=`stat --print=%s Riolu.txt`
Roggenrola=`stat --print=%s Roggenrola.txt`
Roselia=`stat --print=%s Roselia.txt`
Roserade=`stat --print=%s Roserade.txt`
Rotom=`stat --print=%s Rotom.txt`
Rufflet=`stat --print=%s Rufflet.txt`

if [ $Raichu -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRaichu.sh
fi

if [ $Raikou -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRaikou.sh
fi

if [ $Ralts -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRalts.sh
fi

if [ $Rampardos -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRampardos.sh
fi

if [ $Rapidash -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRapidash.sh
fi

if [ $Raticate -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRaticate.sh
fi

if [ $Rattata -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRattata.sh
fi

if [ $Rayquaza -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRayquaza.sh
fi

if [ $Regice -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRegice.sh
fi

if [ $Regigigas -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRegigigas.sh
fi

if [ $Regirock -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRegirock.sh
fi

if [ $Registeel -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRegisteel.sh
fi

if [ $Relicanth -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRelicanth.sh
fi

if [ $Remoraid -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRemoraid.sh
fi

if [ $Reshiram -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catReshiram.sh
fi

if [ $Reuniclus -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catReuniclus.sh
fi

if [ $Rhydon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRhydon.sh
fi

if [ $Rhyhorn -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRhyhorn.sh
fi

if [ $Rhyperior -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRhyperior.sh
fi

if [ $Riolu -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRiolu.sh
fi

if [ $Roggenrola -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRoggenrola.sh
fi

if [ $Roselia -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRoselia.sh
fi

if [ $Roserade -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRoserade.sh
fi

if [ $Rotom -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRotom.sh
fi

if [ $Rufflet -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/R/catRufflet.sh
fi


rm Raichu.txt
rm Raikou.txt
rm Ralts.txt
rm Rampardos.txt
rm Rapidash.txt
rm Raticate.txt
rm Rattata.txt
rm Rayquaza.txt
rm Regice.txt
rm Regigigas.txt
rm Regirock.txt
rm Registeel.txt
rm Relicanth.txt
rm Remoraid.txt
rm Reshiram.txt
rm Reuniclus.txt
rm Rhydon.txt
rm Rhyhorn.txt
rm Rhyperior.txt
rm Riolu.txt
rm Roggenrola.txt
rm Roselia.txt
rm Roserade.txt
rm Rotom.txt
rm Rufflet.txt
