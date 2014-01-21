#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Countries\n" 
fi

COUNTRYDIR="./catscripts/Government/Countries"

$COUNTRYDIR/Afghanistan/Afghanistan.sh
$COUNTRYDIR/Albania/Albania.sh
$COUNTRYDIR/Algeria/Algeria.sh
$COUNTRYDIR/Angola/Angola.sh
$COUNTRYDIR/Argentina/Argentina.sh
$COUNTRYDIR/Armenia/Armenia.sh
$COUNTRYDIR/Australia/Australia.sh
$COUNTRYDIR/Austria/Austria.sh
$COUNTRYDIR/Azerbaijan/Azerbaijan.sh #KEYWORDS_AZERBAIJAN_ALL
$COUNTRYDIR/Bahamas/Bahamas.sh
$COUNTRYDIR/Bahrain/Bahrain.sh
$COUNTRYDIR/Bangladesh/Bangladesh.sh
$COUNTRYDIR/Barbados/Barbados.sh
$COUNTRYDIR/Belarus/Belarus.sh
$COUNTRYDIR/Belgium/Belgium.sh
$COUNTRYDIR/Belize/Belize.sh
$COUNTRYDIR/Benin/Benin.sh
$COUNTRYDIR/Bolivia/Bolivia.sh
$COUNTRYDIR/Brazil/Brazil.sh
$COUNTRYDIR/Brunei/Brunei.sh
$COUNTRYDIR/Bulgaria/Bulgaria.sh
$COUNTRYDIR/Cambodia/Cambodia.sh
$COUNTRYDIR/Cameroon/Cameroon.sh
$COUNTRYDIR/Canada/Canada.sh
$COUNTRYDIR/Chile/Chile.sh
$COUNTRYDIR/China/China.sh
$COUNTRYDIR/Costa_Rica/CostaRica.sh
$COUNTRYDIR/Côte\ d\'Ivoire/Côte_d\'Ivoire.sh
$COUNTRYDIR/Cuba/Cuba.sh
$COUNTRYDIR/Cyprus/Cyprus.sh
$COUNTRYDIR/Denmark/Denmark.sh
$COUNTRYDIR/Dominican_Republic/DominicanRepublic.sh
$COUNTRYDIR/Ecuador/Ecuador.sh
$COUNTRYDIR/Egypt/Egypt.sh
$COUNTRYDIR/El_Salvador/ElSalvador.sh
$COUNTRYDIR/England/England.sh
$COUNTRYDIR/Ethiopia/Ethiopia.sh
$COUNTRYDIR/Fiji/Fiji.sh
$COUNTRYDIR/Finland/Finland.sh
$COUNTRYDIR/France/France.sh
$COUNTRYDIR/Germany/Germany.sh
$COUNTRYDIR/Ghana/Ghana.sh
$COUNTRYDIR/Greece/Greece.sh
$COUNTRYDIR/Guatemala/Guatemala.sh
$COUNTRYDIR/Haiti/Haiti.sh
$COUNTRYDIR/Honduras/Honduras.sh
$COUNTRYDIR/Hungary/Hungary.sh
$COUNTRYDIR/Iceland/Iceland.sh
$COUNTRYDIR/India/India.sh
$COUNTRYDIR/Indonesia/Indonesia.sh
$COUNTRYDIR/Iran/Iran.sh
$COUNTRYDIR/Iraq/Iraq.sh
$COUNTRYDIR/Ireland/Ireland.sh
$COUNTRYDIR/Israel/Israel.sh
$COUNTRYDIR/Italy/Italy.sh
$COUNTRYDIR/Jamaica/Jamaica.sh
$COUNTRYDIR/Japan/Japan.sh
$COUNTRYDIR/Jordan/Jordan.sh
$COUNTRYDIR/Kazakhstan/Kazakhstan.sh
$COUNTRYDIR/Kenya/Kenya.sh
$COUNTRYDIR/Kyrgyzstan/Kyrgyzstan.sh
$COUNTRYDIR/Laos/Laos.sh
$COUNTRYDIR/Latvia/Latvia.sh
$COUNTRYDIR/Lebanon/Lebanon.sh
$COUNTRYDIR/Lesotho/Lesotho.sh
$COUNTRYDIR/Libya/Libya.sh
$COUNTRYDIR/Lithuania/Lithuania.sh
$COUNTRYDIR/Luxembourg/Luxembourg.sh
$COUNTRYDIR/Macedonia/Macedonia.sh
$COUNTRYDIR/Madagascar/Madagascar.sh
$COUNTRYDIR/Malaysia/Malaysia.sh
$COUNTRYDIR/Mali/Mali.sh
$COUNTRYDIR/Mexico/Mexico.sh
$COUNTRYDIR/Moldova/Moldova.sh
$COUNTRYDIR/Mongolia/Mongolia.sh
$COUNTRYDIR/Monaco/Monaco.sh
$COUNTRYDIR/Morocco/Morocco.sh
$COUNTRYDIR/Namibia/Namibia.sh
$COUNTRYDIR/Nepal/Nepal.sh
$COUNTRYDIR/New_Zealand/NewZealand.sh
$COUNTRYDIR/Nicaragua/Nicaragua.sh
$COUNTRYDIR/Niger/Niger.sh #KEYWORDS_NIGER_ALL
$COUNTRYDIR/Nigeria/Nigeria.sh
$COUNTRYDIR/Northern_Ireland/NorthernIreland.sh
$COUNTRYDIR/North_Korea/NorthKorea.sh
$COUNTRYDIR/Norway/Norway.sh
$COUNTRYDIR/Pakistan/Pakistan.sh
$COUNTRYDIR/Panama/Panama.sh
$COUNTRYDIR/Papua_New_Guinea/PapuaNewGuinea.sh #KEYWORDS_PAPUANEWGUINEA_ALL
$COUNTRYDIR/Paraguay/Paraguay.sh
$COUNTRYDIR/Peru/Peru.sh
$COUNTRYDIR/Philippines/Philippines.sh
$COUNTRYDIR/Poland/Poland.sh
$COUNTRYDIR/Portugal/Portugal.sh
$COUNTRYDIR/Romania/Romania.sh
$COUNTRYDIR/Russia/Russia.sh
$COUNTRYDIR/Singapore/Singapore.sh
$COUNTRYDIR/South_Africa/SouthAfrica.sh
$COUNTRYDIR/Spain/Spain.sh
$COUNTRYDIR/Saudi_Arabia/SaudiArabia.sh
$COUNTRYDIR/Scotland/Scotland.sh
$COUNTRYDIR/Slovenia/Slovenia.sh #KEYWORDS_SLOVENIA_ALL
$COUNTRYDIR/South_Korea/SouthKorea.sh
$COUNTRYDIR/Sri_Lanka/SriLanka.sh
$COUNTRYDIR/Sweden/Sweden.sh
$COUNTRYDIR/Switzerland/Switzerland.sh
$COUNTRYDIR/Tanzia/Tanzia.sh
$COUNTRYDIR/Tunisia/Tunisia.sh
$COUNTRYDIR/Wales/Wales.sh
$COUNTRYDIR/Uganda/Uganda.sh
$COUNTRYDIR/United_Arab_Emirates/UAE.sh
$COUNTRYDIR/United_States/UnitedStates.sh
$COUNTRYDIR/Unrecognized_countries/Unrecognized.sh
$COUNTRYDIR/Venezuela/Venezuela.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing countries\n" 
fi