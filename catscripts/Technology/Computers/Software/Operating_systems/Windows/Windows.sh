#!/bin/bash
egrep -i 'Windows 98|Windows98|Win98' newpages.txt >> Windows98.txt
egrep -i 'Windows 2000|Windows2000|Win2000|W2k\b' newpages.txt >> Windows2000.txt
egrep -i 'Windows XP|WindowsXP|2000XP|WinXP' newpages.txt >> WindowsXP.txt
egrep -i 'Windows Server 2003|Windows 2003|Windows2003|Win2003|Win2k3|W2k3' newpages.txt >> WindowsServer2003.txt
egrep -i 'Windows Vista|Windowsvista|win vista|winvista' newpages.txt >> WindowsVista.txt
egrep -i 'Windows 7|Windows7|Win7' newpages.txt >> Windows7.txt
egrep -i 'Windows Server 2008|Windows 2008|Windows2008|Win2008|Win2k8|W2k8' newpages.txt >> WindowsServer2008.txt
egrep -i 'Windows 8|Windows8|Win8' newpages.txt >> Windows8.txt

Win98=`stat --print=%s Windows98.txt`
Win2000=`stat --print=%s Windows2000.txt`
WinXP=`stat --print=%s WindowsXP.txt`
Win2003=`stat --print=%s WindowsServer2003.txt`
WinVista=`stat --print=%s WindowsVista.txt`
Win7=`stat --print=%s Windows7.txt`
Win2008=`stat --print=%s WindowsServer2008.txt`
Win8=`stat --print=%s Windows8.txt`


if [ $Win98 -ne 0 ];
then
   export CATFILE="Windows98.txt"
   export CATNAME="Windows 98"
   ./catscripts/Categorize.sh
fi

if [ $Win2000 -ne 0 ];
then
   export CATFILE="Windows2000.txt"
   export CATNAME="Windows 2000"
   ./catscripts/Categorize.sh
fi

if [ $WinXP -ne 0 ];
then
   export CATFILE="WindowsXP.txt"
   export CATNAME="Windows XP"
   ./catscripts/Categorize.sh
fi

if [ $Win2003 -ne 0 ];
then
   export CATFILE="WindowsServer2003.txt"
   export CATNAME="Windows Server 2003"
   ./catscripts/Categorize.sh
fi

if [ $WinVista -ne 0 ];
then
   export CATFILE="WindowsVista.txt"
   export CATNAME="Windows Vista"
   ./catscripts/Categorize.sh
fi

if [ $Win7 -ne 0 ];
then
   export CATFILE="Windows7.txt"
   export CATNAME="Windows 7"
   ./catscripts/Categorize.sh
fi

if [ $Win2008 -ne 0 ];
then
   export CATFILE="WindowsServer2008.txt"
   export CATNAME="Windows Server 2008"
   ./catscripts/Categorize.sh
fi

if [ $Win8 -ne 0 ];
then
   export CATFILE="Windows8.txt"
   export CATNAME="Windows 8"
   ./catscripts/Categorize.sh
fi

rm Windows98.txt
rm Windows2000.txt
rm WindowsXP.txt
rm WindowsServer2003.txt
rm WindowsVista.txt
rm Windows7.txt
rm WindowsServer2008.txt
rm Windows8.txt