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
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVanillish.sh
fi

if [ $Vanilluxe -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVanilluxe.sh
fi

if [ $Vanillite -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVanillite.sh
fi

if [ $Vaporeon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVaporeon.sh
fi

if [ $Venipede -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVenipede.sh
fi

if [ $Venomoth -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVenomoth.sh
fi

if [ $Venonat -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVenonat.sh
fi

if [ $Venusaur -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVenusaur.sh
fi

if [ $Vespiquen -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVespiquen.sh
fi

if [ $Vibrava -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVibrava.sh
fi

if [ $Victini -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVictini.sh
fi

if [ $Victreebel -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVictreebel.sh
fi

if [ $Vigoroth -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVigoroth.sh
fi

if [ $Vileplume -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVileplume.sh
fi

if [ $Virizion -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVirizion.sh
fi

if [ $Volbeat -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVolbeat.sh
fi

if [ $Volcarona -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVolcarona.sh
fi

if [ $Voltorb -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVoltorb.sh
fi

if [ $Vullaby -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVullaby.sh
fi

if [ $Vulpix -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/V/catVulpix.sh
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
