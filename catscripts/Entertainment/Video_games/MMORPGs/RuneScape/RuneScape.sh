#!/bin/bash

KEYWORDS_RUNESCAPE_PLACES="Al(| )Kharid|Ardougne|Barbarian(| )Village|Burthorpe|Braindeath(| )Island|Daemonheim|dwarven(| )mine|ectofuntus|Edgeville|\bEntrana|Falador|God(| )Wars(| )Dungeon|Gunnar's(| )Ground|Gunnarsgrunn|Karamja|Kharidian(| )Desert|Lumbridge|Shilo(| )Village|Soul(| )Wars|Varrock"
KEYWORDS_RUNESCAPE_NPC="Sir(| )Amik(| )Varze|Melzar|Zuriel|Turael|Elvarg|Abbess(| )Benita|\bAberab|50\%(| )Luke|Redbeard(| )Frank"

export KEYWORDS_MMORPG_RUNESCAPE="$KEYWORDS_RUNESCAPE_PLACES|$KEYWORDS_RUNESCAPE_NPC|RuneScape|Rune scape|rune longsword|rune kite|strength potion|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos)|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos).+godsword|Third Age Arm(or|our)|(abyssal|abby) whip|(addy|rune|dragon) kite|(rune|dragon) (scimitar|scimmy)|zammy|full sara|(obsidian|obby) maul|(king|queen) black dragon|corporeal beast|cockroach (soldier|worker|drone)|strength pure|abyssal demon|(air|water|earth|fire|Mind|Body|Chaos|Law|Blood|Soul|Cosmic|Death|Nature)(| )(rune|talisman|altar)|Fremen(|n)ik|Statius|Dungeoneering|Fractite|Evolution of Combat|Dagannoth|skill(| )cape"


if [ "$1" == "" ];
then 

egrep -i "$KEYWORDS_MMORPG_RUNESCAPE" newpages.txt >> RuneScape.txt

RUNESCAPE=`stat --print=%s RuneScape.txt`

if [ $RUNESCAPE -ne 0 ];
then
  export CATFILE="RuneScape.txt"
  export CATNAME="RuneScape"
  $CATEGORIZE
fi

rm RuneScape.txt

fi