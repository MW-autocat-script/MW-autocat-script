#!/bin/bash

egrep -i 'RuneScape|Rune scape|rune longsword|rune kite|Lumbridge|Falador|Karamja|Daemonheim|Varrock|Edgeville|Elvarg|strength potion|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos)|(Zamorak|Armadyl|Zaros|Saradomin|Guthix|Bandos).+godsword|Third Age Arm(or|our)|(abyssal|abby) whip|(addy|rune|dragon) kite|(rune|dragon) (scimitar|scimmy)|zammy|full sara|(obsidian|obby) maul|(king|queen) black dragon|corporeal beast|cockroach (soldier|worker|drone)|strength pure|God Wars Dungeon|ectofuntus' newpages.txt >> RuneScape.txt

RUNESCAPE=`stat --print=%s RuneScape.txt`

if [ $RUNESCAPE -ne 0 ];
then
  export CATFILE="RuneScape.txt"
  export CATNAME="RuneScape"
  ./catscripts/Categorize.sh
fi

rm RuneScape.txt