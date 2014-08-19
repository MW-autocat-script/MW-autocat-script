#!/bin/bash


KEYWORDS_UNIX="\bUnix|Xenix|Solaris|Sun(| )OS|IRIX|\bAIX|HP(| |-)UX|Tru64|A/UX|Apple(| )Rhapsody|RhapsodyOS|NextStep|OpenServer"
KEYWORDS_UNIX_SPECIAL="\bcron\b|crontab|anacron\b|\binit\b|fsck"
KEYWORDS_UNIX_EXCLUDE="Mac(| )OS|OS(| )X"
KEYWORDS_UNIX_ALL="$KEYWORDS_UNIX|$KEYWORDS_UNIX_SPECIAL"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Unix"

  UNIX=$(egrep -i "$KEYWORDS_UNIX" newpages.txt | egrep -iv "$KEYWORDS_UNIX_EXCLUDE" && egrep -i "$KEYWORDS_UNIX_SPECIAL" newpages.txt | egrep -iv "$KEYWORDS_UNIX_EXCLUDE|Linux|BSD")

  if [ "$UNIX" != "" ];
  then
    printf "%s" "$UNIX" > Unix.txt
    export CATFILE="Unix.txt"
    export CATNAME="Unix"
    $CATEGORIZE
    rm Unix.txt
    unset UNIX
  fi

  debug_end "Unix"

fi