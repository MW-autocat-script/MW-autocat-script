#!/bin/bash

KEYWORDS_EMAIL="\bE(|-)mail|Outlook(| )Express|web(| )mail"
KEYWORDS_GMAIL="G(|-)mail|Google(| )Mail"
KEYWORDS_EMAIL_EXCLUDE="$KEYWORDS_GMAIL"

if [ "$1" == "" ];
then
  
  debug_start "Email"

  EMAIL=$(egrep -i "$KEYWORDS_EMAIL" "$NEWPAGES" | egrep -iv "$KEYWORDS_GMAIL")
  GMAIL=$(egrep -i "$KEYWORDS_GMAIL" "$NEWPAGES")

  categorize "EMAIL" "Email"
  categorize "GMAIL" "Gmail"

  debug_end "Email"

fi