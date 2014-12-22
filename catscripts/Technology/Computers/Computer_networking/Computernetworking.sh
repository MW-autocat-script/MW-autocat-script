#!/bin/bash

KEYWORDS_WIRELESS="wire(| )less(| )(router|network|card|Ethernet)|\bWLAN(|s)\b|DD(|-| )WRT|Open(| )WRT|wi(| |-)fi|wireless fidelity|802\.11|\bAOSS|\bWPA(|2)\b"

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

  NETWORK=$(egrep -i "$KEYWORDS_NETWORK" "$NEWPAGES" | egrep -iv "$KEYWORDS_NETWORK_EXCLUDE")
  TELNET=$(egrep -i "$KEYWORDS_TELNET" "$NEWPAGES")
  SSH=$(egrep -i "$KEYWORDS_SSH" "$NEWPAGES")
  FTP=$(egrep -i "$KEYWORDS_FTP" "$NEWPAGES")
  VOIP=$(egrep -i "$KEYWORDS_VOIP" "$NEWPAGES" | egrep -iv "$KEYWORDS_VOIP_EXCLUDE")
  SKYPE=$(egrep -i "$KEYWORDS_SKYPE" "$NEWPAGES")
  BLUETOOTH=$(egrep -i "$KEYWORDS_BLUETOOTH" "$NEWPAGES")

  categorize "NETWORK" "Computer networking"
  categorize "TELNET" "Telnet"
  categorize "SSH" "SSH"
  categorize "FTP" "FTP"
  categorize "VOIP" "VoIP"
  categorize "SKYPE" "Skype"
  categorize "BLUETOOTH" "Bluetooth"

  debug_end "Computer networking"

fi