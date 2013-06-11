#!/bin/bash

egrep -i 'transportation' newpages.txt >> Transportation.txt
egrep -i 'school bus' newpages.txt | egrep -iv 'Magic School Bus' >> Transportation.txt

TRANSPORTATION=`stat --print=%s Transportation.txt`

if [ $TRANSPORTATION -ne 0 ];
then
  export CATFILE="Transportation.txt"
  export CATNAME="Transportation"
  $CATEGORIZE
fi

CURRENTDIR="./catscripts/Transportation"



#$CURRENTDIR/Airplanes/Airplanes.sh
$CURRENTDIR/Cars/Cars.sh
$CURRENTDIR/SUVs/SUVs.sh
#$CURRENTDIR/Trucks/Trucks.sh
#$CURRENTDIR/Vans/Vans.sh 
$CURRENTDIR/Vehicle_manufactuers/Manufactuers.sh

rm Transportation.txt