#!/bin/bash

KEYWORDS_EMAIL="\bE(|-)mail|Outlook(| )Express|web(| )mail"
KEYWORDS_GMAIL="G(|-)mail|Google(| )Mail"
KEYWORDS_EMAIL_EXCLUDE="$KEYWORDS_GMAIL"

if [ "$1" == "" ];
then
  
  debug_start "Email"

  EMAIL=$(egrep -i "$KEYWORDS_EMAIL" newpages.txt | egrep -iv "$KEYWORDS_GMAIL")
  GMAIL=$(egrep -i "$KEYWORDS_GMAIL" newpages.txt)

  if [ "$EMAIL" != "" ];
  then
    printf "%s" "$EMAIL" > Email.txt
    export CATFILE="Email.txt"
    export CATNAME="Email"
    $CATEGORIZE
    rm Email.txt
    unset EMAIL
  fi

  if [ "$GMAIL" != "" ];
  then
    printf "%s" "$GMAIL" > Gmail.txt
    export CATFILE="Gmail.txt"
    export CATNAME="Gmail"
    $CATEGORIZE
    rm Gmail.txt
    unset GMAIL
  fi

  debug_end "Email"

fi