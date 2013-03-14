#!/bin/bash
egrep -i 'Taillow' newpages.txt >> Taillow.txt
egrep -i 'Tangela' newpages.txt >> Tangela.txt
egrep -i 'Tangrowth' newpages.txt >> Tangrowth.txt
egrep -i 'Tauros' newpages.txt >> Tauros.txt
egrep -i 'Teddiursa' newpages.txt >> Teddiursa.txt
egrep -i 'Tentacool' newpages.txt >> Tentacool.txt
egrep -i 'Tentacruel' newpages.txt >> Tentacruel.txt
egrep -i 'Tepig' newpages.txt >> Tepig.txt
egrep -i 'Throh' newpages.txt >> Throh.txt
egrep -i 'Thundurus' newpages.txt >> Thundurus.txt
egrep -i 'Timburr' newpages.txt >> Timburr.txt
egrep -i 'Tirtouga' newpages.txt >> Tirtouga.txt
egrep -i 'Togekiss' newpages.txt >> Togekiss.txt
egrep -i 'Togepi' newpages.txt >> Togepi.txt
egrep -i 'Togetic' newpages.txt >> Togetic.txt
egrep -i 'Torchic' newpages.txt >> Torchic.txt
egrep -i 'Torkoal' newpages.txt >> Torkoal.txt
egrep -i 'Tornadus' newpages.txt >> Tornadus.txt
egrep -i 'Torterra' newpages.txt >> Torterra.txt
egrep -i 'Totodile' newpages.txt >> Totodile.txt
egrep -i 'Toxicroak' newpages.txt >> Toxicroak.txt
egrep -i 'Tranquill' newpages.txt >> Tranquill.txt
egrep -i 'Trapinch' newpages.txt >> Trapinch.txt
egrep -i 'Treecko' newpages.txt >> Treecko.txt
egrep -i 'Tropius' newpages.txt >> Tropius.txt
egrep -i 'Trubbish' newpages.txt >> Trubbish.txt
egrep -i 'Turtwig' newpages.txt >> Turtwig.txt
egrep -i 'Tympole' newpages.txt >> Tympole.txt
egrep -i 'Tynamo' newpages.txt >> Tynamo.txt
egrep -i 'Typhlosion' newpages.txt >> Typhlosion.txt
egrep -i 'Tyranitar' newpages.txt >> Tyranitar.txt
egrep -i 'Tyrogue' newpages.txt >> Tyrogue.txt

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
  export CATFILE="Taillow.txt"
  export CATNAME="Taillow"
  ./catscripts/Categorize.sh
fi

if [ $Tangela -ne 0 ];
then
  export CATFILE="Tangela.txt"
  export CATNAME="Tangela"
  ./catscripts/Categorize.sh
fi

if [ $Tangrowth -ne 0 ];
then
  export CATFILE="Tangrowth.txt"
  export CATNAME="Tangrowth"
  ./catscripts/Categorize.sh
fi

if [ $Tauros -ne 0 ];
then
  export CATFILE="Tauros.txt"
  export CATNAME="Tauros"
  ./catscripts/Categorize.sh
fi

if [ $Teddiursa -ne 0 ];
then
  export CATFILE="Teddiursa.txt"
  export CATNAME="Teddiursa"
  ./catscripts/Categorize.sh
fi

if [ $Tentacool -ne 0 ];
then
  export CATFILE="Tentacool.txt"
  export CATNAME="Tentacool"
  ./catscripts/Categorize.sh
fi

if [ $Tentacruel -ne 0 ];
then
  export CATFILE="Tentacruel.txt"
  export CATNAME="Tentacruel"
  ./catscripts/Categorize.sh
fi

if [ $Tepig -ne 0 ];
then
  export CATFILE="Tepig.txt"
  export CATNAME="Tepig"
  ./catscripts/Categorize.sh
fi

if [ $Throh -ne 0 ];
then
  export CATFILE="Throh.txt"
  export CATNAME="Throh"
  ./catscripts/Categorize.sh
fi

if [ $Thundurus -ne 0 ];
then
  export CATFILE="Thundurus.txt"
  export CATNAME="Thundurus"
  ./catscripts/Categorize.sh
fi

if [ $Timburr -ne 0 ];
then
  export CATFILE="Timburr.txt"
  export CATNAME="Timburr"
  ./catscripts/Categorize.sh
fi

if [ $Tirtouga -ne 0 ];
then
  export CATFILE="Tirtouga.txt"
  export CATNAME="Tirtouga"
  ./catscripts/Categorize.sh
fi

if [ $Togekiss -ne 0 ];
then
  export CATFILE="Togekiss.txt"
  export CATNAME="Togekiss"
  ./catscripts/Categorize.sh
fi

if [ $Togepi -ne 0 ];
then
  export CATFILE="Togepi.txt"
  export CATNAME="Togepi"
  ./catscripts/Categorize.sh
fi

if [ $Togetic -ne 0 ];
then
  export CATFILE="Togetic.txt"
  export CATNAME="Togetic"
  ./catscripts/Categorize.sh
fi

if [ $Torchic -ne 0 ];
then
  export CATFILE="Torchic.txt"
  export CATNAME="Torchic"
  ./catscripts/Categorize.sh
fi

if [ $Torkoal -ne 0 ];
then
  export CATFILE="Torkoal.txt"
  export CATNAME="Torkoal"
  ./catscripts/Categorize.sh
fi

if [ $Tornadus -ne 0 ];
then
  export CATFILE="Tornadus.txt"
  export CATNAME="Tornadus"
  ./catscripts/Categorize.sh
fi

if [ $Torterra -ne 0 ];
then
  export CATFILE="Torterra.txt"
  export CATNAME="Torterra"
  ./catscripts/Categorize.sh
fi

if [ $Totodile -ne 0 ];
then
  export CATFILE="Totodile.txt"
  export CATNAME="Totodile"
  ./catscripts/Categorize.sh
fi

if [ $Toxicroak -ne 0 ];
then
  export CATFILE="Toxicroak.txt"
  export CATNAME="Toxicroak"
  ./catscripts/Categorize.sh
fi

if [ $Tranquill -ne 0 ];
then
  export CATFILE="Tranquill.txt"
  export CATNAME="Tranquill"
  ./catscripts/Categorize.sh
fi

if [ $Trapinch -ne 0 ];
then
  export CATFILE="Trapinch.txt"
  export CATNAME="Trapinch"
  ./catscripts/Categorize.sh
fi

if [ $Treecko -ne 0 ];
then
  export CATFILE="Treecko.txt"
  export CATNAME="Treecko"
  ./catscripts/Categorize.sh
fi

if [ $Tropius -ne 0 ];
then
  export CATFILE="Tropius.txt"
  export CATNAME="Tropius"
  ./catscripts/Categorize.sh
fi

if [ $Trubbish -ne 0 ];
then
  export CATFILE="Trubbish.txt"
  export CATNAME="Trubbish"
  ./catscripts/Categorize.sh
fi

if [ $Turtwig -ne 0 ];
then
  export CATFILE="Turtwig.txt"
  export CATNAME="Turtwig"
  ./catscripts/Categorize.sh
fi

if [ $Tympole -ne 0 ];
then
  export CATFILE="Tympole.txt"
  export CATNAME="Tympole"
  ./catscripts/Categorize.sh
fi

if [ $Tynamo -ne 0 ];
then
  export CATFILE="Tynamo.txt"
  export CATNAME="Tynamo"
  ./catscripts/Categorize.sh
fi

if [ $Typhlosion -ne 0 ];
then
  export CATFILE="Typhlosion.txt"
  export CATNAME="Typhlosion"
  ./catscripts/Categorize.sh
fi

if [ $Tyranitar -ne 0 ];
then
  export CATFILE="Tyranitar.txt"
  export CATNAME="Tyranitar"
  ./catscripts/Categorize.sh
fi

if [ $Tyrogue -ne 0 ];
then
  export CATFILE="Tyrogue.txt"
  export CATNAME="Tyrogue"
  ./catscripts/Categorize.sh
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