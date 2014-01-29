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


MACHAMP=`egrep -i "$KEYWORDS_MACHAMP" newpages.txt`
MACHOKE=`egrep -i "$KEYWORDS_MACHOKE" newpages.txt`
MACHOP=`egrep -i "$KEYWORDS_MACHOP" newpages.txt`
MAGBY=`egrep -i "$KEYWORDS_MAGBY" newpages.txt`
MAGCARGO=`egrep -i "$KEYWORDS_MAGCARGO" newpages.txt`
MAGIKARP=`egrep -i "$KEYWORDS_MAGIKARP" newpages.txt`
MAGMAR=`egrep -i "$KEYWORDS_MAGMAR" newpages.txt`
MAGMORTAR=`egrep -i "$KEYWORDS_MAGMORTAR" newpages.txt`
MAGNEMITE=`egrep -i "$KEYWORDS_MAGNEMITE" newpages.txt`
MAGNETON=`egrep -i "$KEYWORDS_MAGNETON" newpages.txt`
MAGNEZONE=`egrep -i "$KEYWORDS_MAGNEZONE" newpages.txt`
MAKUHITA=`egrep -i "$KEYWORDS_MAKUHITA" newpages.txt`
MAMOSWINE=`egrep -i "$KEYWORDS_MAMOSWINE" newpages.txt`
MANAPHY=`egrep -i "$KEYWORDS_MANAPHY" newpages.txt`
MANDIBUZZ=`egrep -i "$KEYWORDS_MANDIBUZZ" newpages.txt`
MANECTRIC=`egrep -i "$KEYWORDS_MANECTRIC" newpages.txt`
MANKEY=`egrep -i "$KEYWORDS_MANKEY" newpages.txt`
MANTINE=`egrep -i "$KEYWORDS_MANTINE" newpages.txt`
MANTYKE=`egrep -i "$KEYWORDS_MANTYKE" newpages.txt`
MARACTUS=`egrep -i "$KEYWORDS_MARACTUS" newpages.txt`
MAREEP=`egrep -i "$KEYWORDS_MAREEP" newpages.txt`
MARILL=`egrep -i "$KEYWORDS_MARILL" newpages.txt`
MAROWAK=`egrep -i "$KEYWORDS_MAROWAK" newpages.txt`
MARSHTOMP=`egrep -i "$KEYWORDS_MARSHTOMP" newpages.txt`
MASQUERAIN=`egrep -i "$KEYWORDS_MASQUERAIN" newpages.txt`
MAWILE=`egrep -i "$KEYWORDS_MAWILE" newpages.txt`
MEDICHAM=`egrep -i "$KEYWORDS_MEDICHAM" newpages.txt`
MEDITITE=`egrep -i "$KEYWORDS_MEDITITE" newpages.txt`
MEGANIUM=`egrep -i "$KEYWORDS_MEGANIUM" newpages.txt`
MELOETTA=`egrep -i "$KEYWORDS_MELOETTA" newpages.txt`
MEOWTH=`egrep -i "$KEYWORDS_MEOWTH" newpages.txt`
MESPRIT=`egrep -i "$KEYWORDS_MESPRIT" newpages.txt`
METAGROSS=`egrep -i "$KEYWORDS_METAGROSS" newpages.txt`
METANG=`egrep -i "$KEYWORDS_METANG" newpages.txt`
METAPOD=`egrep -i "$KEYWORDS_METAPOD" newpages.txt`
MEW=`egrep -i "$KEYWORDS_MEW" newpages.txt`
MEWTWO=`egrep -i "$KEYWORDS_MEWTWO" newpages.txt`
MIGHTYENA=`egrep -i "$KEYWORDS_MIGHTYENA" newpages.txt`
MILOTIC=`egrep -i "$KEYWORDS_MILOTIC" newpages.txt`
MILTANK=`egrep -i "$KEYWORDS_MILTANK" newpages.txt`
MIMEJR=`egrep -i "$KEYWORDS_MIMEJR" newpages.txt`
MINCCINO=`egrep -i "$KEYWORDS_MINCCINO" newpages.txt`
MIENFOO=`egrep -i "$KEYWORDS_MIENFOO" newpages.txt`
MIENSHAO=`egrep -i "$KEYWORDS_MIENSHAO" newpages.txt`
MINUN=`egrep -i "$KEYWORDS_MINUN" newpages.txt`
MISDREAVUS=`egrep -i "$KEYWORDS_MISDREAVUS" newpages.txt`
MISMAGIUS=`egrep -i "$KEYWORDS_MISMAGIUS" newpages.txt`
MOLTRES=`egrep -i "$KEYWORDS_MOLTRES" newpages.txt`
MONFERNO=`egrep -i "$KEYWORDS_MONFERNO" newpages.txt`
MOTHIM=`egrep -i "$KEYWORDS_MOTHIM" newpages.txt`
MRMIME=`egrep -i "$KEYWORDS_MRMIME" newpages.txt`
MUDKIP=`egrep -i "$KEYWORDS_MUDKIP" newpages.txt`
MUK=`egrep -i "$KEYWORDS_MUK" newpages.txt`
MUNCHLAX=`egrep -i "$KEYWORDS_MUNCHLAX" newpages.txt`
MUNNA=`egrep -i "$KEYWORDS_MUNNA" newpages.txt`
MURKROW=`egrep -i "$KEYWORDS_MURKROW" newpages.txt`
MUSHARNA=`egrep -i "$KEYWORDS_MUSHARNA" newpages.txt`

if [ "$MACHAMP" != "" ];
then
  printf "$MACHAMP" > Machamp.txt
  export CATFILE="Machamp.txt"
  export CATNAME="Machamp"
  $CATEGORIZE
  rm Machamp.txt
  unset MACHAMP
fi

if [ "$MACHOKE" != "" ];
then
  printf "$MACHOKE" > Machoke.txt
  export CATFILE="Machoke.txt"
  export CATNAME="Machoke"
  $CATEGORIZE
  rm Machoke.txt
  unset MACHOKE
fi

if [ "$MACHOP" != "" ];
then
  printf "$MACHOP" > Machop.txt
  export CATFILE="Machop.txt"
  export CATNAME="Machop"
  $CATEGORIZE
  rm Machop.txt
  unset MACHOP
fi

if [ "$MAGBY" != "" ];
then
  printf "$MAGBY" > Magby.txt
  export CATFILE="Magby.txt"
  export CATNAME="Magby"
  $CATEGORIZE
  rm Magby.txt
  unset MAGBY
fi

if [ "$MAGCARGO" != "" ];
then
  printf "$MAGCARGO" > Magcargo.txt
  export CATFILE="Magcargo.txt"
  export CATNAME="Magcargo"
  $CATEGORIZE
  rm Magcargo.txt
  unset MAGCARGO
fi

if [ "$MAGIKARP" != "" ];
then
  printf "$MAGIKARP" > Magikarp.txt
  export CATFILE="Magikarp.txt"
  export CATNAME="Magikarp"
  $CATEGORIZE
  rm Magikarp.txt
  unset MAGIKARP
fi

if [ "$MAGMAR" != "" ];
then
  printf "$MAGMAR" > Magmar.txt
  export CATFILE="Magmar.txt"
  export CATNAME="Magmar"
  $CATEGORIZE
  rm Magmar.txt
  unset MAGMAR
fi

if [ "$MAGMORTAR" != "" ];
then
  printf "$MAGMORTAR" > Magmortar.txt
  export CATFILE="Magmortar.txt"
  export CATNAME="Magmortar"
  $CATEGORIZE
  rm Magmortar.txt
  unset MAGMORTAR
fi

if [ "$MAGNEMITE" != "" ];
then
  printf "$MAGNEMITE" > Magnemite.txt
  export CATFILE="Magnemite.txt"
  export CATNAME="Magnemite"
  $CATEGORIZE
  rm Magnemite.txt
  unset MAGNEMITE
fi

if [ "$MAGNETON" != "" ];
then
  printf "$MAGNETON" > Magneton.txt
  export CATFILE="Magneton.txt"
  export CATNAME="Magneton"
  $CATEGORIZE
  rm Magneton.txt
  unset MAGNETON
fi

if [ "$MAGNEZONE" != "" ];
then
  printf "$MAGNEZONE" > Magnezone.txt
  export CATFILE="Magnezone.txt"
  export CATNAME="Magnezone"
  $CATEGORIZE
  rm Magnezone.txt
  unset MAGNEZONE
fi

if [ "$MAKUHITA" != "" ];
then
  printf "$MAKUHITA" > Makuhita.txt
  export CATFILE="Makuhita.txt"
  export CATNAME="Makuhita"
  $CATEGORIZE
  rm Makuhita.txt
  unset MAKUHITA
fi

if [ "$MAMOSWINE" != "" ];
then
  printf "$MAMOSWINE" > Mamoswine.txt
  export CATFILE="Mamoswine.txt"
  export CATNAME="Mamoswine"
  $CATEGORIZE
  rm Mamoswine.txt
  unset MAMOSWINE
fi

if [ "$MANAPHY" != "" ];
then
  printf "$MANAPHY" > Manaphy.txt
  export CATFILE="Manaphy.txt"
  export CATNAME="Manaphy"
  $CATEGORIZE
  rm Manaphy.txt
  unset MANAPHY
fi

if [ "$MANDIBUZZ" != "" ];
then
  printf "$MANDIBUZZ" > Mandibuzz.txt
  export CATFILE="Mandibuzz.txt"
  export CATNAME="Mandibuzz"
  $CATEGORIZE
  rm Mandibuzz.txt
  unset MANDIBUZZ
fi

if [ "$MANECTRIC" != "" ];
then
  printf "$MANECTRIC" > Manectric.txt
  export CATFILE="Manectric.txt"
  export CATNAME="Manectric"
  $CATEGORIZE
  rm Manectric.txt
  unset MANECTRIC
fi

if [ "$MANKEY" != "" ];
then
  printf "$MANKEY" > Mankey.txt
  export CATFILE="Mankey.txt"
  export CATNAME="Mankey"
  $CATEGORIZE
  rm Mankey.txt
  unset MANKEY
fi

if [ "$MANTINE" != "" ];
then
  printf "$MANTINE" > Mantine.txt
  export CATFILE="Mantine.txt"
  export CATNAME="Mantine"
  $CATEGORIZE
  rm Mantine.txt
  unset MANTINE
fi

if [ "$MANTYKE" != "" ];
then
  printf "$MANTYKE" > Mantyke.txt
  export CATFILE="Mantyke.txt"
  export CATNAME="Mantyke"
  $CATEGORIZE
  rm Mantyke.txt
  unset MANTYKE
fi

if [ "$MARACTUS" != "" ];
then
  printf "$MARACTUS" > Maractus.txt
  export CATFILE="Maractus.txt"
  export CATNAME="Maractus"
  $CATEGORIZE
  rm Maractus.txt
  unset MARACTUS
fi

if [ "$MAREEP" != "" ];
then
  printf "$MAREEP" > Mareep.txt
  export CATFILE="Mareep.txt"
  export CATNAME="Mareep"
  $CATEGORIZE
  rm Mareep.txt
  unset MAREEP
fi

if [ "$MARILL" != "" ];
then
  printf "$MARILL" > Marill.txt
  export CATFILE="Marill.txt"
  export CATNAME="Marill"
  $CATEGORIZE
  rm Marill.txt
  unset MARILL
fi

if [ "$MAROWAK" != "" ];
then
  printf "$MAROWAK" > Marowak.txt
  export CATFILE="Marowak.txt"
  export CATNAME="Marowak"
  $CATEGORIZE
  rm Marowak.txt
  unset MAROWAK
fi

if [ "$MARSHTOMP" != "" ];
then
  printf "$MARSHTOMP" > Marshtomp.txt
  export CATFILE="Marshtomp.txt"
  export CATNAME="Marshtomp"
  $CATEGORIZE
  rm Marshtomp.txt
  unset MARSHTOMP
fi

if [ "$MASQUERAIN" != "" ];
then
  printf "$MASQUERAIN" > Masquerain.txt
  export CATFILE="Masquerain.txt"
  export CATNAME="Masquerain"
  $CATEGORIZE
  rm Masquerain.txt
  unset MASQUERAIN
fi

if [ "$MAWILE" != "" ];
then
  printf "$MAWILE" > Mawile.txt
  export CATFILE="Mawile.txt"
  export CATNAME="Mawile"
  $CATEGORIZE
  rm Mawile.txt
  unset MAWILE
fi

if [ "$MEDICHAM" != "" ];
then
  printf "$MEDICHAM" > Medicham.txt
  export CATFILE="Medicham.txt"
  export CATNAME="Medicham"
  $CATEGORIZE
  rm Medicham.txt
  unset MEDICHAM
fi

if [ "$MEDITITE" != "" ];
then
  printf "$MEDITITE" > Meditite.txt
  export CATFILE="Meditite.txt"
  export CATNAME="Meditite"
  $CATEGORIZE
  rm Meditite.txt
  unset MEDITITE
fi

if [ "$MEGANIUM" != "" ];
then
  printf "$MEGANIUM" > Meganium.txt
  export CATFILE="Meganium.txt"
  export CATNAME="Meganium"
  $CATEGORIZE
  rm Meganium.txt
  unset MEGANIUM
fi

if [ "$MELOETTA" != "" ];
then
  printf "$MELOETTA" > Meloetta.txt
  export CATFILE="Meloetta.txt"
  export CATNAME="Meloetta"
  $CATEGORIZE
  rm Meloetta.txt
  unset MELOETTA
fi

if [ "$MEOWTH" != "" ];
then
  printf "$MEOWTH" > Meowth.txt
  export CATFILE="Meowth.txt"
  export CATNAME="Meowth"
  $CATEGORIZE
  rm Meowth.txt
  unset MEOWTH
fi

if [ "$MESPRIT" != "" ];
then
  printf "$MESPRIT" > Mesprit.txt
  export CATFILE="Mesprit.txt"
  export CATNAME="Mesprit"
  $CATEGORIZE
  rm Mesprit.txt
  unset MESPRIT
fi

if [ "$METAGROSS" != "" ];
then
  printf "$METAGROSS" > Metagross.txt
  export CATFILE="Metagross.txt"
  export CATNAME="Metagross"
  $CATEGORIZE
  rm Metagross.txt
  unset METAGROSS
fi

if [ "$METANG" != "" ];
then
  printf "$METANG" > Metang.txt
  export CATFILE="Metang.txt"
  export CATNAME="Metang"
  $CATEGORIZE
  rm Metang.txt
  unset METANG
fi

if [ "$METAPOD" != "" ];
then
  printf "$METAPOD" > Metapod.txt
  export CATFILE="Metapod.txt"
  export CATNAME="Metapod"
  $CATEGORIZE
  rm Metapod.txt
  unset METAPOD
fi

if [ "$MEW" != "" ];
then
  printf "$MEW" > Mew.txt
  export CATFILE="Mew.txt"
  export CATNAME="Mew (Pokémon)"
  $CATEGORIZE
  rm Mew.txt
  unset MEW
fi

if [ "$MEWTWO" != "" ];
then
  printf "$MEWTWO" > Mewtwo.txt
  export CATFILE="Mewtwo.txt"
  export CATNAME="Mewtwo"
  $CATEGORIZE
  rm Mewtwo.txt
  unset MEWTWO
fi

if [ "$MIGHTYENA" != "" ];
then
  printf "$MIGHTYENA" > Mightyena.txt
  export CATFILE="Mightyena.txt"
  export CATNAME="Mightyena"
  $CATEGORIZE
  rm Mightyena.txt
  unset MIGHTYENA
fi

if [ "$MILOTIC" != "" ];
then
  printf "$MILOTIC" > Milotic.txt
  export CATFILE="Milotic.txt"
  export CATNAME="Milotic"
  $CATEGORIZE
  rm Milotic.txt
  unset MILOTIC
fi

if [ "$MILTANK" != "" ];
then
  printf "$MILTANK" > Miltank.txt
  export CATFILE="Miltank.txt"
  export CATNAME="Miltank"
  $CATEGORIZE
  rm Miltank.txt
  unset MILTANK
fi

if [ "$MIMEJR" != "" ];
then
  printf "$MIMEJR" > MimeJr.txt
  export CATFILE="MimeJr.txt"
  export CATNAME="Mime Jr."
  $CATEGORIZE
  rm MimeJr.txt
  unset MIMEJR
fi

if [ "$MINCCINO" != "" ];
then
  printf "$MINCCINO" > Minccino.txt
  export CATFILE="Minccino.txt"
  export CATNAME="Minccino"
  $CATEGORIZE
  rm Minccino.txt
  unset MINCCINO
fi

if [ "$MIENFOO" != "" ];
then
  printf "$MIENFOO" > Mienfoo.txt
  export CATFILE="Mienfoo.txt"
  export CATNAME="Mienfoo"
  $CATEGORIZE
  rm Mienfoo.txt
  unset MIENFOO
fi

if [ "$MIENSHAO" != "" ];
then
  printf "$MIENSHAO" > Mienshao.txt
  export CATFILE="Mienshao.txt"
  export CATNAME="Mienshao"
  $CATEGORIZE
  rm Mienshao.txt
  unset MIENSHAO
fi

if [ "$MINUN" != "" ];
then
  printf "$MINUN" > Minun.txt
  export CATFILE="Minun.txt"
  export CATNAME="Minun"
  $CATEGORIZE
  rm Minun.txt
  unset MINUN
fi

if [ "$MISDREAVUS" != "" ];
then
  printf "$MISDREAVUS" > Misdreavus.txt
  export CATFILE="Misdreavus.txt"
  export CATNAME="Misdreavus"
  $CATEGORIZE
  rm Misdreavus.txt
  unset MISDREAVUS
fi

if [ "$MISMAGIUS" != "" ];
then
  printf "$MISMAGIUS" > Mismagius.txt
  export CATFILE="Mismagius.txt"
  export CATNAME="Mismagius"
  $CATEGORIZE
  rm Mismagius.txt
  unset MISMAGIUS
fi

if [ "$MOLTRES" != "" ];
then
  printf "$MOLTRES" > Moltres.txt
  export CATFILE="Moltres.txt"
  export CATNAME="Moltres"
  $CATEGORIZE
  rm Moltres.txt
  unset MOLTRES
fi

if [ "$MONFERNO" != "" ];
then
  printf "$MONFERNO" > Monferno.txt
  export CATFILE="Monferno.txt"
  export CATNAME="Monferno"
  $CATEGORIZE
  rm Monferno.txt
  unset MONFERNO
fi

if [ "$MOTHIM" != "" ];
then
  printf "$MOTHIM" > Mothim.txt
  export CATFILE="Mothim.txt"
  export CATNAME="Mothim"
  $CATEGORIZE
  rm Mothim.txt
  unset MOTHIM
fi

if [ "$MRMIME" != "" ];
then
  printf "$MRMIME" > MrMime.txt
  export CATFILE="MrMime.txt"
  export CATNAME="Mr. Mime"
  $CATEGORIZE
  rm MrMime.txt
  unset MRMIME
fi

if [ "$MUDKIP" != "" ];
then
  printf "$MUDKIP" > Mudkip.txt
  export CATFILE="Mudkip.txt"
  export CATNAME="Mudkip"
  $CATEGORIZE
  rm Mudkip.txt
  unset MUDKIP
fi

if [ "$MUK" != "" ];
then
  printf "$MUK" > Muk.txt
  export CATFILE="Muk.txt"
  export CATNAME="Muk"
  $CATEGORIZE
  rm Muk.txt
  unset MUK
fi

if [ "$MUNCHLAX" != "" ];
then
  printf "$MUNCHLAX" > Munchlax.txt
  export CATFILE="Munchlax.txt"
  export CATNAME="Munchlax"
  $CATEGORIZE
  rm Munchlax.txt
  unset MUNCHLAX
fi

if [ "$MUNNA" != "" ];
then
  printf "$MUNNA" > Munna.txt
  export CATFILE="Munna.txt"
  export CATNAME="Munna"
  $CATEGORIZE
  rm Munna.txt
  unset MUNNA
fi

if [ "$MURKROW" != "" ];
then
  printf "$MURKROW" > Murkrow.txt
  export CATFILE="Murkrow.txt"
  export CATNAME="Murkrow"
  $CATEGORIZE
  rm Murkrow.txt
  unset MURKROW
fi

if [ "$MUSHARNA" != "" ];
then
  printf "$MUSHARNA" > Musharna.txt
  export CATFILE="Musharna.txt"
  export CATNAME="Musharna"
  $CATEGORIZE
  rm Musharna.txt
  unset MUSHARNA
fi
