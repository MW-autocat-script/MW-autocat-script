#!/bin/bash

KEYWORDS_BATTLEFIELDSERIES="Battlefield(| )(series|1942|The(| )Road(| )to(| )Rome|Secret(| )Weapons(| )of(| )World(| )War(| )II|Vietnam|2\b|2142|(:| )Bad(| )Company|Heroes|1943|Online|Play4Free|3\b|4\b)"

if [ "$1" == "" ];
then
  
  debug_start "Battlefield series"

  BATTLEFIELD=$(egrep -i "$KEYWORDS_BATTLEFIELDSERIES" "$NEWPAGES")

  categorize "BATTLEFIELD" "Battlefield series"

  debug_end "Battlefield series"

fi