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
KEYWORDS_HANSOLO="Han(| )Solo"
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

  if [ "$CADBANE" != "" ];
  then
    printf "%s" "$CADBANE" > CadBane.txt
    export CATFILE="CadBane.txt"
    export CATNAME="Cad Bane"
    $CATEGORIZE
    rm CadBane.txt
    unset CADBANE
  fi

  if [ "$THREEPIO" != "" ];
  then
    printf "%s" "$THREEPIO" > C3PO.txt
    export CATFILE="C3PO.txt"
    export CATNAME="C-3PO"
    $CATEGORIZE
    rm C3PO.txt
    unset THREEPIO
  fi

  if [ "$CHEWBACCA" != "" ];
  then
    printf "%s" "$CHEWBACCA" > Chewbacca.txt
    export CATFILE="Chewbacca.txt"
    export CATNAME="Chewbacca"
    $CATEGORIZE
    rm Chewbacca.txt
    unset CHEWBACCA
  fi

  if [ "$BOBAFETT" != "" ];
  then
    printf "%s" "$BOBAFETT" > BobaFett.txt
    export CATFILE="BobaFett.txt"
    export CATNAME="Boba Fett"
    $CATEGORIZE
    rm BobaFett.txt
    unset BOBAFETT
  fi

  if [ "$JANGOFETT" != "" ];
  then
    printf "%s" "$JANGOFETT" > JangoFett.txt
    export CATFILE="JangoFett.txt"
    export CATNAME="Jango Fett"
    $CATEGORIZE
    rm JangoFett.txt
    unset JANGOFETT
  fi

  if [ "$FISTO" != "" ];
  then
    printf "%s" "$FISTO" > KitFisto.txt
    export CATFILE="KitFisto.txt"
    export CATNAME="Kit Fisto"
    $CATEGORIZE
    rm KitFisto.txt
    unset FISTO
  fi

  if [ "$JABBA" != "" ];
  then
    printf "%s" "$JABBA" > JabbaTheHutt.txt
    export CATFILE="JabbaTheHutt.txt"
    export CATNAME="Jabba the Hutt"
    $CATEGORIZE
    rm JabbaTheHutt.txt
    unset JABBA
  fi

  if [ "$KENOBI" != "" ];
  then
    printf "%s" "$KENOBI" > ObiWanKenobi.txt
    export CATFILE="ObiWanKenobi.txt"
    export CATNAME="Obi-Wan Kenobi"
    $CATEGORIZE
    rm ObiWanKenobi.txt
    unset KENOBI
  fi

  if [ "$KOON" != "" ];
  then
    printf "%s" "$KOON" > PloKoon.txt
    export CATFILE="PloKoon.txt"
    export CATNAME="Plo Koon"
    $CATEGORIZE
    rm PloKoon.txt
    unset KOON
  fi

  if [ "$MAUL" != "" ];
  then
    printf "%s" "$MAUL" > DarthMaul.txt
    export CATFILE="DarthMaul.txt"
    export CATNAME="Darth Maul"
    $CATEGORIZE
    rm DarthMaul.txt
    unset MAUL
  fi

  if [ "$STARKILLER" != "" ];
  then
    printf "%s" "$STARKILLER" > Starkiller.txt
    export CATFILE="Starkiller.txt"
    export CATNAME="Galen Marek / Starkiller"
    rm Starkiller.txt
    unset STARKILLER
  fi

  if [ "$SIDIOUS" != "" ];
  then
    printf "%s" "$SIDIOUS" > Sidious.txt
    export CATFILE="Sidious.txt"
    export CATNAME="Darth Sidious"
    $CATEGORIZE
    rm Sidious.txt
    unset SIDIOUS
  fi

  if [ "$DOOKU" != "" ];
  then
    printf "%s" "$DOOKU" > Dooku.txt
    export CATFILE="Dooku.txt"
    export CATNAME="Count Dooku"
    $CATEGORIZE
    rm Dooku.txt
    unset DOOKU
  fi

  if [ "$R2D2" != "" ];
  then
    printf "%s" "$R2D2" > R2D2.txt
    export CATFILE="R2D2.txt"
    export CATNAME="R2-D2"
    $CATEGORIZE
    rm R2D2.txt
    unset R2D2
  fi

  if [ "$REVAN" != "" ];
  then
    printf "%s" "$REVAN" > Revan.txt
    export CATFILE="Revan.txt"
    export CATNAME="Revan"
    $CATEGORIZE
    rm Revan.txt
    unset REVAN
  fi

  if [ "$VADER" != "" ];
  then
    printf "%s" "$VADER" > DarthVader.txt
    export CATFILE="DarthVader.txt"
    export CATNAME="Anakin Skywalker / Darth Vader"
    $CATEGORIZE
    rm DarthVader.txt
    unset VADER
  fi

  if [ "$LUKE" != "" ];
  then
    printf "%s" "$LUKE" > LukeSkywalker.txt
    export CATFILE="LukeSkywalker.txt"
    export CATNAME="Luke Skywalker"
    $CATEGORIZE
    rm LukeSkywalker.txt
    unset LUKE
  fi

  if [ "$MARA" != "" ];
  then
    printf "%s" "$MARA" > MaraJadeSkywalker.txt
    export CATFILE="MaraJadeSkywalker.txt"
    export CATNAME="Mara Jade Skywalker"
    $CATEGORIZE
    rm MaraJadeSkywalker.txt
    unset MARA
  fi

  if [ "$ANAKINSOLO" != "" ];
  then
    printf "%s" "$ANAKINSOLO" > AnakinSolo.txt
    export CATFILE="AnakinSolo.txt"
    export CATNAME="Anakin Solo"
    $CATEGORIZE
    rm AnakinSolo.txt
    unset ANAKINSOLO
  fi

  if [ "$HANSOLO" != "" ];
  then
    printf "%s" "$HANSOLO" > HanSolo.txt
    export CATFILE="HanSolo.txt"
    export CATNAME="Han Solo"
    $CATEGORIZE
    rm HanSolo.txt
    unset HANSOLO
  fi

  if [ "$JACEN" != "" ];
  then
    printf "%s" "$JACEN" > DarthCaedus.txt
    export CATFILE="DarthCaedus.txt"
    export CATNAME="Jacen Solo / Darth Caedus"
    $CATEGORIZE
    rm DarthCaedus.txt
    unset JACEN
  fi

  if [ "$LEIA" != "" ];
  then
    printf "%s" "$LEIA" > LeiaOrganaSolo.txt
    export CATFILE="LeiaOrganaSolo.txt"
    export CATNAME="Leia Organa Solo"
    $CATEGORIZE
    rm LeiaOrganaSolo.txt
    unset LEIA
  fi

  if [ "$AHSOKA" != "" ];
  then
    printf "%s" "$AHSOKA" > AhsokaTano.txt
    export CATFILE="AhsokaTano.txt"
    export CATNAME="Ahsoka Tano"
    $CATEGORIZE
    rm AhsokaTano.txt
    unset AHSOKA
  fi

  if [ "$WINDU" != "" ];
  then
    printf "%s" "$WINDU" > MaceWindu.txt
    export CATFILE="MaceWindu.txt"
    export CATNAME="Mace Windu"
    $CATEGORIZE
    rm MaceWindu.txt
    unset WINDU
  fi

  if [ "$YODA" != "" ];
  then
    printf "%s" "$YODA" > Yoda.txt
    export CATFILE="Yoda.txt"
    export CATNAME="Yoda"
    $CATEGORIZE
    rm Yoda.txt
    unset YODA
  fi

  if [ "$VENTRESS" != "" ];
  then
    printf "%s" "$VENTRESS" > AsajjVentress.txt
    export CATFILE="AsajjVentress.txt"
    export CATNAME="Asajj Ventress"
    $CATEGORIZE
    rm AsajjVentress.txt
    unset VENTRESS
  fi

  debug_end "Star Wars characters"

fi
