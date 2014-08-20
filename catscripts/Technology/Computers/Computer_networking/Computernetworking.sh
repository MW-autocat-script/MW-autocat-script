#!/bin/bash

KEYWORDS_WIRELESS="wire(| )less(| )(router|network|card|Ethernet)|\bWLAN(|s)\b|DD(|-| )WRT|Open(| )WRT|wi(| |-)fi|wireless fidelity|802\.11|\bAOSS"

KEYWORDS_WIRED="Ethernet|Category(| )(3|4|5|6|7)(e|)(| )cable|RJ(| |-)45|network(| )cable"

KEYWORDS_NETWORK_OTHER="Computer(| )network|\b(WAN|LAN|VLAN)(|s)\b|\bNIC(|s)\b|DHCP|network(| )admin|\bBOOTP|PXE|\bDNS(|SEC)\b|\bDDoS\b|\bTCP\b|\bIPX\b|IP(| )address|OSPF|EIGRP|network(| )interface|Intranet|default(| )gateway|subnet|netmask|i(p|f)config|port(| )forward|IPSEC|MAC(| )address"

KEYWORDS_NETWORK="$KEYWORDS_WIRED|$KEYWORDS_WIRELESS|$KEYWORDS_NETWORK_OTHER"

KEYWORDS_TELNET="Telnet"
KEYWORDS_SSH="\bSSH|Secure(| )Shell|OpenSSH|SFTP|\bSCP\b"
KEYWORDS_FTP="\bFTP\b|TFTP"
KEYWORDS_VOIP="VOIP|Voice(| )over(| )IP"
KEYWORDS_SKYPE="Skype"
KEYWORDS_VOIP_EXCLUDE="$KEYWORDS_SKYPE"
KEYWORDS_BLUETOOTH="Bluetooth"

KEYWORDS_NETWORK_EXCLUDE="$KEYWORDS_TELNET|$KEYWORDS_SSH|$KEYWORDS_VOIP|$KEYWORDS_SKYPE|$KEYWORDS_FTP|$KEYWORDS_BLUETOOTH|Nic Sheff|Obi(|-)(| )wan"

KEYWORDS_NETWORK_ALL="$KEYWORDS_NETWORK|$KEYWORDS_BLUETOOTH|$KEYWORDS_FTP|$KEYWORDS_SKYPE|$KEYWORDS_SSH|$KEYWORDS_TELNET|$KEYWORDS_VOIP"

if [ "$1" == "" ];
then
  
  debug_start "Computer networking"

  NETWORK="$(egrep -i "$KEYWORDS_NETWORK" "$NEWPAGES" | egrep -iv "$KEYWORDS_NETWORK_EXCLUDE")"
  TELNET="$(egrep -i "$KEYWORDS_TELNET" "$NEWPAGES")"
  SSH="$(egrep -i "$KEYWORDS_SSH" "$NEWPAGES")"
  FTP="$(egrep -i "$KEYWORDS_FTP" "$NEWPAGES")"
  VOIP="$(egrep -i "$KEYWORDS_VOIP" "$NEWPAGES" | egrep -iv "$KEYWORDS_VOIP_EXCLUDE")"
  SKYPE="$(egrep -i "$KEYWORDS_SKYPE" "$NEWPAGES")"
  BLUETOOTH="$(egrep -i "$KEYWORDS_BLUETOOTH" "$NEWPAGES")"

  if [ "$NETWORK" != "" ];
  then
    printf "%s" "$NETWORK" > Computernetworking.txt
    export CATFILE="Computernetworking.txt"
    export CATNAME="Computer networking"
    $CATEGORIZE
    rm Computernetworking.txt
    unset NETWORK
  fi

  if [ "$TELNET" != "" ];
  then
    printf "%s" "$TELNET" > Telnet.txt
    export CATFILE="Telnet.txt"
    export CATNAME="Telnet"
    $CATEGORIZE
    rm Telnet.txt
    unset TELNET
  fi

  if [ "$SSH" != "" ];
  then
    printf "%s" "$SSH" > SSH.txt
    export CATFILE="SSH.txt"
    export CATNAME="SSH"
    $CATEGORIZE
    rm SSH.txt
    unset SSH
  fi

  if [ "$FTP" != "" ];
  then
    printf "%s" "$FTP" > FTP.txt
    export CATFILE="FTP.txt"
    export CATNAME="FTP"
    $CATEGORIZE
    rm FTP.txt
    unset FTP
  fi

  if [ "$VOIP" != "" ];
  then
    printf "%s" "$VOIP" > VoIP.txt
    export CATFILE="VoIP.txt"
    export CATNAME="VoIP"
    $CATEGORIZE
    rm VoIP.txt
    unset VOIP
  fi

  if [ "$SKYPE" != "" ];
  then
    printf "%s" "$SKYPE" > Skype.txt
    export CATFILE="Skype.txt"
    export CATNAME="Skype"
    $CATEGORIZE
    rm Skype.txt
    unset SKYPE
  fi

  if [ "$BLUETOOTH" != "" ];
  then
    printf "%s" "$BLUETOOTH" > Bluetooth.txt
    export CATFILE="Bluetooth.txt"
    export CATNAME="Bluetooth"
    $CATEGORIZE
    rm Bluetooth.txt
    unset BLUETOOTH
  fi

  debug_end "Computer networking"

fi