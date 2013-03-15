#!/bin/bash

egrep -i 'Internet Explorer|\bIE(| )[0-9]{1,2}\b' newpages.txt >> InternetExplorer.txt
egrep -i 'Firefox' newpages.txt >> MozillaFirefox.txt
egrep -i 'Google Chrome|Chrome browser' newpages.txt >> GoogleChrome.txt
egrep -i 'web browser' newpages.txt | egrep -iv 'Chrome|Firefox|Internet Explorer|\bIE(| )[0-9]{1,2}' >> Webbrowsers.txt

IEXPLORER=`stat --print=%s InternetExplorer.txt`
FIREFOX=`stat --print=%s MozillaFirefox.txt`
CHROME=`stat --print=%s GoogleChrome.txt`
BROWSERS=`stat --print=%s Webbrowsers.txt`

if [ $IEXPLORER -ne 0 ];
then
  export CATFILE="InternetExplorer.txt"
  export CATNAME="Internet Explorer"
  $CATEGORIZE
fi

if [ $FIREFOX -ne 0 ];
then
  export CATFILE="MozillaFirefox.txt"
  export CATNAME="Mozilla Firefox"
  $CATEGORIZE
fi

if [ $CHROME -ne 0 ];
then
  export CATFILE="GoogleChrome.txt"
  export CATNAME="Google Chrome"
  $CATEGORIZE
fi

if [ $BROWSERS -ne 0 ];
then
  export CATFILE="Webbrowsers.txt"
  export CATNAME="Web browsers"
  $CATEGORIZE
fi

rm InternetExplorer.txt
rm MozillaFirefox.txt
rm GoogleChrome.txt
rm Webbrowsers.txt