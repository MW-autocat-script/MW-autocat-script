#!/bin/bash

cat newpages.txt | egrep -i 'Windows 98|Windows98|Win98' >> Windows98.txt
cat newpages.txt | egrep -i 'Windows 2000|Windows2000|Win2000|W2k\b' >> Windows2000.txt
cat newpages.txt | egrep -i 'Windows XP|WindowsXP|2000XP|WinXP' >> WindowsXP.txt
cat newpages.txt | egrep -i 'Windows Server 2003|Windows 2003|Windows2003|Win2003|Win2k3|W2k3' >> WindowsServer2003.txt
cat newpages.txt | egrep -i 'Windows Vista|Windowsvista|win vista|winvista' >> WindowsVista.txt
cat newpages.txt | egrep -i 'Windows 7|Windows7|Win7' >> Windows7.txt
cat newpages.txt | egrep -i 'Windows Server 2008|Windows 2008|Windows2008|Win2008|Win2k8|W2k8' >> WindowsServer2008.txt
cat newpages.txt | egrep -i 'Windows 8|Windows8|Win8' >> Windows8.txt

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
  ./catscripts/Technology/Computers/Software/Operating\ systems/Windows/catWindows98.sh
fi

if [ $Win2000 -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Windows/catWindows2000.sh
fi

if [ $WinXP -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Windows/catWindowsXP.sh
fi

if [ $Win2003 -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Windows/catWindowsServer2003.sh
fi

if [ $WinVista -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Windows/catWindowsVista.sh
fi

if [ $Win7 -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Windows/catWindows98.sh
fi

if [ $Win2008 -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Windows/catWindowsServer2008.sh
fi

if [ $Win8 -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Windows/catWindows8.sh
fi

rm Windows98.txt
rm Windows2000.txt
rm WindowsXP.txt
rm WindowsServer2003.txt
rm WindowsVista.txt
rm Windows7.txt
rm WindowsServer2008.txt
rm Windows8.txt