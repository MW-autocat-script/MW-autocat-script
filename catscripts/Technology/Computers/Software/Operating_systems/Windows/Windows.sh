#!/bin/bash

KEYWORDS_WINDOWS98="Windows(| )98|Win98"
KEYWORDS_WINDOWS2000="Windows(| )2000|Win2000|W2k\b"
KEYWORDS_WINDOWSXP="Windows(| )XP|2000XP|WinXP"
KEYWORDS_WINDOWSSERVER2003="Windows(| )Server(| )2003|Windows(| )2003|Win(| )2003|Win(| )2k3|W2k3"
KEYWORDS_WINDOWSVISTA="Windows(| )Vista|Win(| )Vista"
KEYWORDS_WINDOWS7="Windows(| )7|Win7"
KEYWORDS_WINDOWSSERVER2008="Windows(| )Server(| )2008|Windows(| )2008|Win(| )2k8|W2k8"
KEYWORDS_WINDOWS8="Windows(| )8|Win8"
KEYWORDS_WINDOWS="Microsoft(| )Windows"
KEYWORDS_WINDOWS_CASESENSITIVE="Windows"
KEYWORDS_WINDOWS_EXCLUDE="$KEYWORDS_WINDOWS98|$KEYWORDS_WINDOWS2000|$KEYWORDS_WINDOWSXP|$KEYWORDS_WINDOWSVISTA|$KEYWORDS_WINDOWS7|$KEYWORDS_WINDOWS8|$KEYWORDS_WINDOWSSERVER2003|$KEYWORDS_WINDOWSSERVER2008|Windows(| )(|Live)(| )(DVD|Movie)(| )Maker|\bX(-| )Windows|Windows(| )Media(| )Player"

egrep -i "$KEYWORDS_WINDOWS98" newpages.txt >> Windows98.txt
egrep -i "$KEYWORDS_WINDOWS2000" newpages.txt >> Windows2000.txt
egrep -i "$KEYWORDS_WINDOWSXP" newpages.txt >> WindowsXP.txt
egrep -i "$KEYWORDS_WINDOWSSERVER2003" newpages.txt >> WindowsServer2003.txt
egrep -i "$KEYWORDS_WINDOWSVISTA" newpages.txt >> WindowsVista.txt
egrep -i "$KEYWORDS_WINDOWS7" newpages.txt >> Windows7.txt
egrep -i "$KEYWORDS_WINDOWSSERVER2008" newpages.txt >> WindowsServer2008.txt
egrep -i "$KEYWORDS_WINDOWS8" newpages.txt >> Windows8.txt
egrep -i "$KEYWORDS_WINDOWS" newpages.txt | egrep -iv "$KEYWORDS_WINDOWS_EXCLUDE" >> Windows.txt
egrep "$KEYWORDS_WINDOWS_CASESENSITIVE" newpages.txt | egrep -iv "$KEYWORDS_WINDOWS_EXCLUDE" >> Windows.txt

Win98=`stat --print=%s Windows98.txt`
Win2000=`stat --print=%s Windows2000.txt`
WinXP=`stat --print=%s WindowsXP.txt`
Win2003=`stat --print=%s WindowsServer2003.txt`
WinVista=`stat --print=%s WindowsVista.txt`
Win7=`stat --print=%s Windows7.txt`
Win2008=`stat --print=%s WindowsServer2008.txt`
Win8=`stat --print=%s Windows8.txt`
WINDOWS=`stat --print=%S Windows.txt`


if [ $Win98 -ne 0 ];
then
   export CATFILE="Windows98.txt"
   export CATNAME="Windows 98"
   $CATEGORIZE
fi

if [ $Win2000 -ne 0 ];
then
   export CATFILE="Windows2000.txt"
   export CATNAME="Windows 2000"
   $CATEGORIZE
fi

if [ $WinXP -ne 0 ];
then
   export CATFILE="WindowsXP.txt"
   export CATNAME="Windows XP"
   $CATEGORIZE
fi

if [ $Win2003 -ne 0 ];
then
   export CATFILE="WindowsServer2003.txt"
   export CATNAME="Windows Server 2003"
   $CATEGORIZE
fi

if [ $WinVista -ne 0 ];
then
   export CATFILE="WindowsVista.txt"
   export CATNAME="Windows Vista"
   $CATEGORIZE
fi

if [ $Win7 -ne 0 ];
then
   export CATFILE="Windows7.txt"
   export CATNAME="Windows 7"
   $CATEGORIZE
fi

if [ $Win2008 -ne 0 ];
then
   export CATFILE="WindowsServer2008.txt"
   export CATNAME="Windows Server 2008"
   $CATEGORIZE
fi

if [ $Win8 -ne 0 ];
then
   export CATFILE="Windows8.txt"
   export CATNAME="Windows 8"
   $CATEGORIZE
fi

if [ $WINDOWS -ne 0 ];
then
  export CATFILE="Windows.txt"
  export CATNAME="Windows"
  $CATEGORIZE
fi

rm Windows98.txt
rm Windows2000.txt
rm WindowsXP.txt
rm WindowsServer2003.txt
rm WindowsVista.txt
rm Windows7.txt
rm WindowsServer2008.txt
rm Windows8.txt
rm Windows.txt