#!/bin/bash

KEYWORDS_RUNESCAPE_PLACES="Lumbridge|Falador|Karamja|Daemonheim|Varrock|Edgeville|God Wars Dungeon|ectofuntus|Shilo Village|Soul Wars|Al(| )Kharid|Kharidian(| )Desert|\bEntrana"


export KEYWORDS_MMORPG_RUNESCAPE="$KEYWORDS_RUNESCAPE_PLACES|RuneScape|Rune scape|rune longsword|rune kite|Elvarg|strength potion|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos)|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos).+godsword|Third Age Arm(or|our)|(abyssal|abby) whip|(addy|rune|dragon) kite|(rune|dragon) (scimitar|scimmy)|zammy|full sara|(obsidian|obby) maul|(king|queen) black dragon|corporeal beast|cockroach (soldier|worker|drone)|strength pure|abyssal demon|(air|water|earth|fire|Mind|Body|Chaos|Law|Blood|Soul|Cosmic|Death|Nature)(| )(rune|talisman|altar)|Fremen(|n)ik|Zuriel|Statius|Dungeoneering|Fractite|Evolution of Combat|Dagannoth|skill(| )cape|Melzar"


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