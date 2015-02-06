#!/bin/bash

KEYWORDS_RUNESCAPE_PLACES="Al(| )Kharid|Ardougne|Barbarian(| )Village|Burthorpe|Braindeath(| )Island|Daemonheim|dwarven(| )mine|ectofuntus|Edgeville|\bEntrana|Falador|God(| )Wars(| )Dungeon|Gunnar's(| )Ground|Gunnarsgrunn|Karamja|Kharidian(| )Desert|Lumbridge|Shilo(| )Village|Soul(| )Wars|Varrock"
KEYWORDS_RUNESCAPE_NPC="Sir(| )Amik(| )Varze|Melzar|Zuriel|Turael|Elvarg|Abbess(| )Benita|\bAberab|50\%(| )Luke|Redbeard(| )Frank"
KEYWORDS_RUNESCAPE_QUESTS="Stealing(| )Creation"
KEYWORDS_RUNESCAPE_WEAPONS="(addy|rune|dragon|adamant)(| )(longsword|kite|scimitar|scimmy)|(abyssal|abby)(| )whip|(obsidian|obby)(| )maul"

export KEYWORDS_MMORPG_RUNESCAPE="$KEYWORDS_RUNESCAPE_PLACES|$KEYWORDS_RUNESCAPE_NPC|$KEYWORDS_RUNESCAPE_QUESTS|$KEYWORDS_RUNESCAPE_WEAPONS|Rune(| )Scape|strength potion|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos)|Third Age Arm(or|our)|zammy|full sara|(king|queen) black dragon|corporeal beast|cockroach (soldier|worker|drone)|strength pure|abyssal demon|(air|water|earth|fire|Mind|Body|Chaos|Law|Blood|Soul|Cosmic|Death|Nature)(| )(rune|talisman|altar)|Fremen(|n)ik|\bStatius|Dungeoneering|Fractite|Evolution of Combat|Dagannoth|skill(| )cape|abyssal(| )orb"


if [ "$1" == "" ];
then 

  debug_start "RuneScape"

  RUNESCAPE=$(egrep -i "$KEYWORDS_MMORPG_RUNESCAPE" "$NEWPAGES")

  categorize "RUNESCAPE" "RuneScape"

  debug_end "RuneScape"

fi