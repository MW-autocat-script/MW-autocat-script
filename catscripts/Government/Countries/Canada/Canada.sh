#!/bin/bash

KEYWORDS_CANADA="Canada|Canadian"

KEYWORDS_ONTARIO="Ontario"
KEYWORDS_TORONTO="Toronto"
KEYWORDS_OTTAWA="Ottawa"
KEYWORDS_ONTARIO_EXCLUDE="Lake(| )Ontario|$KEYWORDS_TORONTO|$KEYWORDS_OTTAWA"
KEYWORDS_ONTARIO_ALL="$KEYWORDS_ONTARIO|$KEYWORDS_TORONTO|$KEYWORDS_OTTAWA"

KEYWORDS_QUEBEC_PROVINCE="Quebec"
KEYWORDS_QUEBEC_CITY="Quebec(|,)(| )Quebec|Quebec(| )City" #This is going to make my head hurt
KEYWORDS_MONTREAL="Montreal"
KEYWORDS_QUEBEC_PROVINCE_EXCLUDE="$KEYWORDS_MONTREAL|$KEYWORDS_QUEBEC_CITY"
KEYWORDS_QUEBEC_PROVINCE_ALL="$KEYWORDS_QUEBEC_PROVINCE|$KEYWORDS_QUEBEC_CITY|$KEYWORDS_MONTREAL"

KEYWORDS_NOVASCOTIA="Nova(| )Scotia"
KEYWORDS_HALIFAX="Halifax"
KEYWORDS_NOVASCOTIA_EXCLUDE="$KEYWORDS_HALIFAX"
KEYWORDS_NOVASCOTIA_ALL="$KEYWORDS_NOVASCOTIA|$KEYWORDS_HALIFAX"

KEYWORDS_NEWBRUNSWICK="New(| )Brunswick|Fredericton"
KEYWORDS_NEWBRUNSWICK_ALL="$KEYWORDS_NEWBRUNSWICK"

KEYWORDS_MANITOBA="Manitoba"
KEYWORDS_WINNIPEG="Winnipeg"
KEYWORDS_MANITOBA_EXCLUDE="$KEYWORDS_WINNIPEG"
KEYWORDS_MANITOBA_ALL="$KEYWORDS_MANITOBA|$KEYWORDS_WINNIPEG"

KEYWORDS_BRITISHCOLUMBIA="British(| )Columbia"
KEYWORDS_VICTORIABC="Victoria(|,)(| )(B(|\.)C|British(| )Columbia)"
KEYWORDS_VANCOUVER="Vancouver"
KEYWORDS_BRITISHCOLUMBIA_EXCLUDE="$KEYWORDS_VICTORIABC|$KEYWORDS_VANCOUVER"
KEYWORDS_BRITISHCOLUMBIA_ALL="$KEYWORDS_BRITISHCOLUMBIA|$KEYWORDS_VICTORIABC|$KEYWORDS_VANCOUVER"

KEYWORDS_PRINCEEDWARDISLAND="Prince(| )Edward(| )Island|Charlottetown"
KEYWORDS_PRINCEEDWARDISLAND_ALL="$KEYWORDS_PRINCEEDWARDISLAND"

KEYWORDS_SASKATCHEWAN="Saskatchewan"
KEYWORDS_REGINA="Regina\b"
KEYWORDS_REGINA_EXCLUDE="Regina(| )(Spekter|Lasko)"
KEYWORDS_SASKATOON="Saskatoon"
KEYWORDS_SASKATCHEWAN_EXCLUDE="$KEYWORDS_REGINA|$KEYWORDS_SASKATOON"
KEYWORDS_SASKATCHEWAN_ALL="$KEYWORDS_SASKATCHEWAN|$KEYWORDS_REGINA|$KEYWORDS_SASKATOON"

KEYWORDS_ALBERTA="Alberta"
KEYWORDS_EDMONTON="Edmonton"
KEYWORDS_CALGARY="Calgary"
KEYWORDS_ALBERTA_EXCLUDE="$KEYWORDS_EDMONTON|$KEYWORDS_CALGARY"
KEYWORDS_ALBERTA_ALL="$KEYWORDS_ALBERTA|$KEYWORDS_EDMONTON|$KEYWORDS_CALGARY"

KEYWORDS_NEWFOUNDLANDANDLABRADOR="Newfoundland|Labrador"
KEYWORDS_NEWFOUNDLANDANDLABRADOR_EXCLUDE="\ba Newfoundland|\ba Labrador|dog|labradors|labrador(| )retriever|puppy|puppies"
KEYWORDS_NEWFOUNDLANDANDLABRADOR_ALL="$KEYWORDS_NEWFOUNDLANDANDLABRADOR"

KEYWORDS_NORTHWESTTERRITORIES="Northwest(| )Territories"
KEYWORDS_YELLOWKNIFE="Yellowknife"
KEYWORDS_NORTHWESTTERRITORIES_EXCLUDE="$KEYWORDS_YELLOWKNIFE"
KEYWORDS_NORTHWESTTERRITORIES_ALL="$KEYWORDS_NORTHWESTTERRITORIES|$KEYWORDS_YELLOWKNIFE"

KEYWORDS_YUKON="Yukon|Whitehorse"
KEYWORDS_YUKON_EXCLUDE="GMC(| )Yukon|[0-9]{2,}(| )Yukon|Yukon-Koyuku|Denali"
KEYWORDS_YUKON_ALL="$KEYWORDS_YUKON"

KEYWORDS_NUNAVUT="Nunavut|Iqaluit"
KEYWORDS_NUNAVUT_ALL="$KEYWORDS_NUNAVUT"

KEYWORDS_CANADA_EXCLUDE="$KEYWORDS_ALBERTA_ALL|$KEYWORDS_BRITISHCOLUMBIA_ALL|$KEYWORDS_MANITOBA_ALL|$KEYWORDS_NEWBRUNSWICK_ALL|$KEYWORDS_NEWFOUNDLANDANDLABRADOR_ALL|$KEYWORDS_NORTHWESTTERRITORIES_ALL|$KEYWORDS_NOVASCOTIA_ALL|$KEYWORDS_NUNAVUT_ALL|$KEYWORDS_ONTARIO_ALL|$KEYWORDS_PRINCEEDWARDISLAND_ALL|$KEYWORDS_QUEBEC_PROVINCE_ALL|$KEYWORDS_SASKATCHEWAN_ALL|$KEYWORDS_YUKON_ALL|ginger(| )ale"

KEYWORDS_CANADA_ALL="$KEYWORDS_CANADA|$KEYWORDS_ALBERTA_ALL|$KEYWORDS_BRITISHCOLUMBIA_ALL|$KEYWORDS_MANITOBA_ALL|$KEYWORDS_NEWBRUNSWICK_ALL|$KEYWORDS_NEWFOUNDLANDANDLABRADOR_ALL|$KEYWORDS_NORTHWESTTERRITORIES_ALL|$KEYWORDS_NOVASCOTIA_ALL|$KEYWORDS_NUNAVUT_ALL|$KEYWORDS_ONTARIO_ALL|$KEYWORDS_PRINCEEDWARDISLAND_ALL|$KEYWORDS_QUEBEC_PROVINCE_ALL|$KEYWORDS_SASKATCHEWAN_ALL|$KEYWORDS_YUKON_ALL"


if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Canada"

  CANADA=$(egrep -i "$KEYWORDS_CANADA" "$NEWPAGES" | egrep -iv "$KEYWORDS_CANADA_EXCLUDE")

  if [ "$CANADA" != "" ];
  then
    printf "%s" "$CANADA" > Canada.txt
    export CATFILE="Canada.txt"
    export CATNAME="Canada"
    $CATEGORIZE
    rm Canada.txt
    unset CANADA
  fi

  ONTARIO=$(egrep -i "$KEYWORDS_ONTARIO" "$NEWPAGES" | egrep -iv "$KEYWORDS_ONTARIO_EXCLUDE")

  if [ "$ONTARIO" != "" ];
  then
    printf "%s" "$ONTARIO" > Ontario.txt
    export CATFILE="Ontario.txt"
    export CATNAME="Ontario province"
    $CATEGORIZE
    rm Ontario.txt
    unset ONTARIO
  fi

  TORONTO=$(egrep -i "$KEYWORDS_TORONTO" "$NEWPAGES")

  if [ "$TORONTO" != "" ];
  then
    printf "%s" "$TORONTO" > Toronto.txt
    export CATFILE="Toronto.txt"
    export CATNAME="Toronto"
    $CATEGORIZE
    rm Toronto.txt
    unset TORONTO
  fi

  OTTAWA=$(egrep -i "$KEYWORDS_OTTAWA" "$NEWPAGES")

  if [ "$OTTAWA" != "" ];
  then
    printf "%s" "$OTTAWA" > Ottawa.txt
    export CATFILE="Ottawa.txt"
    export CATNAME="Ottawa"
    $CATEGORIZE
    rm Ottawa.txt
    unset OTTAWA
  fi

  QUEBECPROVINCE=$(egrep -i "$KEYWORDS_QUEBEC_PROVINCE" "$NEWPAGES" | egrep -iv "$KEYWORDS_QUEBEC_PROVINCE_EXCLUDE")

  if [ "$QUEBECPROVINCE" != "" ];
  then
    printf "%s" "$QUEBECPROVINCE" > QuebecProvince.txt
    export CATFILE="QuebecProvince.txt"
    export CATNAME="Quebec province"
    $CATEGORIZE
    rm QuebecProvince.txt
    unset QUEBECPROVINCE
  fi

  QUEBECCITY=$(egrep -i "$KEYWORDS_QUEBEC_CITY" "$NEWPAGES")

  if [ "$QUEBECCITY" != "" ];
  then
    printf "%s" "$QUEBECCITY" > QuebecCity.txt
    export CATFILE="QuebecCity.txt"
    export CATNAME="Quebec City"
    $CATEGORIZE
    rm QuebecCity.txt
    unset QUEBECCITY
  fi

  MONTREAL=$(egrep -i "$KEYWORDS_MONTREAL" "$NEWPAGES")

  if [ "$MONTREAL" != "" ];
  then
    printf "%s" "$MONTREAL" > Montreal.txt
    export CATFILE="Montreal.txt"
    export CATNAME="Montreal"
    $CATEGORIZE
    rm Montreal.txt
    unset MONTREAL
  fi

  NOVASCOTIA=$(egrep -i "$KEYWORDS_NOVASCOTIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_NOVASCOTIA_EXCLUDE")

  if [ "$NOVASCOTIA" != "" ];
  then
    printf "%s" "$NOVASCOTIA" > NovaScotia.txt
    export CATFILE="NovaScotia.txt"
    export CATNAME="Nova Scotia"
    $CATEGORIZE
    rm NovaScotia.txt
    unset NOVASCOTIA
  fi

  HALIFAX=$(egrep -i "$KEYWORDS_HALIFAX" "$NEWPAGES")

  if [ "$HALIFAX" != "" ];
  then
    printf "%s" "$HALIFAX" > Halifax.txt
    export CATFILE="Halifax.txt"
    export CATNAME="Halifax"
    $CATEGORIZE
    rm Halifax.txt
    unset HALIFAX
  fi

  NEWBRUNSWICK=$(egrep -i "$KEYWORDS_NEWBRUNSWICK" "$NEWPAGES")

  if [ "$NEWBRUNSWICK" != "" ];
  then
    printf "%s" "$NEWBRUNSWICK" > NewBrunswick.txt
    export CATFILE="NewBrunswick.txt"
    export CATNAME="New Brunswick"
    $CATEGORIZE
    rm NewBrunswick.txt
    unset NEWBRUNSWICK
  fi

  MANITOBA=$(egrep -i "$KEYWORDS_MANITOBA" "$NEWPAGES" | egrep -iv "$KEYWORDS_MANITOBA_EXCLUDE")

  if [ "$MANITOBA" != "" ];
  then
    printf "%s" "$MANITOBA" > Manitoba.txt
    export CATFILE="Manitoba.txt"
    export CATNAME="Manitoba"
    $CATEGORIZE
    rm Manitoba.txt
    unset MANITOBA
  fi

  WINNIPEG=$(egrep -i "$KEYWORDS_WINNIPEG" "$NEWPAGES")

  if [ "$WINNIPEG" != "" ];
  then
    printf "%s" "$WINNIPEG" > Winnipeg.txt
    export CATFILE="Winnipeg.txt"
    export CATNAME="Winnipeg"
    $CATEGORIZE
    rm Winnipeg.txt
    unset WINNIPEG
  fi

  BRITISHCOLUMBIA=$(egrep -i "$KEYWORDS_BRITISHCOLUMBIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_BRITISHCOLUMBIA_EXCLUDE")

  if [ "$BRITISHCOLUMBIA" != "" ];
  then
    printf "%s" "$BRITISHCOLUMBIA" > BritishColumbia.txt
    export CATFILE="BritishColumbia.txt"
    export CATNAME="British Columbia"
    $CATEGORIZE
    rm BritishColumbia.txt
    unset BRITISHCOLUMBIA
  fi

  VICTORIABC=$(egrep -i "$KEYWORDS_VICTORIABC" "$NEWPAGES")

  if [ "$VICTORIABC" != "" ];
  then
    printf "%s" "$VICTORIABC" > VictoriaBC.txt
    export CATFILE="VictoriaBC.txt"
    export CATNAME="Victoria, British Columbia"
    $CATEGORIZE
    rm VictoriaBC.txt
    unset VICTORIABC
  fi

  VANCOUVER=$(egrep -i "$KEYWORDS_VANCOUVER" "$NEWPAGES")

  if [ "$VANCOUVER" != "" ];
  then
    printf "%s" "$VANCOUVER" > Vancouver.txt
    export CATFILE="Vancouver.txt"
    export CATNAME="Vancouver"
    $CATEGORIZE
    rm Vancouver.txt
    unset VANCOUVER
  fi

  PRINCEEDWARDISLAND=$(egrep -i "$KEYWORDS_PRINCEEDWARDISLAND" "$NEWPAGES")

  if [ "$PRINCEEDWARDISLAND" != "" ];
  then
    printf "%s" "$PRINCEEDWARDISLAND" > PrinceEdwardIsland.txt
    export CATFILE="PrinceEdwardIsland.txt"
    export CATNAME="Prince Edward Island"
    $CATEGORIZE
    rm PrinceEdwardIsland.txt
    unset PRINCEEDWARDISLAND
  fi

  SASKATCHEWAN=$(egrep -i "$KEYWORDS_SASKATCHEWAN" "$NEWPAGES" | egrep -iv "$KEYWORDS_SASKATCHEWAN_EXCLUDE")

  if [ "$SASKATCHEWAN" != "" ];
  then
    printf "%s" "$SASKATCHEWAN" > Saskatchewan.txt
    export CATFILE="Saskatchewan.txt"
    export CATNAME="Saskatchewan"
    $CATEGORIZE
    rm Saskatchewan.txt
    unset SASKATCHEWAN
  fi

  REGINA=$(egrep -i "$KEYWORDS_REGINA" "$NEWPAGES" | egrep -iv "$KEYWORDS_REGINA_EXCLUDE")

  if [ "$REGINA" != "" ];
  then
    printf "%s" "$REGINA" > Regina.txt
    export CATFILE="Regina.txt"
    export CATNAME="Regina"
    $CATEGORIZE
    rm Regina.txt
    unset REGINA
  fi

  SASKATOON=$(egrep -i "$KEYWORDS_SASKATOON" "$NEWPAGES")

  if [ "$SASKATOON" != "" ];
  then
    printf "%s" "$SASKATOON" > Saskatoon.txt
    export CATFILE="Saskatoon.txt"
    export CATNAME="Saskatoon"
    $CATEGORIZE
    rm Saskatoon.txt
    unset SASKATOON
  fi

  ALBERTA=$(egrep -i "$KEYWORDS_ALBERTA" "$NEWPAGES" | egrep -iv "$KEYWORDS_ALBERTA_EXCLUDE")

  if [ "$ALBERTA" != "" ];
  then
    printf "%s" "$ALBERTA" > Alberta.txt
    export CATFILE="Alberta.txt"
    export CATNAME="Alberta"
    $CATEGORIZE
    rm Alberta.txt
    unset ALBERTA
  fi

  EDMONTON=$(egrep -i "$KEYWORDS_EDMONTON" "$NEWPAGES")

  if [ "$EDMONTON" != "" ];
  then
    printf "%s" "$EDMONTON" > Edmonton.txt
    export CATFILE="Edmonton.txt"
    export CATNAME="Edmonton"
    $CATEGORIZE
    rm Edmonton.txt
    unset EDMONTON
  fi

  CALGARY=$(egrep -i "$KEYWORDS_CALGARY" "$NEWPAGES")

  if [ "$CALGARY" != "" ];
  then
    printf "%s" "$CALGARY" > Calgary.txt
    export CATFILE="Calgary.txt"
    export CATNAME="Calgary"
    $CATEGORIZE
    rm Calgary.txt
    unset CALGARY
  fi

  NEWFOUNDLANDANDLABRADOR=$(egrep -i "$KEYWORDS_NEWFOUNDLANDANDLABRADOR" "$NEWPAGES" | egrep -iv "$KEYWORDS_NEWFOUNDLANDANDLABRADOR_EXCLUDE")

  if [ "$NEWFOUNDLANDANDLABRADOR" != "" ];
  then
    printf "%s" "$NEWFOUNDLANDANDLABRADOR" > Newfoundland.txt
    export CATFILE="Newfoundland.txt"
    export CATNAME="Newfoundland and Labrador"
    $CATEGORIZE
    rm Newfoundland.txt
    unset NEWFOUNDLANDANDLABRADOR
  fi

  NORTHWESTTERRITORIES=$(egrep -i "$KEYWORDS_NORTHWESTTERRITORIES" "$NEWPAGES" | egrep -iv "$KEYWORDS_NORTHWESTTERRITORIES_EXCLUDE")

  if [ "$NORTHWESTTERRITORIES" != "" ];
  then
    printf "%s" "$NORTHWESTTERRITORIES" > NorthwestTerritories.txt
    export CATFILE="NorthwestTerritories.txt"
    export CATNAME="Northwest Territories"
    $CATEGORIZE
    rm NorthwestTerritories.txt
    unset NORTHWESTTERRITORIES
  fi

  YELLOWKNIFE=$(egrep -i "$KEYWORDS_YELLOWKNIFE" "$NEWPAGES")

  if [ "$YELLOWKNIFE" != "" ];
  then
    printf "%s" "$YELLOWKNIFE" > Yellowknife.txt
    export CATFILE="Yellowknife.txt"
    export CATNAME="Yellowknife"
    $CATEGORIZE
    rm Yellowknife.txt
    unset YELLOWKNIFE
  fi

  YUKON=$(egrep -i "$KEYWORDS_YUKON" "$NEWPAGES" | egrep -iv "$KEYWORDS_YUKON_EXCLUDE")

  if [ "$YUKON" != "" ];
  then
    printf "%s" "$YUKON" > Yukon.txt
    export CATFILE="Yukon.txt"
    export CATNAME="Yukon"
    $CATEGORIZE
    rm Yukon.txt
    unset YUKON
  fi

  NUNAVUT=$(egrep -i "$KEYWORDS_NUNAVUT" "$NEWPAGES")

  if [ "$NUNAVUT" != "" ];
  then
    printf "%s" "$NUNAVUT" > Nunavut.txt
    export CATFILE="Nunavut.txt"
    export CATNAME="Nunavut"
    $CATEGORIZE
    rm Nunavut.txt
    unset NUNAVUT
  fi

  debug_end "Canada"

fi