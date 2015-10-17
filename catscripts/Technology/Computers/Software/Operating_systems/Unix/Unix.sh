#!/bin/bash


KEYWORDS_UNIX="\bUnix|Xenix|Solaris|Sun(| )OS|IRIX|\bAIX|HP(| |-)UX|Tru64|A/UX|Apple(| )Rhapsody|RhapsodyOS|NextStep|OpenServer"
KEYWORDS_UNIX_SPECIAL="\bcron\b|crontab|anacron\b|\binit\b|fsck"
KEYWORDS_UNIX_EXCLUDE="Mac(| )OS|OS(| )X"
KEYWORDS_UNIX_ALL="$KEYWORDS_UNIX|$KEYWORDS_UNIX_SPECIAL"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Unix"

  UNIX=$(egrep -i "$KEYWORDS_UNIX" "$NEWPAGES" | egrep -iv "$KEYWORDS_UNIX_EXCLUDE"; egrep -i "$KEYWORDS_UNIX_SPECIAL" "$NEWPAGES" | egrep -iv "$KEYWORDS_UNIX_EXCLUDE|Linux|BSD")

  categorize "UNIX" "Unix"

  debug_end "Unix"

fi