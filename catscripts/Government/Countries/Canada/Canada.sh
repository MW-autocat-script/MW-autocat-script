#!/bin/bash

KEYWORDS_CANADA="Canada|Canadian"


KEYWORDS_ONTARIO="Ontario"
KEYWORDS_TORONTO="Toronto"
KEYWORDS_OTTAWA="Ottawa"
KEYWORDS_ONTARIO_EXCLUDE="Lake(| )Ontario|$KEYWORDS_TORONTO|$KEYWORDS_OTTAWA"
KEYWORDS_ONTARIO_ALL="$KEYWORDS_ONTARIO|$KEYWORDS_TORONTO|$KEYWORDS_OTTAWA"

KEYWORDS_QUEBEC_PROVINCE="Quebec(| )province|Province(| )of(| )Quebec"
KEYWORDS_QUEBEC_CITY="Quebec(|,)(| )Qubec|Quebec(| )City" #This is going to make my head hurt
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
KEYWORDS_VICTORIABC="Victoria(|,)(| )(B(|\.)C|British(| )Columbia"
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
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Canada\n"
  fi

  CANADA=`egrep -i "$KEYWORDS_CANADA" newpages.txt | egrep -iv "$KEYWORDS_CANADA_EXCLUDE"`
  ONTARIO=`egrep -i "$KEYWORDS_ONTARIO" newpages.txt | egrep -iv "$KEYWORDS_ONTARIO_EXCLUDE"`
  TORONTO=`egrep -i "$KEYWORDS_TORONTO" newpages.txt`
  OTTAWA=`egrep -i "$KEYWORDS_OTTAWA" newpages.txt`
  QUEBECPROVINCE=`egrep -i "$KEYWORDS_QUEBEC_PROVINCE" newpages.txt | egrep -iv "$KEYWORDS_QUEBEC_PROVINCE_EXCLUDE"`
  QUEBECCITY=`egrep -i "$KEYWORDS_QUEBEC_CITY" newpages.txt`
  MONTREAL=`egrep -i "$KEYWORDS_MONTREAL" newpages.txt`
  NOVASCOTIA=`egrep -i "$KEYWORDS_NOVASCOTIA" newpages.txt | egrep -iv "$KEYWORDS_NOVASCOTIA_EXCLUDE"`
  HALIFAX=`egrep -i "$KEYWORDS_HALIFAX" newpages.txt`
  NEWBRUNSWICK=`egrep -i "$KEYWORDS_NEWBRUNSWICK" newpages.txt`
  MANITOBA=`egrep -i "$KEYWORDS_MANITOBA" newpages.txt | egrep -iv "$KEYWORDS_MANITOBA_EXCLUDE"`
  WINNIPEG=`egrep -i "$KEYWORDS_WINNIPEG" newpages.txt`
  BRITISHCOLUMBIA=`egrep -i "$KEYWORDS_BRITISHCOLUMBIA" newpages.txt | egrep -iv "$KEYWORDS_BRITISHCOLUMBIA_EXCLUDE"`
  VICTORIABC=`egrep -i "$KEYWORDS_VICTORIABC" newpages.txt`
  VANCOUVER=`egrep -i "$KEYWORDS_VANCOUVER" newpages.txt`
  PRINCEEDWARDISLAND=`egrep -i "$KEYWORDS_PRINCEEDWARDISLAND" newpages.txt`
  SASKATCHEWAN=`egrep -i "$KEYWORDS_SASKATCHEWAN" newpages.txt | egrep -iv "$KEYWORDS_SASKATCHEWAN_EXCLUDE"`
  REGINA=`egrep -i "$KEYWORDS_REGINA" newpages.txt | egrep -iv "$KEYWORDS_REGINA_EXCLUDE"`
  SASKATOON=`egrep -i "$KEYWORDS_SASKATOON" newpages.txt`
  ALBERTA=`egrep -i "$KEYWORDS_ALBERTA" newpages.txt | egrep -iv "$KEYWORDS_ALBERTA_EXCLUDE"`
  EDMONTON=`egrep -i "$KEYWORDS_EDMONTON" newpages.txt`
  CALGARY=`egrep -i "$KEYWORDS_CALGARY" newpages.txt`
  NEWFOUNDLANDANDLABRADOR=`egrep -i "$KEYWORDS_NEWFOUNDLANDANDLABRADOR" newpages.txt | egrep -iv "$KEYWORDS_NEWFOUNDLANDANDLABRADOR_EXCLUDE"`
  NORTHWESTTERRITORIES=`egrep -i "$KEYWORDS_NORTHWESTTERRITORIES" newpages.txt | egrep -iv "$KEYWORDS_NORTHWESTTERRITORIES_EXCLUDE"`
  YELLOWKNIFE=`egrep -i "$KEYWORDS_YELLOWKNIFE" newpages.txt"`
  YUKON=`egrep -i "$KEYWORDS_YUKON" newpages.txt | egrep -iv "$KEYWORDS_YUKON_EXCLUDE"`
  NUNAVUT=`egrep -i "$KEYWORDS_NUNAVUT" newpages.txt`

  if [ "$CANADA" != "" ];
  then
    printf "$CANADA" > Canada.txt
    export CATFILE="Canada.txt"
    export CATNAME="Canada"
    $CATEGORIZE
    rm Canada.txt
    unset CANADA
  fi

  if [ "$ONTARIO" != "" ];
  then
    printf "$ONTARIO" > Ontario.txt
    export CATFILE="Ontario.txt"
    export CATNAME="Ontario province"
    $CATEGORIZE
    rm Ontario.txt
    unset ONTARIO
  fi

  if [ "$TORONTO" != "" ];
  then
    printf "$TORONTO" > Toronto.txt
    export CATFILE="Toronto.txt"
    export CATNAME="Toronto"
    $CATEGORIZE
    rm Toronto.txt
    unset TORONTO
  fi

  if [ "$OTTAWA" != "" ];
  then
    printf "$OTTAWA" > Ottawa.txt
    export CATFILE="Ottawa.txt"
    export CATNAME="Ottawa"
    $CATEGORIZE
    rm Ottawa.txt
    unset OTTAWA
  fi

  if [ "$QUEBECPROVINCE" != "" ];
  then
    printf "$QUEBECPROVINCE" > QuebecProvince.txt
    export CATFILE="QuebecProvince.txt"
    export CATNAME="Quebec province"
    $CATEGORIZE
    rm QuebecProvince.txt
    unset QUEBECPROVINCE
  fi

  if [ "$QUEBECCITY" != "" ];
  then
    printf "$QUEBECCITY" > QuebecCity.txt
    export CATFILE="QuebecCity.txt"
    export CATNAME="Quebec City"
    $CATEGORIZE
    rm QuebecCity.txt
    unset QUEBECCITY
  fi

  if [ "$MONTREAL" != "" ];
  then
    printf "$MONTREAL" > Montreal.txt
    export CATFILE="Montreal.txt"
    export CATNAME="Montreal"
    $CATEGORIZE
    rm Montreal.txt
    unset MONTREAL
  fi

  if [ "$NOVASCOTIA" != "" ];
  then
    printf "$NOVASCOTIA" > NovaScotia.txt
    export CATFILE="NovaScotia.txt"
    export CATNAME="Nova Scotia"
    $CATEGORIZE
    rm NovaScotia.txt
    unset NOVASCOTIA
  fi

  if [ "$HALIFAX" != "" ];
  then
    printf "$HALIFAX" > Halifax.txt
    export CATFILE="Halifax.txt"
    export CATNAME="Halifax"
    $CATEGORIZE
    rm Halifax.txt
    unset HALIFAX
  fi

  if [ "$NEWBRUNSWICK" != "" ];
  then
    printf "$NEWBRUNSWICK" > NewBrunswick.txt
    export CATFILE="NewBrunswick.txt"
    export CATNAME="New Brunswick"
    $CATEGORIZE
    rm NewBrunswick.txt
    unset NEWBRUNSWICK
  fi

  if [ "$MANITOBA" != "" ];
  then
    printf "$MANITOBA" > Manitoba.txt
    export CATFILE="Manitoba.txt"
    export CATNAME="Manitoba"
    $CATEGORIZE
    rm Manitoba.txt
    unset MANITOBA
  fi

  if [ "$WINNIPEG" != "" ];
  then
    printf "$WINNIPEG" > Winnipeg.txt
    export CATFILE="Winnipeg.txt"
    export CATNAME="Winnipeg"
    $CATEGORIZE
    rm Winnipeg.txt
    unset WINNIPEG
  fi

  if [ "$BRITISHCOLUMBIA" != "" ];
  then
    printf "$BRITISHCOLUMBIA" > BritishColumbia.txt
    export CATFILE="BritishColumbia.txt"
    export CATNAME="British Columbia"
    $CATEGORIZE
    rm BritishColumbia.txt
    unset BRITISHCOLUMBIA
  fi

  if [ "$VICTORIABC" != "" ];
  then
    printf "$VICTORIABC" > VictoriaBC.txt
    export CATFILE="VictoriaBC.txt"
    export CATNAME="Victoria, British Columbia"
    $CATEGORIZE
    rm VictoriaBC.txt
    unset VICTORIABC
  fi

  if [ "$VANCOUVER" != "" ];
  then
    printf "$VANCOUVER" > Vancouver.txt
    export CATFILE="Vancouver.txt"
    export CATNAME="Vancouver"
    $CATEGORIZE
    rm Vancouver.txt
    unset VANCOUVER
  fi

  if [ "$PRINCEEDWARDISLAND" != "" ];
  then
    printf "$PRINCEEDWARDISLAND" > PrinceEdwardIsland.txt
    export CATFILE="PrinceEdwardIsland.txt"
    export CATNAME="Prince Edward Island"
    $CATEGORIZE
    rm PrinceEdwardIsland.txt
    unset PRINCEEDWARDISLAND
  fi

  if [ "$SASKATCHEWAN" != "" ];
  then
    printf "$SASKATCHEWAN" > Saskatchewan.txt
    export CATFILE="Saskatchewan.txt"
    export CATNAME="Saskatchewan"
    $CATEGORIZE
    rm Saskatchewan.txt
    unset SASKATCHEWAN
  fi

  if [ "$REGINA" != "" ];
  then
    printf "$REGINA" > Regina.txt
    export CATFILE="Regina.txt"
    export CATNAME="Regina"
    $CATEGORIZE
    rm Regina.txt
    unset REGINA
  fi

  if [ "$SASKATOON" != "" ];
  then
    printf "$SASKATOON" > Saskatoon.txt
    export CATFILE="Saskatoon.txt"
    export CATNAME="Saskatoon"
    $CATEGORIZE
    rm Saskatoon.txt
    unset SASKATOON
  fi

  if [ "$ALBERTA" != "" ];
  then
    printf "$ALBERTA" > Alberta.txt
    export CATFILE="Alberta.txt"
    export CATNAME="Alberta"
    $CATEGORIZE
    rm Alberta.txt
    unset ALBERTA
  fi

  if [ "$EDMONTON" != "" ];
  then
    printf "$EDMONTON" > Edmonton.txt
    export CATFILE="Edmonton.txt"
    export CATNAME="Edmonton"
    $CATEGORIZE
    rm Edmonton.txt
    unset EDMONTON
  fi

  if [ "$CALGARY" != "" ];
  then
    printf "$CALGARY" > Calgary.txt
    export CATFILE="Calgary.txt"
    export CATNAME="Calgary"
    $CATEGORIZE
    rm Calgary.txt
    unset CALGARY
  fi

  if [ "$NEWFOUNDLANDANDLABRADOR" != "" ];
  then
    printf "$NEWFOUNDLANDANDLABRADOR" > Newfoundland.txt
    export CATFILE="Newfoundland.txt"
    export CATNAME="Newfoundland and Labrador"
    $CATEGORIZE
    rm Newfoundland.txt
    unset NEWFOUNDLANDANDLABRADOR
  fi

  if [ "$NORTHWESTTERRITORIES" != "" ];
  then
    printf "$NORTHWESTTERRITORIES" > NorthwestTerritories.txt
    export CATFILE="NorthwestTerritories.txt"
    export CATNAME="Northwest Territories"
    $CATEGORIZE
    rm NorthwestTerritories.txt
    unset NORTHWESTTERRITORIES
  fi

  if [ "$YELLOWKNIFE" != "" ];
  then
    printf "$YELLOWKNIFE" > Yellowknife.txt
    export CATFILE="Yellowknife.txt"
    export CATNAME="Yellowknife"
    $CATEGORIZE
    rm Yellowknife.txt
    unset YELLOWKNIFE
  fi

  if [ "$YUKON" != "" ];
  then
    printf "$YUKON" > Yukon.txt
    export CATFILE="Yukon.txt"
    export CATNAME="Yukon"
    $CATEGORIZE
    rm Yukon.txt
    unset YUKON
  fi

  if [ "$NUNAVUT" != "" ];
  then
    printf "$NUNAVUT" > Nunavut.txt
    export CATFILE="Nunavut.txt"
    export CATNAME="Nunavut"
    $CATEGORIZE
    rm Nunavut.txt
    unset NUNAVUT
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Canada\n"
  fi


fi