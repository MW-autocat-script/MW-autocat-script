#!/bin/bash

cat newpages.txt | egrep -i 'Internet Explorer|\bIE(| )[0-9]{1,2}\b' >> InternetExplorer.txt
cat newpages.txt | egrep -i 'Firefox' >> MozillaFirefox.txt
cat newpages.txt | egrep -i 'Google Chrome|Chrome browser' >> GoogleChrome.txt
cat newpages.txt | egrep -i 'web browser' | egrep -iv 'Chrome|Firefox|Internet Explorer|\bIE(| )[0-9]{1,2}' >> Webbrowsers.txt

IEXPLORER=`stat --print=%s InternetExplorer.txt`
FIREFOX=`stat --print=%s MozillaFirefox.txt`
CHROME=`stat --print=%s GoogleChrome.txt`
BROWSERS=`stat --print=%s Webbrowsers.txt`

if [ $IEXPLORER -ne 0 ];
then
  export CATFILE="InternetExplorer.txt"
  export CATNAME="Internet Explorer"
  ./catscripts/Categorize.sh
fi

if [ $FIREFOX -ne 0 ];
then
  export CATFILE="MozillaFirefox.txt"
  export CATNAME="Mozilla Firefox"
  ./catscripts/Categorize.sh
fi

if [ $CHROME -ne 0 ];
then
  export CATFILE="GoogleChrome.txt"
  export CATNAME="Google Chrome"
  ./catscripts/Categorize.sh
fi

if [ $BROWSERS -ne 0 ];
then
  export CATFILE="Webbrowsers.txt"
  export CATNAME="Web browsers"
  ./catscripts/Categorize.sh
fi

rm InternetExplorer.txt
rm MozillaFirefox.txt
rm GoogleChrome.txt
rm Webbrowsers.txt