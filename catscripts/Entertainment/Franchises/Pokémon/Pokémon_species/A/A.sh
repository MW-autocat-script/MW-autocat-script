#!/bin/bash
#Pokemon species by name, starting with the letter A

KEYWORDS_ABOMASNOW="Abomasnow"
KEYWORDS_ABRA="\bAbra\b"
KEYWORDS_ABSOL="\bAbsol\b"
KEYWORDS_ACCELGOR="\bAccelgor"
KEYWORDS_AERODACTYL="\bAerodactyl"
KEYWORDS_AGEISLASH="Aegislash"
KEYWORDS_AGGRON="\bAggron"
KEYWORDS_AIPOM="\bAipom"
KEYWORDS_ALAKAZAM="\bAlakazam"
KEYWORDS_ALOMOMOLA="\bAlomomola"
KEYWORDS_ALTARIA="\bAltaria"
KEYWORDS_AMAURA="Amaura"
KEYWORDS_AMBIPOM="\bAmbipom"
KEYWORDS_AMOONGUSS="\bAmoonguss"
KEYWORDS_AMPHAROS="\bAmpharos"
KEYWORDS_ANORITH="\bAnorith"
KEYWORDS_ARBOK="\bArbok"
KEYWORDS_ARCANINE="\bArcanine"
KEYWORDS_ARCEUS="\bArceus"
KEYWORDS_ARCHEN="\bArchen\b"
KEYWORDS_ARCHEOPS="\bArcheops"
KEYWORDS_ARIADOS="\bAriados"
KEYWORDS_ARMALDO="\bArmaldo"
KEYWORDS_AROMATISSE="Aromatisse"
KEYWORDS_ARON="\bAron\b|\bArons\b"
KEYWORDS_ARTICUNO="\bArticuno"
KEYWORDS_AUDINO="\bAudino"
KEYWORDS_AURORUS="Aurorus"
KEYWORDS_AVALUGG="Avalugg"
KEYWORDS_AXEW="\bAxew"
KEYWORDS_AZELF="\bAzelf"
KEYWORDS_AZUMARILL="\bAzumarill"
KEYWORDS_AZURILL="\bAzurill"
KEYWORDS_POKEMONSPECIES_A="$KEYWORDS_ABOMASNOW|$KEYWORDS_ABRA|$KEYWORDS_ABSOL|$KEYWORDS_ACCELGOR|$KEYWORDS_AGEISLASH|$KEYWORDS_AERODACTYL|$KEYWORDS_AGGRON|$KEYWORDS_AIPOM|$KEYWORDS_ALAKAZAM|$KEYWORDS_ALOMOMOLA|$KEYWORDS_ALTARIA|$KEYWORDS_AMBIPOM|$KEYWORDS_AMOONGUSS|$KEYWORDS_AMPHAROS|$KEYWORDS_ANORITH|$KEYWORDS_ARBOK|$KEYWORDS_ARCANINE|$KEYWORDS_ARCEUS|$KEYWORDS_ARCHEN|$KEYWORDS_ARCHEOPS|$KEYWORDS_ARIADOS|$KEYWORDS_ARMALDO|$KEYWORDS_ARON|$KEYWORDS_ARTICUNO|$KEYWORDS_AUDINO|$KEYWORDS_AUDINO|$KEYWORDS_AXEW|$KEYWORDS_AZELF|$KEYWORDS_AZUMARILL|$KEYWORDS_AZUMARILL|$KEYWORDS_AZURILL"

if [ "$1" == "" ];
then

  debug_start "Pokemon 'A' script"

  ABOMASNOW=$(egrep -i "$KEYWORDS_ABOMASNOW" "$NEWPAGES")
  ABRA=$(egrep -i "$KEYWORDS_ABRA" "$NEWPAGES") 
  ABSOL=$(egrep -i "$KEYWORDS_ABSOL" "$NEWPAGES") 
  ACCELGOR=$(egrep -i "$KEYWORDS_ACCELGOR" "$NEWPAGES")
  AEGISLASH=$(egrep -i "$KEYWORDS_AGEISLASH" "$NEWPAGES")
  AERODACTYL=$(egrep -i "$KEYWORDS_AERODACTYL" "$NEWPAGES")
  AGGRON=$(egrep -i "$KEYWORDS_AGGRON" "$NEWPAGES") 
  AIPOM=$(egrep -i "$KEYWORDS_AIPOM" "$NEWPAGES") 
  ALAKAZAM=$(egrep -i "$KEYWORDS_ALAKAZAM" "$NEWPAGES") 
  ALOMOMOLA=$(egrep -i "$KEYWORDS_ALOMOMOLA" "$NEWPAGES") 
  ALTARIA=$(egrep -i "$KEYWORDS_ALTARIA" "$NEWPAGES")
  AMAURA=$(egrep -i "$KEYWORDS_AMAURA" "$NEWPAGES")
  AMBIPOM=$(egrep -i "$KEYWORDS_AMBIPOM" "$NEWPAGES") 
  AMOONGUSS=$(egrep -i "$KEYWORDS_AMOONGUSS" "$NEWPAGES") 
  AMPHAROS=$(egrep -i "$KEYWORDS_AMPHAROS" "$NEWPAGES") 
  ANORITH=$(egrep -i "$KEYWORDS_ANORITH" "$NEWPAGES") 
  ARBOK=$(egrep -i "$KEYWORDS_ARBOK" "$NEWPAGES") 
  ARCANINE=$(egrep -i "$KEYWORDS_ARCANINE" "$NEWPAGES") 
  ARCEUS=$(egrep -i "$KEYWORDS_ARCEUS" "$NEWPAGES") 
  ARCHEN=$(egrep -i "$KEYWORDS_ARCHEN" "$NEWPAGES") 
  ARCHEOPS=$(egrep -i "$KEYWORDS_ARCHEOPS" "$NEWPAGES") 
  ARIADOS=$(egrep -i "$KEYWORDS_ARIADOS" "$NEWPAGES") 
  ARMALDO=$(egrep -i "$KEYWORDS_ARMALDO" "$NEWPAGES")
  AROMATISSE=$(egrep -i "$KEYWORDS_AROMATISSE" "$NEWPAGES")
  ARON=$(egrep -i "$KEYWORDS_ARON" "$NEWPAGES") 
  ARTICUNO=$(egrep -i "$KEYWORDS_ARTICUNO" "$NEWPAGES") 
  AUDINO=$(egrep -i "$KEYWORDS_AUDINO" "$NEWPAGES")
  AURORUS=$(egrep -i "$KEYWORDS_AURORUS" "$NEWPAGES")
  AVALUGG=$(egrep -i "$KEYWORDS_AVALUGG" "$NEWPAGES")
  AXEW=$(egrep -i "$KEYWORDS_AXEW" "$NEWPAGES") 
  AZELF=$(egrep -i "$KEYWORDS_AZELF" "$NEWPAGES") 
  AZUMARILL=$(egrep -i "$KEYWORDS_AZUMARILL" "$NEWPAGES") 
  AZURILL=$(egrep -i "$KEYWORDS_AZURILL" "$NEWPAGES")

  categorize "ABOMASNOW" "Abomasnow"
  categorize "ABRA" "Abra"
  categorize "ABSOL" "Absol"
  categorize "ACCELGOR" "Accelgor"
  categorize "AEGISLASH" "Aegislash"
  categorize "AERODACTYL" "Aerodactyl"
  categorize "AGGRON" "Aggron"
  categorize "AIPOM" "Aipom"
  categorize "ALAKAZAM" "Alakazam"
  categorize "ALOMOMOLA" "Alomomola"
  categorize "ALTARIA" "Altaria"
  categorize "AMAURA" "Amaura"
  categorize "AMBIPOM" "Ambipom"
  categorize "AMOONGUSS" "Amoonguss"
  categorize "AMPHAROS" "Ampharos"
  categorize "ANORITH" "Anorith"
  categorize "ARBOK" "Arbok"
  categorize "ARCANINE" "Arcanine"
  categorize "ARCEUS" "Arceus"
  categorize "ARCHEN" "Archen"
  categorize "ARCHEOPS" "Archeops"
  categorize "ARIADOS" "Ariados"
  categorize "ARMALDO" "Armaldo"
  categorize "AROMATISSE" "Aromatisse"
  categorize "ARON" "Aron"
  categorize "ARTICUNO" "Articuno"
  categorize "AUDINO" "Audino"
  categorize "AURORUS" "Aurorus"
  categorize "AVALUGG" "Avalugg"
  categorize "AXEW" "Axew"
  categorize "AZELF" "Azelf"
  categorize "AZUMARILL" "Azumarill"
  categorize "AZURILL" "Azurill"

  debug_end "Pokemon 'A' script"

fi