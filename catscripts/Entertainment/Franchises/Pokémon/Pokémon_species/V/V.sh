#!/bin/bash
egrep -i 'Vanillish' newpages.txt >> Vanillish.txt
egrep -i 'Vanilluxe' newpages.txt >> Vanilluxe.txt
egrep -i 'Vanillite' newpages.txt >> Vanillite.txt
egrep -i 'Vaporeon' newpages.txt >> Vaporeon.txt
egrep -i 'Venipede' newpages.txt >> Venipede.txt
egrep -i 'Venomoth' newpages.txt >> Venomoth.txt
egrep -i 'Venonat' newpages.txt >> Venonat.txt
egrep -i 'Venusaur' newpages.txt >> Venusaur.txt
egrep -i 'Vespiquen' newpages.txt >> Vespiquen.txt
egrep -i 'Vibrava' newpages.txt >> Vibrava.txt
egrep -i 'Victini' newpages.txt >> Victini.txt
egrep -i 'Victreebel' newpages.txt >> Victreebel.txt
egrep -i 'Vigoroth' newpages.txt >> Vigoroth.txt
egrep -i 'Vileplume' newpages.txt >> Vileplume.txt
egrep -i 'Virizion' newpages.txt >> Virizion.txt
egrep -i 'Volbeat' newpages.txt >> Volbeat.txt
egrep -i 'Volcarona' newpages.txt >> Volcarona.txt
egrep -i 'Voltorb' newpages.txt >> Voltorb.txt
egrep -i 'Vullaby' newpages.txt >> Vullaby.txt
egrep -i 'Vulpix' newpages.txt >> Vulpix.txt

Vanillish=$(stat --print=%s Vanillish.txt)
Vanilluxe=$(stat --print=%s Vanilluxe.txt)
Vanillite=$(stat --print=%s Vanillite.txt)
Vaporeon=$(stat --print=%s Vaporeon.txt)
Venipede=$(stat --print=%s Venipede.txt)
Venomoth=$(stat --print=%s Venomoth.txt)
Venonat=$(stat --print=%s Venonat.txt)
Venusaur=$(stat --print=%s Venusaur.txt)
Vespiquen=$(stat --print=%s Vespiquen.txt)
Vibrava=$(stat --print=%s Vibrava.txt)
Victini=$(stat --print=%s Victini.txt)
Victreebel=$(stat --print=%s Victreebel.txt)
Vigoroth=$(stat --print=%s Vigoroth.txt)
Vileplume=$(stat --print=%s Vileplume.txt)
Virizion=$(stat --print=%s Virizion.txt)
Volbeat=$(stat --print=%s Volbeat.txt)
Volcarona=$(stat --print=%s Volcarona.txt)
Voltorb=$(stat --print=%s Voltorb.txt)
Vullaby=$(stat --print=%s Vullaby.txt)
Vulpix=$(stat --print=%s Vulpix.txt)

if [ $Vanillish -ne 0 ];
then
  export CATFILE="Vanillish.txt"
  export CATNAME="Vanillish"
  $CATEGORIZE
fi

if [ $Vanilluxe -ne 0 ];
then
  export CATFILE="Vanilluxe.txt"
  export CATNAME="Vanilluxe"
  $CATEGORIZE
fi

if [ $Vanillite -ne 0 ];
then
  export CATFILE="Vanillite.txt"
  export CATNAME="Vanillite"
  $CATEGORIZE
fi

if [ $Vaporeon -ne 0 ];
then
  export CATFILE="Vaporeon.txt"
  export CATNAME="Vaporeon"
  $CATEGORIZE
fi

if [ $Venipede -ne 0 ];
then
  export CATFILE="Venipede.txt"
  export CATNAME="Venipede"
  $CATEGORIZE
fi

if [ $Venomoth -ne 0 ];
then
  export CATFILE="Venomoth.txt"
  export CATNAME="Venomoth"
  $CATEGORIZE
fi

if [ $Venonat -ne 0 ];
then
  export CATFILE="Venonat.txt"
  export CATNAME="Venonat"
  $CATEGORIZE
fi

if [ $Venusaur -ne 0 ];
then
  export CATFILE="Venusaur.txt"
  export CATNAME="Venusaur"
  $CATEGORIZE
fi

if [ $Vespiquen -ne 0 ];
then
  export CATFILE="Vespiquen.txt"
  export CATNAME="Vespiquen"
  $CATEGORIZE
fi

if [ $Vibrava -ne 0 ];
then
  export CATFILE="Vibrava.txt"
  export CATNAME="Vibrava"
  $CATEGORIZE
fi

if [ $Victini -ne 0 ];
then
  export CATFILE="Victini.txt"
  export CATNAME="Victini"
  $CATEGORIZE
fi

if [ $Victreebel -ne 0 ];
then
  export CATFILE="Victreebel.txt"
  export CATNAME="Victreebel"
  $CATEGORIZE
fi

if [ $Vigoroth -ne 0 ];
then
  export CATFILE="Vigoroth.txt"
  export CATNAME="Vigoroth"
  $CATEGORIZE
fi

if [ $Vileplume -ne 0 ];
then
  export CATFILE="Vileplume.txt"
  export CATNAME="Vileplume"
  $CATEGORIZE
fi

if [ $Virizion -ne 0 ];
then
  export CATFILE="Virizion.txt"
  export CATNAME="Virizion"
  $CATEGORIZE
fi

if [ $Volbeat -ne 0 ];
then
  export CATFILE="Volbeat.txt"
  export CATNAME="Volbeat"
  $CATEGORIZE
fi

if [ $Volcarona -ne 0 ];
then
  export CATFILE="Volcarona.txt"
  export CATNAME="Volcarona"
  $CATEGORIZE
fi

if [ $Voltorb -ne 0 ];
then
  export CATFILE="Voltorb.txt"
  export CATNAME="Voltorb"
  $CATEGORIZE
fi

if [ $Vullaby -ne 0 ];
then
  export CATFILE="Vullaby.txt"
  export CATNAME="Vullaby"
  $CATEGORIZE
fi

if [ $Vulpix -ne 0 ];
then
  export CATFILE="Vulpix.txt"
  export CATNAME="Vulpix"
  $CATEGORIZE
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