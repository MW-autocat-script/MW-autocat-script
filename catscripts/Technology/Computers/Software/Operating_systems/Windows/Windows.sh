#!/bin/bash

KEYWORDS_ACTIVEDIRECTORY="Active(| )Directory|domain(| )controller|Windows(| )domain"
KEYWORDS_WINDOWS98="Windows(| )98|Win98"
KEYWORDS_WINDOWSNT="Windows(| )NT"
KEYWORDS_WINDOWS2000="Windows(| )2000|Win2000|W2k\b"
KEYWORDS_WINDOWSXP="Windows(| )XP|2000XP|WinXP"
KEYWORDS_WINDOWSSERVER2003="Windows(| )Server(| )2003|Windows(| )2003|Win(| )2003|Win(| )2k3|W2k3"
KEYWORDS_WINDOWSVISTA="Windows(| )Vista|Win(| )Vista"
KEYWORDS_WINDOWS7="Windows(| )7|Win7"
KEYWORDS_WINDOWSSERVER2008="Windows(| )Server(| )2008|Windows(| )2008|Win(| )2k8|W2k8"
KEYWORDS_WINDOWS8="Windows(| )8|Win8"
KEYWORDS_WINDOWS="Microsoft(| )Windows"
KEYWORDS_WINDOWSMEDIAPLAYER="Windows(| )Media(| )Player"
KEYWORDS_WINDOWSMOVIEMAKER="Windows(| )(DVD|Movie)(| )Maker|Windows(| )Live(| )(DVD|Movie)(| )Maker"
KEYWORDS_WINDOWSCASESENSITIVE="Windows"
KEYWORDS_WINDOWS_EXCLUDE="$KEYWORDS_ACTIVEDIRECTORY|$KEYWORDS_WINDOWSNT|$KEYWORDS_WINDOWS98|$KEYWORDS_WINDOWS2000|$KEYWORDS_WINDOWSXP|$KEYWORDS_WINDOWSVISTA|$KEYWORDS_WINDOWS7|$KEYWORDS_WINDOWS8|$KEYWORDS_WINDOWSSERVER2003|$KEYWORDS_WINDOWSSERVER2008|$KEYWORDS_WINDOWSMOVIEMAKER|\bX(-| )Windows|$KEYWORDS_WINDOWSMEDIAPLAYER"
KEYWORDS_WINDOWS_ALL="$KEYWORDS_WINDOWSCASESENSITIVE|$KEYWORDS_WINDOWS|$KEYWORDS_WINDOWS_EXCLUDE"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Windows scripts\n"
  fi

  ACTIVEDIRECTORY=`egrep -i "$KEYWORDS_ACTIVEDIRECTORY" newpages.txt`
  WINDOWS98=`egrep -i "$KEYWORDS_WINDOWS98" newpages.txt`
  WINDOWS2000=`egrep -i "$KEYWORDS_WINDOWS2000" newpages.txt`
  WINDOWSXP=`egrep -i "$KEYWORDS_WINDOWSXP" newpages.txt`
  WINDOWS2003=`egrep -i "$KEYWORDS_WINDOWSSERVER2003" newpages.txt`
  WINDOWSVISTA=`egrep -i "$KEYWORDS_WINDOWSVISTA" newpages.txt`
  WINDOWS7=`egrep -i "$KEYWORDS_WINDOWS7" newpages.txt`
  WINDOWS2008=`egrep -i "$KEYWORDS_WINDOWSSERVER2008" newpages.txt`
  WINDOWS8=`egrep -i "$KEYWORDS_WINDOWS8" newpages.txt`
  WINDOWSNT=`egrep -i "$KEYWORDS_WINDOWSNT" newpages.txt`
  WINDOWS=`egrep -i "$KEYWORDS_WINDOWS" newpages.txt | egrep -iv "$KEYWORDS_WINDOWS_EXCLUDE"`
  WINDOWSCASE=`egrep "$KEYWORDS_WINDOWSCASESENSITIVE" newpages.txt | egrep -iv "$KEYWORDS_WINDOWS_EXCLUDE"`


  if [ "$ACTIVEDIRECTORY" != "" ];
  then
    printf "$ACTIVEDIRECTORY" > ActiveDirectory.txt
    export CATFILE="ActiveDirectory.txt"
    export CATNAME="Active Directory"
    $CATEGORIZE
    rm ActiveDirectory.txt
    unset ACTIVEDIRECTORY
  fi

  if [ "$WINDOWSNT" != "" ];
  then
    printf "$WINDOWSNT" > WindowsNT.txt
    export CATFILE="WindowsNT.txt"
    export CATNAME="Windows NT"
    rm WindowsNT.txt
    unset WINDOWSNT
  fi

  if [ "$WINDOWS98" != "" ];
  then
    printf "$WINDOWS98" > Windows98.txt
    export CATFILE="Windows98.txt"
    export CATNAME="Windows 98"
    $CATEGORIZE
    rm Windows98.txt
    unset WINDOWS98
  fi

  if [ "$WINDOWS2000" != "" ];
  then
    printf "$WINDOWS2000" > Windows2000.txt
    export CATFILE="Windows2000.txt"
    export CATNAME="Windows 2000"
    $CATEGORIZE
    rm Windows2000.txt
    unset WINDOWS2000
  fi

  if [ "$WINDOWSXP" != "" ];
  then
    printf "$WINDOWSXP" > WindowsXP.txt
    export CATFILE="WindowsXP.txt"
    export CATNAME="Windows XP"
    $CATEGORIZE
    rm WindowsXP.txt
    unset WINDOWSXP
  fi

  if [ "$WINDOWS2003" != "" ];
  then
    printf "$WINDOWS2003" > WindowsServer2003.txt
    export CATFILE="WindowsServer2003.txt"
    export CATNAME="Windows Server 2003"
    $CATEGORIZE
    rm WindowsServer2003.txt
    unset WINDOWS2003
  fi

  if [ "$WINDOWSVISTA" != "" ];
  then
    printf "$WINDOWSVISTA" > WindowsVista.txt
    export CATFILE="WindowsVista.txt"
    export CATNAME="Windows Vista"
    $CATEGORIZE
    rm WindowsVista.txt
    unset WINDOWSVISTA
  fi

  if [ "$WINDOWS7" != "" ];
  then
    printf "$WINDOWS7" > Windows7.txt
    export CATFILE="Windows7.txt"
    export CATNAME="Windows 7"
    $CATEGORIZE
    rm Windows7.txt
    unset WINDOWS7
  fi

  if [ "$WINDOWS2008" != "" ];
  then
    printf "$WINDOWS2008" > WindowsServer2008.txt
    export CATFILE="WindowsServer2008.txt"
    export CATNAME="Windows Server 2008"
    $CATEGORIZE
    rm WindowsServer2008.txt
    unset WINDOWS2008
  fi

  if [ "$WINDOWS8" != "" ];
  then
    printf "$WINDOWS8" > Windows8.txt
    export CATFILE="Windows8.txt"
    export CATNAME="Windows 8"
    $CATEGORIZE
    rm Windows8.txt
    unset WINDOWS8
  fi

  if [ "$WINDOWS" != "" ] || [ "$WINDOWSCASE" != "" ];
  then
    printf "$WINDOWS\n" > Windows.txt
    printf "$WINDOWSCASE\n" >> Windows.txt
    export CATFILE="Windows.txt"
    export CATNAME="Windows"
    $CATEGORIZE
    rm Windows.txt
    unset WINDOWS
    unset WINDOWSCASE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Windows scripts\n"
  fi

fi