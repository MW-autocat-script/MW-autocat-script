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

  debug_start "Linux"

  LINUX=$(egrep -i "$KEYWORDS_LINUX|$KEYWORDS_LINUX_OTHER" "$NEWPAGES" | egrep -iv "$KEYWORDS_LINUX_EXCLUDE")
  DEBIAN=$(egrep -i "$KEYWORDS_DEBIAN" "$NEWPAGES")
  OPENSUSE=$(egrep -i "$KEYWORDS_OPENSUSE" "$NEWPAGES")
  UBUNTU=$(egrep -i "$KEYWORDS_UBUNTU" "$NEWPAGES")
  COLINUX=$( egrep -i "$KEYWORDS_COLINUX" "$NEWPAGES")
  FEDORA=$(egrep -i "$KEYWORDS_FEDORA" "$NEWPAGES")
  MINT=$(egrep -i "$KEYWORDS_LINUXMINT" "$NEWPAGES")
  ANDROID=$(egrep -i "$KEYWORDS_GOOGLEANDROID" "$NEWPAGES" & egrep "$KEYWORDS_GOOGLEANDROID_CASESENSITIVE" "$NEWPAGES")

  if [ "$LINUX" != "" ];
  then
    printf "%s" "$LINUX" > Linux.txt
    export CATFILE="Linux.txt"
    export CATNAME="Linux"
    $CATEGORIZE
    rm Linux.txt
    unset LINUX
  fi

  if [ "$DEBIAN" != "" ];
  then
    printf "%s" "$DEBIAN" > Debian.txt 
    export CATFILE="Debian.txt"
    export CATNAME="Debian"
    $CATEGORIZE
    rm Debian.txt
    unset DEBIAN
  fi

  if [ "$OPENSUSE" != "" ];
  then
    printf "%s" "$OPENSUSE" > OpenSUSE.txt
    export CATFILE="OpenSUSE.txt"
    export CATNAME="OpenSUSE"
    $CATEGORIZE
    rm OpenSUSE.txt
    unset OPENSUSE
  fi

  if [ "$UBUNTU" != "" ];
  then
    printf "%s" "$UBUNTU" > Ubuntu.txt
    export CATFILE="Ubuntu.txt"
    export CATNAME="Ubuntu"
    $CATEGORIZE
    rm Ubuntu.txt
    unset UBUNTU
  fi

  if [ "$COLINUX" != "" ];
  then
    printf "%s" "$COLINUX" > CoLinux.txt
    export CATFILE="coLinux.txt"
    export CATNAME="coLinux"
    $CATEGORIZE
    rm CoLinux.txt
    unset COLINUX
  fi

  if [ "$FEDORA" != "" ];
  then
    printf "%s" "$FEDORA" > FedoraLinux.txt
    export CATFILE="FedoraLinux.txt"
    export CATNAME="Fedora Linux"
    $CATEGORIZE
    rm FedoraLinux.txt
    unset FEDORA
  fi

  if [ "$MINT" != "" ];
  then
    printf "%s" "$MINT" > LinuxMint.txt
    export CATFILE="LinuxMint.txt"
    export CATNAME="Linux Mint"
    $CATEGORIZE
    rm LinuxMint.txt
    unset MINT
  fi

  if [ "$ANDROID" != "" ];
  then
    printf "%s" "$ANDROID" > GoogleAndroid.txt
    export CATFILE="GoogleAndroid.txt"
    export CATNAME="Google Android"
    $CATEGORIZE
    rm GoogleAndroid.txt
    unset ANDROID
  fi

  debug_end "Android"

fi