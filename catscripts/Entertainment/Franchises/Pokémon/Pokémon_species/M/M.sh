#!/bin/bash

KEYWORDS_MACHAMP="Machamp"
KEYWORDS_MACHOKE="Machoke"
KEYWORDS_MACHOP="Machop"
KEYWORDS_MAGBY="Magby"
KEYWORDS_MAGCARGO="Magcargo"
KEYWORDS_MAGIKARP="Magikarp"
KEYWORDS_MAGMAR="Magmar"
KEYWORDS_MAGMORTAR="Magmortar"
KEYWORDS_MAGNEMITE="Magnemite"
KEYWORDS_MAGNETON="Magneton"
KEYWORDS_MAGNEZONE="Magnezone"
KEYWORDS_MAKUHITA="Makuhita"
KEYWORDS_MAMOSWINE="Mamoswine"
KEYWORDS_MANAPHY="Manaphy"
KEYWORDS_MANDIBUZZ="Mandibuzz"
KEYWORDS_MANECTRIC="Manectric"
KEYWORDS_MANKEY="Mankey"
KEYWORDS_MANTINE="Mantine"
KEYWORDS_MANTYKE="Mantyke"
KEYWORDS_MARACTUS="Maractus"
KEYWORDS_MAREEP="Mareep"
KEYWORDS_MARILL="Marill"
KEYWORDS_MAROWAK="Marowak"
KEYWORDS_MARSHTOMP="Marshtomp"
KEYWORDS_MASQUERAIN="Masquerain"
KEYWORDS_MAWILE="Mawile"
KEYWORDS_MEDICHAM="Medicham"
KEYWORDS_MEDITITE="Meditite"
KEYWORDS_MEGANIUM="Meganium"
KEYWORDS_MELOETTA="Meloetta"
KEYWORDS_MEOWTH="Meowth"
KEYWORDS_MESPRIT="Mesprit"
KEYWORDS_METAGROSS="Metagross"
KEYWORDS_METANG="Metang"
KEYWORDS_METAPOD="Metapod"
KEYWORDS_MEW="\bMew\b"
KEYWORDS_MEWTWO="Mewtwo"
KEYWORDS_MIGHTYENA="Mightyena"
KEYWORDS_MILOTIC="Milotic"
KEYWORDS_MILTANK="Miltank"
KEYWORDS_MIMEJR="Mime Jr"
KEYWORDS_MINCCINO="Minccino"
KEYWORDS_MIENFOO="Mienfoo"
KEYWORDS_MIENSHAO="Mienshao"
KEYWORDS_MINUN="Minun"
KEYWORDS_MISDREAVUS="Misdreavus"
KEYWORDS_MISMAGIUS="Mismagius"
KEYWORDS_MOLTRES="Moltres"
KEYWORDS_MONFERNO="Monferno"
KEYWORDS_MOTHIM="Mothim"
KEYWORDS_MRMIME="Mr(|\.)(| )Mime"
KEYWORDS_MUDKIP="Mudkip"
KEYWORDS_MUK="Muk"
KEYWORDS_MUNCHLAX="Munchlax"
KEYWORDS_MUNNA="Munna\b"
KEYWORDS_MURKROW="Murkrow"
KEYWORDS_MUSHARNA="Musharna"

if [ "$1" == "" ];
then

  debug_start "Pokemon M script"

  MACHAMP=$(egrep -i "$KEYWORDS_MACHAMP" "$NEWPAGES")
  MACHOKE=$(egrep -i "$KEYWORDS_MACHOKE" "$NEWPAGES")
  MACHOP=$(egrep -i "$KEYWORDS_MACHOP" "$NEWPAGES")
  MAGBY=$(egrep -i "$KEYWORDS_MAGBY" "$NEWPAGES")
  MAGCARGO=$(egrep -i "$KEYWORDS_MAGCARGO" "$NEWPAGES")
  MAGIKARP=$(egrep -i "$KEYWORDS_MAGIKARP" "$NEWPAGES")
  MAGMAR=$(egrep -i "$KEYWORDS_MAGMAR" "$NEWPAGES")
  MAGMORTAR=$(egrep -i "$KEYWORDS_MAGMORTAR" "$NEWPAGES")
  MAGNEMITE=$(egrep -i "$KEYWORDS_MAGNEMITE" "$NEWPAGES")
  MAGNETON=$(egrep -i "$KEYWORDS_MAGNETON" "$NEWPAGES")
  MAGNEZONE=$(egrep -i "$KEYWORDS_MAGNEZONE" "$NEWPAGES")
  MAKUHITA=$(egrep -i "$KEYWORDS_MAKUHITA" "$NEWPAGES")
  MAMOSWINE=$(egrep -i "$KEYWORDS_MAMOSWINE" "$NEWPAGES")
  MANAPHY=$(egrep -i "$KEYWORDS_MANAPHY" "$NEWPAGES")
  MANDIBUZZ=$(egrep -i "$KEYWORDS_MANDIBUZZ" "$NEWPAGES")
  MANECTRIC=$(egrep -i "$KEYWORDS_MANECTRIC" "$NEWPAGES")
  MANKEY=$(egrep -i "$KEYWORDS_MANKEY" "$NEWPAGES")
  MANTINE=$(egrep -i "$KEYWORDS_MANTINE" "$NEWPAGES")
  MANTYKE=$(egrep -i "$KEYWORDS_MANTYKE" "$NEWPAGES")
  MARACTUS=$(egrep -i "$KEYWORDS_MARACTUS" "$NEWPAGES")
  MAREEP=$(egrep -i "$KEYWORDS_MAREEP" "$NEWPAGES")
  MARILL=$(egrep -i "$KEYWORDS_MARILL" "$NEWPAGES")
  MAROWAK=$(egrep -i "$KEYWORDS_MAROWAK" "$NEWPAGES")
  MARSHTOMP=$(egrep -i "$KEYWORDS_MARSHTOMP" "$NEWPAGES")
  MASQUERAIN=$(egrep -i "$KEYWORDS_MASQUERAIN" "$NEWPAGES")
  MAWILE=$(egrep -i "$KEYWORDS_MAWILE" "$NEWPAGES")
  MEDICHAM=$(egrep -i "$KEYWORDS_MEDICHAM" "$NEWPAGES")
  MEDITITE=$(egrep -i "$KEYWORDS_MEDITITE" "$NEWPAGES")
  MEGANIUM=$(egrep -i "$KEYWORDS_MEGANIUM" "$NEWPAGES")
  MELOETTA=$(egrep -i "$KEYWORDS_MELOETTA" "$NEWPAGES")
  MEOWTH=$(egrep -i "$KEYWORDS_MEOWTH" "$NEWPAGES")
  MESPRIT=$(egrep -i "$KEYWORDS_MESPRIT" "$NEWPAGES")
  METAGROSS=$(egrep -i "$KEYWORDS_METAGROSS" "$NEWPAGES")
  METANG=$(egrep -i "$KEYWORDS_METANG" "$NEWPAGES")
  METAPOD=$(egrep -i "$KEYWORDS_METAPOD" "$NEWPAGES")
  MEW=$(egrep -i "$KEYWORDS_MEW" "$NEWPAGES")
  MEWTWO=$(egrep -i "$KEYWORDS_MEWTWO" "$NEWPAGES")
  MIGHTYENA=$(egrep -i "$KEYWORDS_MIGHTYENA" "$NEWPAGES")
  MILOTIC=$(egrep -i "$KEYWORDS_MILOTIC" "$NEWPAGES")
  MILTANK=$(egrep -i "$KEYWORDS_MILTANK" "$NEWPAGES")
  MIMEJR=$(egrep -i "$KEYWORDS_MIMEJR" "$NEWPAGES")
  MINCCINO=$(egrep -i "$KEYWORDS_MINCCINO" "$NEWPAGES")
  MIENFOO=$(egrep -i "$KEYWORDS_MIENFOO" "$NEWPAGES")
  MIENSHAO=$(egrep -i "$KEYWORDS_MIENSHAO" "$NEWPAGES")
  MINUN=$(egrep -i "$KEYWORDS_MINUN" "$NEWPAGES")
  MISDREAVUS=$(egrep -i "$KEYWORDS_MISDREAVUS" "$NEWPAGES")
  MISMAGIUS=$(egrep -i "$KEYWORDS_MISMAGIUS" "$NEWPAGES")
  MOLTRES=$(egrep -i "$KEYWORDS_MOLTRES" "$NEWPAGES")
  MONFERNO=$(egrep -i "$KEYWORDS_MONFERNO" "$NEWPAGES")
  MOTHIM=$(egrep -i "$KEYWORDS_MOTHIM" "$NEWPAGES")
  MRMIME=$(egrep -i "$KEYWORDS_MRMIME" "$NEWPAGES")
  MUDKIP=$(egrep -i "$KEYWORDS_MUDKIP" "$NEWPAGES")
  MUK=$(egrep -i "$KEYWORDS_MUK" "$NEWPAGES")
  MUNCHLAX=$(egrep -i "$KEYWORDS_MUNCHLAX" "$NEWPAGES")
  MUNNA=$(egrep -i "$KEYWORDS_MUNNA" "$NEWPAGES")
  MURKROW=$(egrep -i "$KEYWORDS_MURKROW" "$NEWPAGES")
  MUSHARNA=$(egrep -i "$KEYWORDS_MUSHARNA" "$NEWPAGES")

  if [ "$MACHAMP" != "" ];
  then
    printf "%s" "$MACHAMP" > Machamp.txt
    export CATFILE="Machamp.txt"
    export CATNAME="Machamp"
    $CATEGORIZE
    rm Machamp.txt
    unset MACHAMP
  fi

  if [ "$MACHOKE" != "" ];
  then
    printf "%s" "$MACHOKE" > Machoke.txt
    export CATFILE="Machoke.txt"
    export CATNAME="Machoke"
    $CATEGORIZE
    rm Machoke.txt
    unset MACHOKE
  fi

  if [ "$MACHOP" != "" ];
  then
    printf "%s" "$MACHOP" > Machop.txt
    export CATFILE="Machop.txt"
    export CATNAME="Machop"
    $CATEGORIZE
    rm Machop.txt
    unset MACHOP
  fi

  if [ "$MAGBY" != "" ];
  then
    printf "%s" "$MAGBY" > Magby.txt
    export CATFILE="Magby.txt"
    export CATNAME="Magby"
    $CATEGORIZE
    rm Magby.txt
    unset MAGBY
  fi

  if [ "$MAGCARGO" != "" ];
  then
    printf "%s" "$MAGCARGO" > Magcargo.txt
    export CATFILE="Magcargo.txt"
    export CATNAME="Magcargo"
    $CATEGORIZE
    rm Magcargo.txt
    unset MAGCARGO
  fi

  if [ "$MAGIKARP" != "" ];
  then
    printf "%s" "$MAGIKARP" > Magikarp.txt
    export CATFILE="Magikarp.txt"
    export CATNAME="Magikarp"
    $CATEGORIZE
    rm Magikarp.txt
    unset MAGIKARP
  fi

  if [ "$MAGMAR" != "" ];
  then
    printf "%s" "$MAGMAR" > Magmar.txt
    export CATFILE="Magmar.txt"
    export CATNAME="Magmar"
    $CATEGORIZE
    rm Magmar.txt
    unset MAGMAR
  fi

  if [ "$MAGMORTAR" != "" ];
  then
    printf "%s" "$MAGMORTAR" > Magmortar.txt
    export CATFILE="Magmortar.txt"
    export CATNAME="Magmortar"
    $CATEGORIZE
    rm Magmortar.txt
    unset MAGMORTAR
  fi

  if [ "$MAGNEMITE" != "" ];
  then
    printf "%s" "$MAGNEMITE" > Magnemite.txt
    export CATFILE="Magnemite.txt"
    export CATNAME="Magnemite"
    $CATEGORIZE
    rm Magnemite.txt
    unset MAGNEMITE
  fi

  if [ "$MAGNETON" != "" ];
  then
    printf "%s" "$MAGNETON" > Magneton.txt
    export CATFILE="Magneton.txt"
    export CATNAME="Magneton"
    $CATEGORIZE
    rm Magneton.txt
    unset MAGNETON
  fi

  if [ "$MAGNEZONE" != "" ];
  then
    printf "%s" "$MAGNEZONE" > Magnezone.txt
    export CATFILE="Magnezone.txt"
    export CATNAME="Magnezone"
    $CATEGORIZE
    rm Magnezone.txt
    unset MAGNEZONE
  fi

  if [ "$MAKUHITA" != "" ];
  then
    printf "%s" "$MAKUHITA" > Makuhita.txt
    export CATFILE="Makuhita.txt"
    export CATNAME="Makuhita"
    $CATEGORIZE
    rm Makuhita.txt
    unset MAKUHITA
  fi

  if [ "$MAMOSWINE" != "" ];
  then
    printf "%s" "$MAMOSWINE" > Mamoswine.txt
    export CATFILE="Mamoswine.txt"
    export CATNAME="Mamoswine"
    $CATEGORIZE
    rm Mamoswine.txt
    unset MAMOSWINE
  fi

  if [ "$MANAPHY" != "" ];
  then
    printf "%s" "$MANAPHY" > Manaphy.txt
    export CATFILE="Manaphy.txt"
    export CATNAME="Manaphy"
    $CATEGORIZE
    rm Manaphy.txt
    unset MANAPHY
  fi

  if [ "$MANDIBUZZ" != "" ];
  then
    printf "%s" "$MANDIBUZZ" > Mandibuzz.txt
    export CATFILE="Mandibuzz.txt"
    export CATNAME="Mandibuzz"
    $CATEGORIZE
    rm Mandibuzz.txt
    unset MANDIBUZZ
  fi

  if [ "$MANECTRIC" != "" ];
  then
    printf "%s" "$MANECTRIC" > Manectric.txt
    export CATFILE="Manectric.txt"
    export CATNAME="Manectric"
    $CATEGORIZE
    rm Manectric.txt
    unset MANECTRIC
  fi

  if [ "$MANKEY" != "" ];
  then
    printf "%s" "$MANKEY" > Mankey.txt
    export CATFILE="Mankey.txt"
    export CATNAME="Mankey"
    $CATEGORIZE
    rm Mankey.txt
    unset MANKEY
  fi

  if [ "$MANTINE" != "" ];
  then
    printf "%s" "$MANTINE" > Mantine.txt
    export CATFILE="Mantine.txt"
    export CATNAME="Mantine"
    $CATEGORIZE
    rm Mantine.txt
    unset MANTINE
  fi

  if [ "$MANTYKE" != "" ];
  then
    printf "%s" "$MANTYKE" > Mantyke.txt
    export CATFILE="Mantyke.txt"
    export CATNAME="Mantyke"
    $CATEGORIZE
    rm Mantyke.txt
    unset MANTYKE
  fi

  if [ "$MARACTUS" != "" ];
  then
    printf "%s" "$MARACTUS" > Maractus.txt
    export CATFILE="Maractus.txt"
    export CATNAME="Maractus"
    $CATEGORIZE
    rm Maractus.txt
    unset MARACTUS
  fi

  if [ "$MAREEP" != "" ];
  then
    printf "%s" "$MAREEP" > Mareep.txt
    export CATFILE="Mareep.txt"
    export CATNAME="Mareep"
    $CATEGORIZE
    rm Mareep.txt
    unset MAREEP
  fi

  if [ "$MARILL" != "" ];
  then
    printf "%s" "$MARILL" > Marill.txt
    export CATFILE="Marill.txt"
    export CATNAME="Marill"
    $CATEGORIZE
    rm Marill.txt
    unset MARILL
  fi

  if [ "$MAROWAK" != "" ];
  then
    printf "%s" "$MAROWAK" > Marowak.txt
    export CATFILE="Marowak.txt"
    export CATNAME="Marowak"
    $CATEGORIZE
    rm Marowak.txt
    unset MAROWAK
  fi

  if [ "$MARSHTOMP" != "" ];
  then
    printf "%s" "$MARSHTOMP" > Marshtomp.txt
    export CATFILE="Marshtomp.txt"
    export CATNAME="Marshtomp"
    $CATEGORIZE
    rm Marshtomp.txt
    unset MARSHTOMP
  fi

  if [ "$MASQUERAIN" != "" ];
  then
    printf "%s" "$MASQUERAIN" > Masquerain.txt
    export CATFILE="Masquerain.txt"
    export CATNAME="Masquerain"
    $CATEGORIZE
    rm Masquerain.txt
    unset MASQUERAIN
  fi

  if [ "$MAWILE" != "" ];
  then
    printf "%s" "$MAWILE" > Mawile.txt
    export CATFILE="Mawile.txt"
    export CATNAME="Mawile"
    $CATEGORIZE
    rm Mawile.txt
    unset MAWILE
  fi

  if [ "$MEDICHAM" != "" ];
  then
    printf "%s" "$MEDICHAM" > Medicham.txt
    export CATFILE="Medicham.txt"
    export CATNAME="Medicham"
    $CATEGORIZE
    rm Medicham.txt
    unset MEDICHAM
  fi

  if [ "$MEDITITE" != "" ];
  then
    printf "%s" "$MEDITITE" > Meditite.txt
    export CATFILE="Meditite.txt"
    export CATNAME="Meditite"
    $CATEGORIZE
    rm Meditite.txt
    unset MEDITITE
  fi

  if [ "$MEGANIUM" != "" ];
  then
    printf "%s" "$MEGANIUM" > Meganium.txt
    export CATFILE="Meganium.txt"
    export CATNAME="Meganium"
    $CATEGORIZE
    rm Meganium.txt
    unset MEGANIUM
  fi

  if [ "$MELOETTA" != "" ];
  then
    printf "%s" "$MELOETTA" > Meloetta.txt
    export CATFILE="Meloetta.txt"
    export CATNAME="Meloetta"
    $CATEGORIZE
    rm Meloetta.txt
    unset MELOETTA
  fi

  if [ "$MEOWTH" != "" ];
  then
    printf "%s" "$MEOWTH" > Meowth.txt
    export CATFILE="Meowth.txt"
    export CATNAME="Meowth"
    $CATEGORIZE
    rm Meowth.txt
    unset MEOWTH
  fi

  if [ "$MESPRIT" != "" ];
  then
    printf "%s" "$MESPRIT" > Mesprit.txt
    export CATFILE="Mesprit.txt"
    export CATNAME="Mesprit"
    $CATEGORIZE
    rm Mesprit.txt
    unset MESPRIT
  fi

  if [ "$METAGROSS" != "" ];
  then
    printf "%s" "$METAGROSS" > Metagross.txt
    export CATFILE="Metagross.txt"
    export CATNAME="Metagross"
    $CATEGORIZE
    rm Metagross.txt
    unset METAGROSS
  fi

  if [ "$METANG" != "" ];
  then
    printf "%s" "$METANG" > Metang.txt
    export CATFILE="Metang.txt"
    export CATNAME="Metang"
    $CATEGORIZE
    rm Metang.txt
    unset METANG
  fi

  if [ "$METAPOD" != "" ];
  then
    printf "%s" "$METAPOD" > Metapod.txt
    export CATFILE="Metapod.txt"
    export CATNAME="Metapod"
    $CATEGORIZE
    rm Metapod.txt
    unset METAPOD
  fi

  if [ "$MEW" != "" ];
  then
    printf "%s" "$MEW" > Mew.txt
    export CATFILE="Mew.txt"
    export CATNAME="Mew (Pokémon)"
    $CATEGORIZE
    rm Mew.txt
    unset MEW
  fi

  if [ "$MEWTWO" != "" ];
  then
    printf "%s" "$MEWTWO" > Mewtwo.txt
    export CATFILE="Mewtwo.txt"
    export CATNAME="Mewtwo"
    $CATEGORIZE
    rm Mewtwo.txt
    unset MEWTWO
  fi

  if [ "$MIGHTYENA" != "" ];
  then
    printf "%s" "$MIGHTYENA" > Mightyena.txt
    export CATFILE="Mightyena.txt"
    export CATNAME="Mightyena"
    $CATEGORIZE
    rm Mightyena.txt
    unset MIGHTYENA
  fi

  if [ "$MILOTIC" != "" ];
  then
    printf "%s" "$MILOTIC" > Milotic.txt
    export CATFILE="Milotic.txt"
    export CATNAME="Milotic"
    $CATEGORIZE
    rm Milotic.txt
    unset MILOTIC
  fi

  if [ "$MILTANK" != "" ];
  then
    printf "%s" "$MILTANK" > Miltank.txt
    export CATFILE="Miltank.txt"
    export CATNAME="Miltank"
    $CATEGORIZE
    rm Miltank.txt
    unset MILTANK
  fi

  if [ "$MIMEJR" != "" ];
  then
    printf "%s" "$MIMEJR" > MimeJr.txt
    export CATFILE="MimeJr.txt"
    export CATNAME="Mime Jr."
    $CATEGORIZE
    rm MimeJr.txt
    unset MIMEJR
  fi

  if [ "$MINCCINO" != "" ];
  then
    printf "%s" "$MINCCINO" > Minccino.txt
    export CATFILE="Minccino.txt"
    export CATNAME="Minccino"
    $CATEGORIZE
    rm Minccino.txt
    unset MINCCINO
  fi

  if [ "$MIENFOO" != "" ];
  then
    printf "%s" "$MIENFOO" > Mienfoo.txt
    export CATFILE="Mienfoo.txt"
    export CATNAME="Mienfoo"
    $CATEGORIZE
    rm Mienfoo.txt
    unset MIENFOO
  fi

  if [ "$MIENSHAO" != "" ];
  then
    printf "%s" "$MIENSHAO" > Mienshao.txt
    export CATFILE="Mienshao.txt"
    export CATNAME="Mienshao"
    $CATEGORIZE
    rm Mienshao.txt
    unset MIENSHAO
  fi

  if [ "$MINUN" != "" ];
  then
    printf "%s" "$MINUN" > Minun.txt
    export CATFILE="Minun.txt"
    export CATNAME="Minun"
    $CATEGORIZE
    rm Minun.txt
    unset MINUN
  fi

  if [ "$MISDREAVUS" != "" ];
  then
    printf "%s" "$MISDREAVUS" > Misdreavus.txt
    export CATFILE="Misdreavus.txt"
    export CATNAME="Misdreavus"
    $CATEGORIZE
    rm Misdreavus.txt
    unset MISDREAVUS
  fi

  if [ "$MISMAGIUS" != "" ];
  then
    printf "%s" "$MISMAGIUS" > Mismagius.txt
    export CATFILE="Mismagius.txt"
    export CATNAME="Mismagius"
    $CATEGORIZE
    rm Mismagius.txt
    unset MISMAGIUS
  fi

  if [ "$MOLTRES" != "" ];
  then
    printf "%s" "$MOLTRES" > Moltres.txt
    export CATFILE="Moltres.txt"
    export CATNAME="Moltres"
    $CATEGORIZE
    rm Moltres.txt
    unset MOLTRES
  fi

  if [ "$MONFERNO" != "" ];
  then
    printf "%s" "$MONFERNO" > Monferno.txt
    export CATFILE="Monferno.txt"
    export CATNAME="Monferno"
    $CATEGORIZE
    rm Monferno.txt
    unset MONFERNO
  fi

  if [ "$MOTHIM" != "" ];
  then
    printf "%s" "$MOTHIM" > Mothim.txt
    export CATFILE="Mothim.txt"
    export CATNAME="Mothim"
    $CATEGORIZE
    rm Mothim.txt
    unset MOTHIM
  fi

  if [ "$MRMIME" != "" ];
  then
    printf "%s" "$MRMIME" > MrMime.txt
    export CATFILE="MrMime.txt"
    export CATNAME="Mr. Mime"
    $CATEGORIZE
    rm MrMime.txt
    unset MRMIME
  fi

  if [ "$MUDKIP" != "" ];
  then
    printf "%s" "$MUDKIP" > Mudkip.txt
    export CATFILE="Mudkip.txt"
    export CATNAME="Mudkip"
    $CATEGORIZE
    rm Mudkip.txt
    unset MUDKIP
  fi

  if [ "$MUK" != "" ];
  then
    printf "%s" "$MUK" > Muk.txt
    export CATFILE="Muk.txt"
    export CATNAME="Muk"
    $CATEGORIZE
    rm Muk.txt
    unset MUK
  fi

  if [ "$MUNCHLAX" != "" ];
  then
    printf "%s" "$MUNCHLAX" > Munchlax.txt
    export CATFILE="Munchlax.txt"
    export CATNAME="Munchlax"
    $CATEGORIZE
    rm Munchlax.txt
    unset MUNCHLAX
  fi

  if [ "$MUNNA" != "" ];
  then
    printf "%s" "$MUNNA" > Munna.txt
    export CATFILE="Munna.txt"
    export CATNAME="Munna"
    $CATEGORIZE
    rm Munna.txt
    unset MUNNA
  fi

  if [ "$MURKROW" != "" ];
  then
    printf "%s" "$MURKROW" > Murkrow.txt
    export CATFILE="Murkrow.txt"
    export CATNAME="Murkrow"
    $CATEGORIZE
    rm Murkrow.txt
    unset MURKROW
  fi

  if [ "$MUSHARNA" != "" ];
  then
    printf "%s" "$MUSHARNA" > Musharna.txt
    export CATFILE="Musharna.txt"
    export CATNAME="Musharna"
    $CATEGORIZE
    rm Musharna.txt
    unset MUSHARNA
  fi

  debug_end "Pokemon M script"

fi
