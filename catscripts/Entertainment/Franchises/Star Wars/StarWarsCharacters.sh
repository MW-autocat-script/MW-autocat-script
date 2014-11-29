#!/bin/bash

KEYWORDS_CADBANE="Cad(| )Bane"
KEYWORDS_CHEWBACCA="Chewbacca"
KEYWORDS_BOBAFETT="Boba(| )Fett"
KEYWORDS_JANGOFETT="Jango(| )Fett"
KEYWORDS_JABBA="Jabba(| )the(| )Hutt|\bJabba(|s)\b"
KEYWORDS_KENOBI="Obi(|-| )wan|Kenobi"
KEYWORDS_STARKILLER="Galen(| )Marek|Starkiller"
KEYWORDS_DARTHMAUL="Darth(| )Maul"
KEYWORDS_SIDIOUS="Palpatine|\bSidious"
KEYWORDS_PLOKOON="Plo(| )Koon"
KEYWORDS_R2D2="R2(|-)D2"
KEYWORDS_DOOKU="Dooku"
KEYWORDS_KITFISTO="Kit(| )Fisto"
KEYWORDS_REVAN="\bRevan"
KEYWORDS_DARTHVADER="Anakin(| )Skywalker|Darth(| )Vader|\bVader(|s)\b"
KEYWORDS_LUKESKYWALKER="Luke(| )Skywalker"
KEYWORDS_MARAJADE="Mara(| )(Jade|Skywalker)"
KEYWORDS_ANAKINSOLO="Anakin(| )Solo"
KEYWORDS_HANSOLO="\bHan(| )Solo"
KEYWORDS_CAEDUS="Jacen(| )Solo|\bCaedus\b|Darth(| )Caedus"
KEYWORDS_LEIA="\bleia(| )\b"
KEYWORDS_AHSOKA="A(|h)soka"
KEYWORDS_THREEPIO="C(|-)3PO|Threepio"
KEYWORDS_WINDU="\bWindu(|s)\b|Mace(| )Windu"
KEYWORDS_YODA="\bYoda(|s)\b"
KEYWORDS_VENTRESS="Asajj|Ventress"

if [ "$1" == "" ];
then

  debug_start "Star Wars characters"

  CADBANE=$(egrep -i "$KEYWORDS_CADBANE" "$NEWPAGES")
  CHEWBACCA=$(egrep -i "$KEYWORDS_CHEWBACCA" "$NEWPAGES")
  BOBAFETT=$(egrep -i "$KEYWORDS_BOBAFETT" "$NEWPAGES")
  JANGOFETT=$(egrep -i "$KEYWORDS_JANGOFETT" "$NEWPAGES")
  FISTO=$(egrep -i "$KEYWORDS_KITFISTO" "$NEWPAGES")
  JABBA=$(egrep -i "$KEYWORDS_JABBA" "$NEWPAGES")
  KENOBI=$(egrep -i "$KEYWORDS_KENOBI" "$NEWPAGES")
  MAUL=$(egrep -i "$KEYWORDS_DARTHMAUL" "$NEWPAGES")
  STARKILLER=$(egrep -i "$KEYWORDS_STARKILLER" "$NEWPAGES")
  SIDIOUS=$(egrep -i "$KEYWORDS_SIDIOUS" "$NEWPAGES")
  DOOKU=$(egrep -i "$KEYWORDS_DOOKU" "$NEWPAGES")
  KOON=$(egrep -i "$KEYWORDS_PLOKOON" "$NEWPAGES")
  R2D2=$(egrep -i "$KEYWORDS_R2D2" "$NEWPAGES")
  REVAN=$(egrep -i "$KEYWORDS_REVAN" "$NEWPAGES")
  VADER=$(egrep -i "$KEYWORDS_DARTHVADER" "$NEWPAGES")
  LUKE=$(egrep -i "$KEYWORDS_LUKESKYWALKER" "$NEWPAGES")
  MARA=$(egrep -i "$KEYWORDS_MARAJADE" "$NEWPAGES")
  ANAKINSOLO=$(egrep -i "$KEYWORDS_ANAKINSOLO" "$NEWPAGES")
  HANSOLO=$(egrep -i "$KEYWORDS_HANSOLO" "$NEWPAGES")
  JACEN=$(egrep -i "$KEYWORDS_CAEDUS" "$NEWPAGES")
  LEIA=$(egrep -i "$KEYWORDS_LEIA" "$NEWPAGES")
  AHSOKA=$(egrep -i "$KEYWORDS_AHSOKA" "$NEWPAGES")
  THREEPIO=$(egrep -i "$KEYWORDS_THREEPIO" "$NEWPAGES")
  WINDU=$(egrep -i "$KEYWORDS_WINDU" "$NEWPAGES")
  YODA=$(egrep -i "$KEYWORDS_YODA" "$NEWPAGES")
  VENTRESS=$(egrep -i "$KEYWORDS_VENTRESS" "$NEWPAGES")

  categorize "CADBANE" "Cad Bane"
  categorize "THREEPIO" "C-3PO"
  categorize "CHEWBACCA" "Chewbacca"
  categorize "BOBAFETT" "Boba Fett"
  categorize "JANGOFETT" "Jango Fett"
  categorize "FISTO" "Kit Fisto"
  categorize "JABBA" "Jabba the Hutt"
  categorize "KENOBI" "Obi-Wan Kenobi"
  categorize "KOON" "Plo Koon"
  categorize "MAUL" "Darth Maul"
  categorize "STARKILLER" "Galen Marek / Starkiller"
  categorize "SIDIOUS" "Darth Sidious"
  categorize "DOOKU" "Count Dooku"
  categorize "R2D2" "R2-D2"
  categorize "REVAN" "Revan"
  categorize "VADER" "Anakin Skywalker / Darth Vader"
  categorize "LUKE" "Luke Skywalker"
  categorize "MARA" "Mara Jade Skywalker"
  categorize "ANAKINSOLO" "Anakin Solo"
  categorize "HANSOLO" "Han Solo"
  categorize "JACEN" "Jacen Solo / Darth Caedus"
  categorize "LEIA" "Leia Organa Solo"
  categorize "AHSOKA" "Ahsoka Tano"
  categorize "WINDU" "Mace Windu"
  categorize "YODA" "Yoda"
  categorize "VENTRESS" "Asajj Ventress"

  debug_end "Star Wars characters"

fi
