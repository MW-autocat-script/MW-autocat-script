#!/bin/bash

KEYWORDS_RUNESCAPE_PLACES="Al(| )Kharid|Ardougne|Barbarian(| )Village|Burthorpe|Braindeath(| )Island|Daemonheim|dwarven(| )mine|ectofuntus|Edgeville|\bEntrana|Falador|God(| )Wars(| )Dungeon|Gunnar's(| )Ground|Gunnarsgrunn|Karamja|Kharidian(| )Desert|Lumbridge|Shilo(| )Village|Soul(| )Wars|Varrock"
KEYWORDS_RUNESCAPE_NPC="Sir(| )Amik(| )Varze|Melzar|Zuriel|Turael|Elvarg|Abbess(| )Benita|\bAberab|50\%(| )Luke|Redbeard(| )Frank"

export KEYWORDS_MMORPG_RUNESCAPE="$KEYWORDS_RUNESCAPE_PLACES|$KEYWORDS_RUNESCAPE_NPC|RuneScape|Rune scape|rune longsword|rune kite|strength potion|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos)|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos).+godsword|Third Age Arm(or|our)|(abyssal|abby) whip|(addy|rune|dragon) kite|(rune|dragon) (scimitar|scimmy)|zammy|full sara|(obsidian|obby) maul|(king|queen) black dragon|corporeal beast|cockroach (soldier|worker|drone)|strength pure|abyssal demon|(air|water|earth|fire|Mind|Body|Chaos|Law|Blood|Soul|Cosmic|Death|Nature)(| )(rune|talisman|altar)|Fremen(|n)ik|\bStatius|Dungeoneering|Fractite|Evolution of Combat|Dagannoth|skill(| )cape|abyssal(| )orb"


if [ "$1" == "" ];
then 

  debug_start "RuneScape"

  RUNESCAPE=$(egrep -i "$KEYWORDS_MMORPG_RUNESCAPE" "$NEWPAGES")

  if [ "$RUNESCAPE" != "" ];
  then
    printf "%s" "$RUNESCAPE" > RuneScape.txt
    export CATFILE="RuneScape.txt"
    export CATNAME="RuneScape"
    $CATEGORIZE
    rm RuneScape.txt
    unset RUNESCAPE
  fi

  debug_end "RuneScape"

fi