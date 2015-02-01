#!/bin/bash

KEYWORDS_LINUX="Linux|vmlinuz|initrd"
KEYWORDS_LINUX_OTHER="Slackware|TinyCore|CentOS" #Names of other distros that might not contain the word "Linux" and don't have their own category
KEYWORDS_DEBIAN="Debian|DFSG"
KEYWORDS_OPENSUSE="Open(| )SUSE"
KEYWORDS_UBUNTU="Ubuntu"
KEYWORDS_COLINUX="\bco(| )Linux|\bcofs\b"
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

  categorize "LINUX" "Linux"
  categorize "DEBIAN" "Debian"
  categorize "OPENSUSE" "OpenSUSE"
  categorize "UBUNTU" "Ubuntu"
  categorize "COLINUX" "coLinux"
  categorize "FEDORA" "Fedora Linux"
  categorize "MINT" "Linux Mint"
  categorize "ANDROID" "Google Android"

  debug_end "Android"

fi