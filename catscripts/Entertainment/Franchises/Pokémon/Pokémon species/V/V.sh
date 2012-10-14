#!/bin/bash
cat newpages.txt | egrep -i 'Vanillish' >> Vanillish.txt
cat newpages.txt | egrep -i 'Vanilluxe' >> Vanilluxe.txt
cat newpages.txt | egrep -i 'Vanillite' >> Vanillite.txt
cat newpages.txt | egrep -i 'Vaporeon' >> Vaporeon.txt
cat newpages.txt | egrep -i 'Venipede' >> Venipede.txt
cat newpages.txt | egrep -i 'Venomoth' >> Venomoth.txt
cat newpages.txt | egrep -i 'Venonat' >> Venonat.txt
cat newpages.txt | egrep -i 'Venusaur' >> Venusaur.txt
cat newpages.txt | egrep -i 'Vespiquen' >> Vespiquen.txt
cat newpages.txt | egrep -i 'Vibrava' >> Vibrava.txt
cat newpages.txt | egrep -i 'Victini' >> Victini.txt
cat newpages.txt | egrep -i 'Victreebel' >> Victreebel.txt
cat newpages.txt | egrep -i 'Vigoroth' >> Vigoroth.txt
cat newpages.txt | egrep -i 'Vileplume' >> Vileplume.txt
cat newpages.txt | egrep -i 'Virizion' >> Virizion.txt
cat newpages.txt | egrep -i 'Volbeat' >> Volbeat.txt
cat newpages.txt | egrep -i 'Volcarona' >> Volcarona.txt
cat newpages.txt | egrep -i 'Voltorb' >> Voltorb.txt
cat newpages.txt | egrep -i 'Vullaby' >> Vullaby.txt
cat newpages.txt | egrep -i 'Vulpix' >> Vulpix.txt

Vanillish=`stat --print=%s Vanillish.txt`
Vanilluxe=`stat --print=%s Vanilluxe.txt`
Vanillite=`stat --print=%s Vanillite.txt`
Vaporeon=`stat --print=%s Vaporeon.txt`
Venipede=`stat --print=%s Venipede.txt`
Venomoth=`stat --print=%s Venomoth.txt`
Venonat=`stat --print=%s Venonat.txt`
Venusaur=`stat --print=%s Venusaur.txt`
Vespiquen=`stat --print=%s Vespiquen.txt`
Vibrava=`stat --print=%s Vibrava.txt`
Victini=`stat --print=%s Victini.txt`
Victreebel=`stat --print=%s Victreebel.txt`
Vigoroth=`stat --print=%s Vigoroth.txt`
Vileplume=`stat --print=%s Vileplume.txt`
Virizion=`stat --print=%s Virizion.txt`
Volbeat=`stat --print=%s Volbeat.txt`
Volcarona=`stat --print=%s Volcarona.txt`
Voltorb=`stat --print=%s Voltorb.txt`
Vullaby=`stat --print=%s Vullaby.txt`
Vulpix=`stat --print=%s Vulpix.txt`

if [ $Vanillish -ne 0 ];
then
  export CATFILE="Vanillish.txt"
  export CATNAME="Vanill"
  ./catscripts/Categorize.sh
fi

if [ $Vanilluxe -ne 0 ];
then
  export CATFILE="Vanilluxe.txt"
  export CATNAME="Vanilluxe"
  ./catscripts/Categorize.sh
fi

if [ $Vanillite -ne 0 ];
then
  export CATFILE="Vanillite.txt"
  export CATNAME="Vanillite"
  ./catscripts/Categorize.sh
fi

if [ $Vaporeon -ne 0 ];
then
  export CATFILE="Vaporeon.txt"
  export CATNAME="Vaporeon"
  ./catscripts/Categorize.sh
fi

if [ $Venipede -ne 0 ];
then
  export CATFILE="Venipede.txt"
  export CATNAME="Venipede"
  ./catscripts/Categorize.sh
fi

if [ $Venomoth -ne 0 ];
then
  export CATFILE="Venomoth.txt"
  export CATNAME="Venomoth"
  ./catscripts/Categorize.sh
fi

if [ $Venonat -ne 0 ];
then
  export CATFILE="Venonat.txt"
  export CATNAME="Venonat"
  ./catscripts/Categorize.sh
fi

if [ $Venusaur -ne 0 ];
then
  export CATFILE="Venusaur.txt"
  export CATNAME="Venusaur"
  ./catscripts/Categorize.sh
fi

if [ $Vespiquen -ne 0 ];
then
  export CATFILE="Vespiquen.txt"
  export CATNAME="Vespiquen"
  ./catscripts/Categorize.sh
fi

if [ $Vibrava -ne 0 ];
then
  export CATFILE="Vibrava.txt"
  export CATNAME="Vibrava"
  ./catscripts/Categorize.sh
fi

if [ $Victini -ne 0 ];
then
  export CATFILE="Victini.txt"
  export CATNAME="Victini"
  ./catscripts/Categorize.sh
fi

if [ $Victreebel -ne 0 ];
then
  export CATFILE="Victreebel.txt"
  export CATNAME="Victreebel"
  ./catscripts/Categorize.sh
fi

if [ $Vigoroth -ne 0 ];
then
  export CATFILE="Vigoroth.txt"
  export CATNAME="Vigoroth"
  ./catscripts/Categorize.sh
fi

if [ $Vileplume -ne 0 ];
then
  export CATFILE="Vileplume.txt"
  export CATNAME="Vileplume"
  ./catscripts/Categorize.sh
fi

if [ $Virizion -ne 0 ];
then
  export CATFILE="Virizion.txt"
  export CATNAME="Virizion"
  ./catscripts/Categorize.sh
fi

if [ $Volbeat -ne 0 ];
then
  export CATFILE="Volbeat.txt"
  export CATNAME="Volbeat"
  ./catscripts/Categorize.sh
fi

if [ $Volcarona -ne 0 ];
then
  export CATFILE="Volcarona.txt"
  export CATNAME="Volcarona"
  ./catscripts/Categorize.sh
fi

if [ $Voltorb -ne 0 ];
then
  export CATFILE="Voltorb.txt"
  export CATNAME="Voltorb"
  ./catscripts/Categorize.sh
fi

if [ $Vullaby -ne 0 ];
then
  export CATFILE="Vullaby.txt"
  export CATNAME="Vullaby"
  ./catscripts/Categorize.sh
fi

if [ $Vulpix -ne 0 ];
then
  export CATFILE="Vulpix.txt"
  export CATNAME="Vulpix"
  ./catscripts/Categorize.sh
fi

rm Vanillish.txt
rm Vanilluxe.txt
rm Vanillite.txt
rm Vaporeon.txt
rm Venipede.txt
rm Venomoth.txt
rm Venonat.txt
rm Venusaur.txt
rm Vespiquen.txt
rm Vibrava.txt
rm Victini.txt
rm Victreebel.txt
rm Vigoroth.txt
rm Vileplume.txt
rm Virizion.txt
rm Volbeat.txt
rm Volcarona.txt
rm Voltorb.txt
rm Vullaby.txt
rm Vulpix.txt