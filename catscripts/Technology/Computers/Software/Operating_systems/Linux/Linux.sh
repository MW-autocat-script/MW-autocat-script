#!/bin/bash

KEYWORDS_LINUX="Linux|vmlinuz|initrd"
KEYWORDS_LINUX_OTHER="Slackware|TinyCore|CentOS" #Names of other distros that might not contain the word "Linux" and don't have their own category
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

  LINUX=`egrep -i "$KEYWORDS_LINUX|$KEYWORDS_LINUX_OTHER" newpages.txt | egrep -iv "$KEYWORDS_LINUX_EXCLUDE"`
  DEBIAN=`egrep -i "$KEYWORDS_DEBIAN" newpages.txt`
  OPENSUSE=`egrep -i "$KEYWORDS_OPENSUSE" newpages.txt`
  UBUNTU=`egrep -i "$KEYWORDS_UBUNTU" newpages.txt`
  COLINUX=` egrep -i "$KEYWORDS_COLINUX" newpages.txt`
  FEDORA=`egrep -i "$KEYWORDS_FEDORA" newpages.txt`
  MINT=`egrep -i "$KEYWORDS_LINUXMINT" newpages.txt`
  ANDROID=`egrep -i "$KEYWORDS_GOOGLEANDROID" newpages.txt & egrep "$KEYWORDS_GOOGLEANDROID_CASESENSITIVE" newpages.txt`

  if [ "$LINUX" != "" ];
  then
    egrep -i "$KEYWORDS_LINUX|$KEYWORDS_LINUX_OTHER" newpages.txt | egrep -iv "$KEYWORDS_LINUX_EXCLUDE" > Linux.txt
    export CATFILE="Linux.txt"
    export CATNAME="Linux"
    $CATEGORIZE
    rm Linux.txt
    unset LINUX
  fi

  if [ "$DEBIAN" != "" ];
  then
    egrep -i "$KEYWORDS_DEBIAN" newpages.txt > Debian.txt 
    export CATFILE="Debian.txt"
    export CATNAME="Debian"
    $CATEGORIZE
    rm Debian.txt
    unset DEBIAN
  fi

  if [ "$OPENSUSE" != "" ];
  then
    egrep -i "$KEYWORDS_OPENSUSE" newpages.txt > OpenSUSE.txt
    export CATFILE="OpenSUSE.txt"
    export CATNAME="OpenSUSE"
    $CATEGORIZE
    rm OpenSUSE.txt
    unset OPENSUSE
  fi

  if [ "$UBUNTU" != "" ];
  then
    egrep -i "$KEYWORDS_UBUNTU" newpages.txt > Ubuntu.txt
    export CATFILE="Ubuntu.txt"
    export CATNAME="Ubuntu"
    $CATEGORIZE
    rm Ubuntu.txt
    unset UBUNTU
  fi

  if [ "$COLINUX" != "" ];
  then
    egrep -i "$KEYWORDS_COLINUX" newpages.txt > CoLinux.txt
    export CATFILE="coLinux.txt"
    export CATNAME="coLinux"
    $CATEGORIZE
    rm CoLinux.txt
    unset COLINUX
  fi

  if [ "$FEDORA" != "" ];
  then
    egrep -i "$KEYWORDS_FEDORA" newpages.txt > FedoraLinux.txt
    export CATFILE="FedoraLinux.txt"
    export CATNAME="Fedora Linux"
    $CATEGORIZE
    rm FedoraLinux.txt
    unset FEDORA
  fi

  if [ "$MINT" != "" ];
  then
    egrep -i "$KEYWORDS_LINUXMINT" newpages.txt > LinuxMint.txt
    export CATFILE="LinuxMint.txt"
    export CATNAME="Linux Mint"
    $CATEGORIZE
    rm LinuxMint.txt
    unset MINT
  fi

  if [ "$ANDROID" != "" ];
  then
    egrep -i "$KEYWORDS_GOOGLEANDROID" newpages.txt > GoogleAndroid.txt
    egrep "$KEYWORDS_GOOGLEANDROID_CASESENSITIVE" newpages.txt >> GoogleAndroid.txt
    export CATFILE="GoogleAndroid.txt"
    export CATNAME="Google Android"
    $CATEGORIZE
    rm GoogleAndroid.txt
    unset ANDROID
  fi

fi