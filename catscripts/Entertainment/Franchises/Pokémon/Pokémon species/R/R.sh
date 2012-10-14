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
  export CATFILE="Raichu.txt"
  export CATNAME="Raichu"
  ./catscripts/Categorize.sh
fi

if [ $Raikou -ne 0 ];
then
  export CATFILE="Raikou.txt"
  export CATNAME="Raikou"
  ./catscripts/Categorize.sh
fi

if [ $Ralts -ne 0 ];
then
  export CATFILE="Ralts.txt"
  export CATNAME="Ralts"
  ./catscripts/Categorize.sh
fi

if [ $Rampardos -ne 0 ];
then
  export CATFILE="Rampardos.txt"
  export CATNAME="Rampardos"
  ./catscripts/Categorize.sh
fi

if [ $Rapidash -ne 0 ];
then
  export CATFILE="Rapidash.txt"
  export CATNAME="Rapidash"
  ./catscripts/Categorize.sh
fi

if [ $Raticate -ne 0 ];
then
  export CATFILE="Raticate.txt"
  export CATNAME="Raticate"
  ./catscripts/Categorize.sh
fi

if [ $Rattata -ne 0 ];
then
  export CATFILE="Rattata.txt"
  export CATNAME="Rattata"
  ./catscripts/Categorize.sh
fi

if [ $Rayquaza -ne 0 ];
then
  export CATFILE="Rayquaza.txt"
  export CATNAME="Rayquaza"
  ./catscripts/Categorize.sh
fi

if [ $Regice -ne 0 ];
then
  export CATFILE="Regice.txt"
  export CATNAME="Regice"
  ./catscripts/Categorize.sh
fi

if [ $Regigigas -ne 0 ];
then
  export CATFILE="Regigigas.txt"
  export CATNAME="Regigigas"
  ./catscripts/Categorize.sh
fi

if [ $Regirock -ne 0 ];
then
  export CATFILE="Regirock.txt"
  export CATNAME="Regirock"
  ./catscripts/Categorize.sh
fi

if [ $Registeel -ne 0 ];
then
  export CATFILE="Registeel.txt"
  export CATNAME="Registeel"
  ./catscripts/Categorize.sh
fi

if [ $Relicanth -ne 0 ];
then
  export CATFILE="Relicanth.txt"
  export CATNAME="Relicanth"
  ./catscripts/Categorize.sh
fi

if [ $Remoraid -ne 0 ];
then
  export CATFILE="Remoraid.txt"
  export CATNAME="Remoraid"
  ./catscripts/Categorize.sh
fi

if [ $Reshiram -ne 0 ];
then
  export CATFILE="Reshiram.txt"
  export CATNAME="Reshiram"
  ./catscripts/Categorize.sh
fi

if [ $Reuniclus -ne 0 ];
then
  export CATFILE="Reuniclus.txt"
  export CATNAME="Reuniclus"
  ./catscripts/Categorize.sh
fi

if [ $Rhydon -ne 0 ];
then
  export CATFILE="Rhydon.txt"
  export CATNAME="Rhydon"
  ./catscripts/Categorize.sh
fi

if [ $Rhyhorn -ne 0 ];
then
  export CATFILE="Rhyhorn.txt"
  export CATNAME="Rhyhorn"
  ./catscripts/Categorize.sh
fi

if [ $Rhyperior -ne 0 ];
then
  export CATFILE="Rhyperior.txt"
  export CATNAME="Rhyperior"
  ./catscripts/Categorize.sh
fi

if [ $Riolu -ne 0 ];
then
  export CATFILE="Riolu.txt"
  export CATNAME="Riolu"
  ./catscripts/Categorize.sh
fi

if [ $Roggenrola -ne 0 ];
then
  export CATFILE="Roggenrola.txt"
  export CATNAME="Roggenrola"
  ./catscripts/Categorize.sh
fi

if [ $Roselia -ne 0 ];
then
  export CATFILE="Roselia.txt"
  export CATNAME="Roselia"
  ./catscripts/Categorize.sh
fi

if [ $Roserade -ne 0 ];
then
  export CATFILE="Roserade.txt"
  export CATNAME="Roserade"
  ./catscripts/Categorize.sh
fi

if [ $Rotom -ne 0 ];
then
  export CATFILE="Rotom.txt"
  export CATNAME="Rotom"
  ./catscripts/Categorize.sh
fi

if [ $Rufflet -ne 0 ];
then
  export CATFILE="Rufflet.txt"
  export CATNAME="Rufflet"
  ./catscripts/Categorize.sh
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