#!/bin/bash

cat newpages.txt | egrep -i 'George Washington|President Washington' | egrep -iv 'George Washington Carver' >> GeorgeWashington.txt
cat newpages.txt | egrep -i 'John Adams' >> JohnAdams.txt
cat newpages.txt | egrep -i 'Thomas Jefferson|Jefforsonian|Monticello|President Jefferson' >> ThomasJefferson.txt
cat newpages.txt | egrep -i 'James Madison|President Madison' >> JamesMadison.txt
cat newpages.txt | egrep -i 'James Monroe|President Monroe' >> JamesMonroe.txt
cat newpages.txt | egrep -i 'John Q(|\.|uincy) Adams' >> JohnQuincyAdams.txt
cat newpages.txt | egrep -i 'Andrew Jackson|President Jackson' >> AndrewJackson.txt
cat newpages.txt | egrep -i 'Martin Van Buren|President Buren|President Van Buren' >> MartinVanBuren.txt
cat newpages.txt | egrep -i 'William H(|\.|enry) Harrison' >> WilliamHenryHarrison.txt
cat newpages.txt | egrep -i 'John Tyler|President Tyler' >> JohnTyler.txt
cat newpages.txt | egrep -i 'James(| K(|\.|nox)) Polk|President Polk' >> JamesKPolk.txt
cat newpages.txt | egrep -i 'Zachary Taylor|President Taylor' >> ZacharyTaylor.txt
cat newpages.txt | egrep -i 'Fillmore' >> MillardFillmore.txt

WASHINGTON=`stat --print=%s GeorgeWashington.txt`
JOHNADAMS=`stat --print=%s JohnAdams.txt`
JEFFERSON=`stat --print=%s ThomasJefferson.txt`
MADISON=`stat --print=%s JamesMadison.txt`
MONROE=`stat --print=%s JamesMonroe.txt`
QUINCY=`stat --print=%s JohnQuincyAdams.txt`
JACKSON=`stat --print=%s AndrewJackson.txt`
BUREN=`stat --print=%s MartinVanBuren.txt`
WHARRISON=`stat --print=%s WilliamHenryHarrison.txt`
TYLER=`stat --print=%s JohnTyler.txt`
POLK=`stat --print=%s JamesKPolk.txt`
TAYLOR=`stat --print=%s ZacharyTaylor.txt`
FILLMORE=`stat --print=%s MillardFillmore.txt`

if [ $WASHINGTON -ne 0 ];
then
  export CATFILE="GeorgeWashington.txt"
  export CATNAME="George Washington"
  ./catscripts/Categorize.sh
fi

if [ $JOHNADAMS -ne 0 ];
then
  export CATFILE="JohnAdams.txt"
  export CATNAME="John Adams"
  ./catscripts/Categorize.sh
fi

if [ $JEFFERSON -ne 0 ];
then
  export CATFILE="ThomasJefferson.txt"
  export CATNAME="Thomas Jefferson"
  ./catscripts/Categorize.sh
fi

if [ $MADISON -ne 0 ];
then
  export CATFILE="JamesMadison.txt"
  export CATNAME="James Madison"
  ./catscripts/Categorize.sh
fi

if [ $MONROE -ne 0 ];
then
  export CATFILE="JamesMonroe.txt"
  export CATNAME="James Monroe"
  ./catscripts/Categorize.sh
fi

if [ $QUINCY -ne 0 ];
then
  export CATFILE="JohnQuincyAdams.txt"
  export CATNAME="John Quincy Adams"
  ./catscripts/Categorize.sh
fi

if [ $JACKSON -ne 0 ];
then
  export CATFILE="AndrewJackson.txt"
  export CATNAME="Andrew Jackson"
  ./catscripts/Categorize.sh
fi

if [ $BUREN -ne 0 ];
then
  export CATFILE="MartinVanBuren.txt"
  export CATNAME="Martin Van Buren"
  ./catscripts/Categorize.sh
fi

if [ $WHARRISON -ne 0 ];
then
  export CATFILE="WilliamHenryHarrison.txt"
  export CATNAME="William Henry Harrison"
  ./catscripts/Categorize.sh
fi

if [ $TYLER -ne 0 ];
then
  export CATFILE="JohnTyler.txt"
  export CATNAME="John Tyler"
  ./catscripts/Categorize.sh
fi

if [ $POLK -ne 0 ];
then
  export CATFILE="JamesKPolk.txt"
  export CATNAME="James K. Polk"
  ./catscripts/Categorize.sh
fi

if [ $TAYLOR -ne 0 ];
then
  export CATFILE="ZacharyTaylor.txt"
  export CATNAME="Zachary Taylor"
  ./catscripts/Categorize.sh
fi

if [ $FILLMORE -ne 0 ];
then
  export CATFILE="MillardFillmore.txt"
  export CATNAME="Millard Fillmore"
  ./catscripts/Categorize.sh
fi

rm GeorgeWashington.txt
rm JohnAdams.txt
rm ThomasJefferson.txt
rm JamesMadison.txt
rm JamesMonroe.txt
rm JohnQuincyAdams.txt
rm AndrewJackson.txt
rm MartinVanBuren.txt
rm WilliamHenryHarrison.txt
rm JohnTyler.txt
rm JamesKPolk.txt
rm ZacharyTaylor.txt
rm MillardFillmore.txt