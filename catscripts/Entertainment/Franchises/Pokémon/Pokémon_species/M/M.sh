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
KEYWORDS_MALAMAR="Malamar"
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
KEYWORDS_MEOWSTIC="Meowstic"
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
KEYWORDS_POKEMONSPECIES_M="$KEYWORDS_MACHAMP|$KEYWORDS_MACHOKE|$KEYWORDS_MACHOP|$KEYWORDS_MAGBY|$KEYWORDS_MAGCARGO|$KEYWORDS_MAGIKARP|$KEYWORDS_MAGMAR|$KEYWORDS_MAGMORTAR|$KEYWORDS_MAGNEMITE|$KEYWORDS_MAGNETON|$KEYWORDS_MAGNEZONE|$KEYWORDS_MAKUHITA|$KEYWORDS_MALAMAR|$KEYWORDS_MAMOSWINE|$KEYWORDS_MAMOSWINE|$KEYWORDS_MANAPHY|$KEYWORDS_MANDIBUZZ|$KEYWORDS_MANECTRIC|$KEYWORDS_MANKEY|$KEYWORDS_MANTINE|$KEYWORDS_MANTYKE|$KEYWORDS_MARACTUS|$KEYWORDS_MAREEP|$KEYWORDS_MARILL|$KEYWORDS_MAROWAK|$KEYWORDS_MARSHTOMP|$KEYWORDS_MASQUERAIN|$KEYWORDS_MAWILE|$KEYWORDS_MEDICHAM|$KEYWORDS_MEDITITE|$KEYWORDS_MEGANIUM|$KEYWORDS_MELOETTA|$KEYWORDS_MEOWSTIC|$KEYWORDS_MEOWTH|$KEYWORDS_MESPRIT|$KEYWORDS_METAGROSS|$KEYWORDS_METANG|$KEYWORDS_METAPOD|$KEYWORDS_MEW|$KEYWORDS_MEWTWO|$KEYWORDS_MIENFOO|$KEYWORDS_MIENSHAO|$KEYWORDS_MIGHTYENA|$KEYWORDS_MILOTIC|$KEYWORDS_MILTANK|$KEYWORDS_MIMEJR|$KEYWORDS_MINCCINO|$KEYWORDS_MINUN|$KEYWORDS_MISDREAVUS|$KEYWORDS_MISMAGIUS|$KEYWORDS_MISMAGIUS|$KEYWORDS_MOLTRES|$KEYWORDS_MONFERNO|$KEYWORDS_MOTHIM|$KEYWORDS_MRMIME|$KEYWORDS_MUDKIP|$KEYWORDS_MUK|$KEYWORDS_MUNCHLAX|$KEYWORDS_MUNNA|$KEYWORDS_MURKROW|$KEYWORDS_MUSHARNA"

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
  MALAMAR=$(egrep -i "$KEYWORDS_MALAMAR" "$NEWPAGES")
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
  MEOWSTIC=$(egrep -i "$KEYWORDS_MEOWSTIC" "$NEWPAGES")
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


  categorize "MACHAMP" "Machamp"
  categorize "MACHOKE" "Machoke"
  categorize "MACHOP" "Machop"
  categorize "MAGBY" "Magby"
  categorize "MAGCARGO" "Magcargo"
  categorize "MAGIKARP" "Magikarp"
  categorize "MAGMAR" "Magmar"
  categorize "MAGMORTAR" "Magmortar"
  categorize "MAGNEMITE" "Magnemite"
  categorize "MAGNETON" "Magneton"
  categorize "MAGNEZONE" "Magnezone"
  categorize "MAKUHITA" "Makuhita"
  categorize "MALAMAR" "Malamar"
  categorize "MAMOSWINE" "Mamoswine"
  categorize "MANAPHY" "Manaphy"
  categorize "MANDIBUZZ" "Mandibuzz"
  categorize "MANECTRIC" "Manectric"
  categorize "MANKEY" "Mankey"
  categorize "MANTINE" "Mantine"
  categorize "MANTYKE" "Mantyke"
  categorize "MARACTUS" "Maractus"
  categorize "MAREEP" "Mareep"
  categorize "MARILL" "Marill"
  categorize "MAROWAK" "Marowak"
  categorize "MARSHTOMP" "Marshtomp"
  categorize "MASQUERAIN" "Masquerain"
  categorize "MAWILE" "Mawile"
  categorize "MEDICHAM" "Medicham"
  categorize "MEDITITE" "Meditite"
  categorize "MEGANIUM" "Meganium"
  categorize "MELOETTA" "Meloetta"
  categorize "MEOWSTIC" "Meowstic"
  categorize "MEOWTH" "Meowth"
  categorize "MESPRIT" "Mesprit"
  categorize "METAGROSS" "Metagross"
  categorize "METANG" "Metang"
  categorize "METAPOD" "Metapod"
  categorize "MEW" "Mew (Pokémon)"
  categorize "MEWTWO" "Mewtwo"
  categorize "MIGHTYENA" "Mightyena"
  categorize "MILOTIC" "Milotic"
  categorize "MILTANK" "Miltank"
  categorize "MIMEJR" "Mime Jr."
  categorize "MINCCINO" "Minccino"
  categorize "MIENFOO" "Mienfoo"
  categorize "MIENSHAO" "Mienshao"
  categorize "MINUN" "Minun"
  categorize "MISDREAVUS" "Misdreavus"
  categorize "MISMAGIUS" "Mismagius"
  categorize "MOLTRES" "Moltres"
  categorize "MONFERNO" "Monferno"
  categorize "MOTHIM" "Mothim"
  categorize "MRMIME" "Mr. Mime"
  categorize "MUDKIP" "Mudkip"
  categorize "MUK" "Muk"
  categorize "MUNCHLAX" "Munchlax"
  categorize "MUNNA" "Munna"
  categorize "MURKROW" "Murkrow"
  categorize "MUSHARNA" "Musharna"


  debug_end "Pokemon M script"

fi
