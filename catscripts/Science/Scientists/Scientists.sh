#!/bin/bash

KEYWORDS_STEPHENHAWKING="Stephen(| )Hawking"
KEYWORDS_CHARLESDARWIN="Charles(| )Darwin"
KEYWORDS_LEONARDODAVINCI="Leonardo(| )da(| )Vinci"
KEYWORDS_MARIECURIE="Marie(| )Curie"
KEYWORDS_ISAACNEWTON="Isaac(| )Newton"
KEYWORDS_GREGORMENDEL="Mendel(|s)\b"
KEYWORDS_SCIENTISTS_ALL="$KEYWORDS_STEPHENHAWKING|$KEYWORDS_CHARLESDARWIN|$KEYWORDS_LEONARDODAVINCI|$KEYWORDS_MARIECURIE|$KEYWORDS_ISAACNEWTON|$KEYWORDS_GREGORMENDEL"

if [ "$1" == "" ];
then

  debug_start "Scientists"

  HAWKING=$(egrep -i "$KEYWORDS_STEPHENHAWKING" "$NEWPAGES")
  DARWIN=$(egrep -i "$KEYWORDS_CHARLESDARWIN" "$NEWPAGES")
  DAVINCI=$(egrep -i "$KEYWORDS_LEONARDODAVINCI" "$NEWPAGES")
  CURIE=$(egrep -i "$KEYWORDS_MARIECURIE" "$NEWPAGES")
  NEWTON=$(egrep -i "$KEYWORDS_ISAACNEWTON" "$NEWPAGES")
  MENDEL=$(egrep -i "$KEYWORDS_GREGORMENDEL" "$NEWPAGES")

  categorize "HAWKING" "Stephen Hawking"
  categorize "DARWIN" "Charles Darwin"
  categorize "DAVINCI" "Leonardo da Vinci"
  categorize "CURIE" "Marie Curie"
  categorize "MENDEL" "Gregor Mendel"
  categorize "NEWTON" "Isaac Newton"

  debug_end "Scientists"

fi