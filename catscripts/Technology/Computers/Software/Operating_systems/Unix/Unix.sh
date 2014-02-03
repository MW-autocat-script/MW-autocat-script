#!/bin/bash


KEYWORDS_UNIX="\bUnix|Xenix|Solaris|Sun(| )OS|IRIX|\bAIX|HP(| |-)UX|Tru64|A/UX|Apple(| )Rhapsody|RhapsodyOS|NextStep|OpenServer"
KEYWORDS_UNIX_SPECIAL="\bcron\b|crontab|anacron\b|\binit\b|fsck"
KEYWORDS_UNIX_EXCLUDE="Mac(| )OS|OS(| )X"
KEYWORDS_UNIX_ALL="$KEYWORDS_UNIX|$KEYWORDS_UNIX_SPECIAL"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Unix\n"
  fi

  UNIX="$(egrep -i "$KEYWORDS_UNIX" newpages.txt | egrep -iv "$KEYWORDS_UNIX_EXCLUDE")"
  UNIXSPECIAL="$(egrep -i "$KEYWORDS_UNIX_SPECIAL" newpages.txt | egrep -iv "$KEYWORDS_UNIX_EXCLUDE|Linux|BSD")"

  if [ "$UNIX" != "" ] || [ "$UNIXSPECIAL" != "" ];
  then
    printf "%s" "$UNIX" > Unix.txt
    printf "%s" "$UNIXSPECIAL" >> Unix.txt
    export CATFILE="Unix.txt"
    export CATNAME="Unix"
    $CATEGORIZE
    rm Unix.txt
    unset UNIX
    unset UNIXSPECIAL
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Unix\n"
  fi

fi