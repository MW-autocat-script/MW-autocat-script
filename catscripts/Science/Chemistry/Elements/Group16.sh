#!/bin/bash 

egrep -i '\bOxygen' newpages.txt | egrep -iv 'Oxygen \b.+(ate|ide|ite)|channel|network|oxygen sensor|oxygen tank' >> Oxygen.txt
egrep -i 'Sulfur' newpages.txt | egrep -iv 'Sulfur \b.+(ate|ide|ite)' >> Sulfur.txt
egrep -i 'Selenium' newpages.txt | egrep -iv 'Selenium \b.+(ate|ide|ite)' >> Selenium.txt
egrep -i 'Tellurium' newpages.txt | egrep -iv 'Tellurium \b.+(ate|ide|ite)' >> Tellurium.txt
egrep -i 'Polonium' newpages.txt | egrep -iv 'Polonium \b.+(ate|ide|ite)' >> Polonium.txt
egrep -i 'Livermorium' newpages.txt | egrep -iv 'Livermorium \b.+(ate|ide|ite)' >> Livermorium.txt

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
  $CATEGORIZE
fi

if [ $SULFUR -ne 0 ];
then
  export CATFILE="Sulfur.txt"
  export CATNAME="Sulfur"
  $CATEGORIZE
fi

if [ $SELENIUM -ne 0 ];
then
  export CATFILE="Selenium.txt"
  export CATNAME="Selenium"
  $CATEGORIZE
fi

if [ $TELLURIUM -ne 0 ];
then
  export CATFILE="Tellurium.txt"
  export CATNAME="Tellurium"
  $CATEGORIZE
fi

if [ $POLONIUM -ne 0 ];
then
  export CATFILE="Polonium.txt"
  export CATNAME="Polonium"
  $CATEGORIZE
fi

if [ $LIVERMORIUM -ne 0 ];
then
  export CATFILE="Livermorium.txt"
  export CATNAME="Livermorium"
  $CATEGORIZE
fi

rm Oxygen.txt
rm Sulfur.txt
rm Selenium.txt
rm Tellurium.txt
rm Polonium.txt
rm Livermorium.txt