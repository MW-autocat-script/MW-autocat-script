#!/bin/bash

KEYWORDS_LINUX="Linux|vmlinuz|initrd"
KEYWORDS_LINUX_OTHER="Slackware|TinyCore" #Names of other distros that might not contain the word "Linux" and don't have their own category
KEYWORDS_DEBIAN="Debian|DFSG"
KEYWORDS_OPENSUSE="Open(| )SUSE"
KEYWORDS_UBUNTU="Ubuntu"
KEYWORDS_COLINUX="\bco(| )Linux"
KEYWORDS_FEDORA="Fedora(| )[0-9]{1,}|[io]n Fedora|Fedora(| )Linux|Fedora(| )Core"
KEYWORDS_LINUXMINT="Linux(| )Mint"
KEYWORDS_GOOGLEANDROID="Google(| )Android|Android(| )(OS|Operating(| )system)|Android(| )tablet"
KEYWORDS_GOOGLEANDROID_CASESENSITIVE="Ice Cream Sandwich"
KEYWORDS_LINUX_EXCLUDE="$KEYWORDS_DEBIAN|$KEYWORDS_OPENSUSE|$KEYWORDS_UBUNTU|$KEYWORDS_COLINUX|$KEYWORDS_FEDORA|$KEYWORDS_LINUXMINT|$KEYWORDS_GOOGLEANDROID|$KEYWORDS_GOOGLEANDROID_CASESENSITIVE"
KEYWORDS_LINUX_ALL="$KEYWORDS_LINUX|$KEYWORDS_LINUX_OTHER|$KEYWORDS_LINUX_EXCLUDE"

if [ "$1" == "" ]; #Nortmal operation
then

  egrep -i "$KEYWORDS_LINUX|$KEYWORDS_LINUX_OTHER" newpages.txt | egrep -iv "$KEYWORDS_LINUX_EXCLUDE" >> Linux.txt
  egrep -i "$KEYWORDS_DEBIAN" newpages.txt >> Debian.txt 
  egrep -i "$KEYWORDS_OPENSUSE" newpages.txt >> OpenSUSE.txt
  egrep -i "$KEYWORDS_UBUNTU" newpages.txt >> Ubuntu.txt
  egrep -i "$KEYWORDS_COLINUX" newpages.txt >> CoLinux.txt
  egrep -i "$KEYWORDS_FEDORA" newpages.txt >> FedoraLinux.txt
  egrep -i "$KEYWORDS_LINUXMINT" newpages.txt >> LinuxMint.txt
  egrep -i "$KEYWORDS_GOOGLEANDROID" newpages.txt >> GoogleAndroid.txt
  egrep "$KEYWORDS_GOOGLEANDROID_CASESENSITIVE" newpages.txt >> GoogleAndroid.txt

  LINUX=`stat --print=%s Linux.txt`
  DEBIAN=`stat --print=%s Debian.txt`
  OPENSUSE=`stat --print=%s OpenSUSE.txt`
  UBUNTU=`stat --print=%s Ubuntu.txt`
  COLINUX=`stat --print=%s CoLinux.txt`
  FEDORA=`stat --print=%s FedoraLinux.txt`
  MINT=`stat --print=%s LinuxMint.txt`
  ANDROID=`stat --print=%s GoogleAndroid.txt`

  if [ $LINUX -ne 0 ];
  then
    export CATFILE="Linux.txt"
    export CATNAME="Linux"
    $CATEGORIZE
  fi

  if [ $DEBIAN -ne 0 ];
  then
    export CATFILE="Debian.txt"
    export CATNAME="Debian"
    $CATEGORIZE
  fi

  if [ $OPENSUSE -ne 0 ];
  then
    export CATFILE="OpenSUSE.txt"
    export CATNAME="OpenSUSE"
    $CATEGORIZE
  fi

  if [ $UBUNTU -ne 0 ];
  then
    export CATFILE="Ubuntu.txt"
    export CATNAME="Ubuntu"
    $CATEGORIZE
  fi

  if [ $COLINUX -ne 0 ];
  then
    export CATFILE="coLinux.txt"
    export CATNAME="coLinux"
    $CATEGORIZE
  fi

  if [ $FEDORA -ne 0 ];
  then
    export CATFILE="FedoraLinux.txt"
    export CATNAME="Fedora Linux"
    $CATEGORIZE
  fi

  if [ $MINT -ne 0 ];
  then
    export CATFILE="LinuxMint.txt"
    export CATNAME="Linux Mint"
    $CATEGORIZE
  fi

  if [ $ANDROID -ne 0 ];
  then
    export CATFILE="GoogleAndroid.txt"
    export CATNAME="Google Android"
    $CATEGORIZE
  fi

  rm Linux.txt
  rm Debian.txt
  rm OpenSUSE.txt
  rm Ubuntu.txt
  rm CoLinux.txt
  rm FedoraLinux.txt
  rm LinuxMint.txt
  rm GoogleAndroid.txt

fi