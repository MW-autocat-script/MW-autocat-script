#!/bin/bash 

cat newpages.txt | egrep -i '\bOxygen' | egrep -iv 'Oxygen \b.+(ate|ide|ite)|channel|network|oxygen sensor|oxygen tank' >> Oxygen.txt
cat newpages.txt | egrep -i 'Sulfur' | egrep -iv 'Sulfur \b.+(ate|ide|ite)' >> Sulfur.txt
cat newpages.txt | egrep -i 'Selenium' | egrep -iv 'Selenium \b.+(ate|ide|ite)' >> Selenium.txt
cat newpages.txt | egrep -i 'Tellurium' | egrep -iv 'Tellurium \b.+(ate|ide|ite)' >> Tellurium.txt
cat newpages.txt | egrep -i 'Polonium' | egrep -iv 'Polonium \b.+(ate|ide|ite)' >> Polonium.txt
cat newpages.txt | egrep -i 'Livermorium' | egrep -iv 'Livermorium \b.+(ate|ide|ite)' >> Livermorium.txt

OXYGEN=`stat --print=%s Oxygen.txt`
SULFUR=`stat --print=%s Sulfur.txt`
SELENIUM=`stat --print=%s Selenium.txt`
TELLURIUM=`stat --print=%s Tellurium.txt`
POLONIUM=`stat --print=%s Polonium.txt`
LIVERMORIUM=`stat --print=%s Livermorium.txt`

if [ $OXYGEN -ne 0 ];
then
  export CATFILE="Oxygen.txt"
  export CATNAME="Oxygen"
  ./catscripts/Categorize.sh
fi

if [ $SULFUR -ne 0 ];
then
  export CATFILE="Sulfur.txt"
  export CATNAME="Sulfur"
  ./catscripts/Categorize.sh
fi

if [ $SELENIUM -ne 0 ];
then
  export CATFILE="Selenium.txt"
  export CATNAME="Selenium"
  ./catscripts/Categorize.sh
fi

if [ $TELLURIUM -ne 0 ];
then
  export CATFILE="Tellurium.txt"
  export CATNAME="Tellurium"
  ./catscripts/Categorize.sh
fi

if [ $POLONIUM -ne 0 ];
then
  export CATFILE="Polonium.txt"
  export CATNAME="Polonium"
  ./catscripts/Categorize.sh
fi

if [ $LIVERMORIUM -ne 0 ];
then
  export CATFILE="Livermorium.txt"
  export CATNAME="Livermorium"
  ./catscripts/Categorize.sh
fi

rm Oxygen.txt
rm Sulfur.txt
rm Selenium.txt
rm Tellurium.txt
rm Polonium.txt
rm Livermorium.txt