#!/bin/bash

KEYWORDS_COMPUTER_SECURITY="Computer(| )Security|\bhack(|er|ed|s|ing)(|s)\b|CompSec|(ad|spy|mal)(|-)ware|computer.+virus|virus.+computer|trojan|SQL(| )injection|DNSSEC|IPSEC|computer(| )worm|Nimda|(Code(| )Red|Blaster|Sasser)(| )(Worm|Virus)"
KEYWORDS_COMPUTER_SECURITY_EXCLUDE="anti(|-)(| )virus|\bTroy|Greek|Trojan(| )War|USC(| )Trojans|sports|football|tennis"

if [ "$1" == "" ];
then

  debug_start "Computer security"

  SECURITY=$(egrep -i "$KEYWORDS_COMPUTER_SECURITY" newpages.txt | egrep -iv "$KEYWORDS_COMPUTER_SECURITY_EXCLUDE")

  if [ "$SECURITY" != "" ];
  then
    printf "%s" "$SECURITY" > ComputerSecurity.txt
    export CATFILE="ComputerSecurity.txt"
    export CATNAME="Computer security"
    $CATEGORIZE
    rm ComputerSecurity.txt
    unset SECURITY
  fi

  debug_end "Computer security"

fi