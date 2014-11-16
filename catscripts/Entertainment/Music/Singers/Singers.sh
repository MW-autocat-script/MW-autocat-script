#!/bin/bash

KEYWORDS_SINGERS_AKON="\bAkon"
KEYWORDS_SINGERS_JUSTINBIEBER="Justin(| )(Beiber|Bieber)"
KEYWORDS_SINGERS_JOHNNYCASH="Johnny(| )Cash"
KEYWORDS_SINGERS_RAYCHARLES="Ray(| )Charles"
KEYWORDS_SINGERS_CHERYLCOLE="Cheryl(| )Cole"
KEYWORDS_SINGERS_LUISCORONEL="Luis(| )Coronel"
KEYWORDS_SINGERS_MILEYCYRUS="Miley(| )Cyrus|Destiny(| )Hope(| )Cyrus"
KEYWORDS_SINGERS_BOBDYLAN="Bob(| )Dylan"
KEYWORDS_SINGERS_VANESSAHUDGENS="Vanessa(| )Hudgens"
KEYWORDS_SINGERS_WHITNEYHOUSTON="Whitney(| )Houston"
KEYWORDS_SINGERS_MICHAELJACKSON="(Michael|Micheal)(| )Jackson"
KEYWORDS_SINGERS_JOEJONAS="Joe(|seph)(| )Jonas"
KEYWORDS_SINGERS_NICKJONAS="Nic(k|holas).+Jonas"
KEYWORDS_SINGERS_BEYONCE="Beyoncé|Beyonce"
KEYWORDS_SINGERS_ELTONJOHN="Elton(| )John"
KEYWORDS_SINGERS_DEMILOVATO="(Demi|Demetria).+Lovato"
KEYWORDS_SINGERS_JOHNLENNON="John(| )Lennon"
KEYWORDS_SINGERS_KESHA="Kesha|Ke\$ha"
KEYWORDS_SINGERS_LADYGAGA="Lady(| )Gaga"
KEYWORDS_SINGERS_MADONNA="Madonna"
KEYWORDS_SINGERS_MADONNA_EXCLUDE="Lady(| )Madonna|Madonna(| )and(| )Child"
KEYWORDS_SINGERS_BOBMARLEY="Bob(| )Marley"
KEYWORDS_SINGERS_BRUNOMARS="Bruno(| )Mars|Peter(| )Gene(| )Hernandez"
KEYWORDS_SINGERS_ASTONMERRYGOLD="Aston(| )(|Iain)(| )Merrygold"
KEYWORDS_SINGERS_KATYPERRY="Kat(y|ie)(| )Perry"
KEYWORDS_SINGERS_NICKIMINAJ="Nicki(| )M(a|i)naj|Onika(| )Tanya(| )Maraj"
KEYWORDS_SINGERS_ELVISPRESLEY="Elvis(| )Presley"
KEYWORDS_SINGERS_JOSHRAMSAY="Josh(| )Ramsay"
KEYWORDS_SINGERS_RIHANNA="Rihanna"
KEYWORDS_SINGERS_JESSICASIMPSON="Jessica(| )Simpson"
KEYWORDS_SINGERS_BRITNEYSPEARS="Britney(| )Spears"
KEYWORDS_SINGERS_TAYLORSWIFT="Taylor(| )Swift"
KEYWORDS_SINGERS_TUPACSHAKUR="Tupac|2pac|Shakur"
KEYWORDS_SINGERS_ASHLEYTSIDALE="Ashley(| )Tisdale"
KEYWORDS_SINGERS_LILWAYNE="Lil(| )Wayne"
KEYWORDS_SINGERS_STEVIEWONDER="Stevie(| )Wonder"
KEYWORDS_SINGERS_EMINEM="Eminem|Slim(| )Shady|Marshall(|(| )Bruce)(| )Mathers|EMINƎM"
KEYWORDS_SINGERS="\bSinger"
KEYWORDS_SINGERS_EXCLUDE="sewing(| )machine|$KEYWORDS_SINGERS_AKON|$KEYWORDS_SINGERS_ASHLEYTSIDALE|$KEYWORDS_SINGERS_BEYONCE|$KEYWORDS_SINGERS_BOBMARLEY|$KEYWORDS_SINGERS_BRITNEYSPEARS|$KEYWORDS_SINGERS_DEMILOVATO|$KEYWORDS_SINGERS_BOBDYLAN|$KEYWORDS_SINGERS_ELTONJOHN|$KEYWORDS_SINGERS_ELVISPRESLEY|$KEYWORDS_SINGERS_NICKIMINAJ|$KEYWORDS_SINGERS_EMINEM|$KEYWORDS_SINGERS_JOEJONAS|$KEYWORDS_SINGERS_JOHNLENNON|$KEYWORDS_SINGERS_JOHNNYCASH|$KEYWORDS_SINGERS_JOSHRAMSAY|$KEYWORDS_SINGERS_JUSTINBIEBER|$KEYWORDS_SINGERS_LADYGAGA|$KEYWORDS_SINGERS_LILWAYNE|$KEYWORDS_SINGERS_MADONNA|$KEYWORDS_SINGERS_BRUNOMARS|$KEYWORDS_SINGERS_ASTONMERRYGOLD|$KEYWORDS_SINGERS_MICHAELJACKSON|$KEYWORDS_SINGERS_LUISCORONEL|$KEYWORDS_SINGERS_MILEYCYRUS|$KEYWORDS_SINGERS_NICKJONAS|$KEYWORDS_SINGERS_RAYCHARLES|$KEYWORDS_SINGERS_RIHANNA|$KEYWORDS_SINGERS_JESSICASIMPSON|$KEYWORDS_SINGERS_TAYLORSWIFT|$KEYWORDS_SINGERS_TUPACSHAKUR|$KEYWORDS_SINGERS_VANESSAHUDGENS|$KEYWORDS_SINGERS_WHITNEYHOUSTON|$KEYWORDS_SINGERS_STEVIEWONDER|$KEYWORDS_SINGERS_KESHA|$KEYWORDS_SINGERS_CHERYLCOLE|$KEYWORDS_SINGERS_KATYPERRY"


KEYWORDS_SINGERS_ALL="$KEYWORDS_SINGERS|$KEYWORDS_SINGERS_AKON|$KEYWORDS_SINGERS_ASHLEYTSIDALE|$KEYWORDS_SINGERS_BEYONCE|$KEYWORDS_SINGERS_BOBMARLEY|$KEYWORDS_SINGERS_BRITNEYSPEARS|$KEYWORDS_SINGERS_DEMILOVATO|$KEYWORDS_SINGERS_BOBDYLAN|$KEYWORDS_SINGERS_ELTONJOHN|$KEYWORDS_SINGERS_ELVISPRESLEY|$KEYWORDS_SINGERS_NICKIMINAJ|$KEYWORDS_SINGERS_EMINEM|$KEYWORDS_SINGERS_JOEJONAS|$KEYWORDS_SINGERS_JOHNLENNON|$KEYWORDS_SINGERS_JOHNNYCASH|$KEYWORDS_SINGERS_JOSHRAMSAY|$KEYWORDS_SINGERS_JUSTINBIEBER|$KEYWORDS_SINGERS_LADYGAGA|$KEYWORDS_SINGERS_LILWAYNE|$KEYWORDS_SINGERS_MADONNA|$KEYWORDS_SINGERS_BRUNOMARS|$KEYWORDS_SINGERS_ASTONMERRYGOLD|$KEYWORDS_SINGERS_MICHAELJACKSON|$KEYWORDS_SINGERS_LUISCORONEL|$KEYWORDS_SINGERS_MILEYCYRUS|$KEYWORDS_SINGERS_NICKJONAS|$KEYWORDS_SINGERS_RAYCHARLES|$KEYWORDS_SINGERS_RIHANNA|$KEYWORDS_SINGERS_JESSICASIMPSON|$KEYWORDS_SINGERS_TAYLORSWIFT|$KEYWORDS_SINGERS_TUPACSHAKUR|$KEYWORDS_SINGERS_VANESSAHUDGENS|$KEYWORDS_SINGERS_WHITNEYHOUSTON|$KEYWORDS_SINGERS_STEVIEWONDER|$KEYWORDS_SINGERS_KESHA|$KEYWORDS_SINGERS_CHERYLCOLE|$KEYWORDS_SINGERS_KATYPERRY"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Singers"

  SINGERS=$(egrep -i "$KEYWORDS_SINGERS" "$NEWPAGES" | egrep -iv "$KEYWORDS_SINGERS_EXCLUDE")
  AKON=$(egrep -i "$KEYWORDS_SINGERS_AKON" "$NEWPAGES")
  BIEBER=$(egrep -i "$KEYWORDS_SINGERS_JUSTINBIEBER" "$NEWPAGES")
  JCASH=$(egrep -i "$KEYWORDS_SINGERS_JOHNNYCASH" "$NEWPAGES")
  CHARLES=$(egrep -i "$KEYWORDS_SINGERS_RAYCHARLES" "$NEWPAGES")
  CORONEL=$(egrep -i "$KEYWORDS_SINGERS_LUISCORONEL" "$NEWPAGES")
  MCYRUS=$(egrep -i "$KEYWORDS_SINGERS_MILEYCYRUS" "$NEWPAGES")
  DYLAN=$(egrep -i "$KEYWORDS_SINGERS_BOBDYLAN" "$NEWPAGES")
  HUDGENS=$(egrep -i "$KEYWORDS_SINGERS_VANESSAHUDGENS" "$NEWPAGES")
  WHOUSTON=$(egrep -i "$KEYWORDS_SINGERS_WHITNEYHOUSTON" "$NEWPAGES")
  MJACKSON=$(egrep -i "$KEYWORDS_SINGERS_MICHAELJACKSON" "$NEWPAGES")
  JJONAS=$(egrep -i "$KEYWORDS_SINGERS_JOEJONAS" "$NEWPAGES")
  NJONAS=$(egrep -i "$KEYWORDS_SINGERS_NICKJONAS" "$NEWPAGES")
  KNOWLES=$(egrep -i "$KEYWORDS_SINGERS_BEYONCE" "$NEWPAGES")
  LOVATO=$(egrep -i "$KEYWORDS_SINGERS_DEMILOVATO" "$NEWPAGES")
  LENNON=$(egrep -i "$KEYWORDS_SINGERS_JOHNLENNON" "$NEWPAGES")
  GAGA=$(egrep -i "$KEYWORDS_SINGERS_LADYGAGA" "$NEWPAGES")
  MARLEY=$(egrep -i "$KEYWORDS_SINGERS_BOBMARLEY" "$NEWPAGES")
  BRUNOMARS=$(egrep -i "$KEYWORDS_SINGERS_BRUNOMARS" "$NEWPAGES")
  MADONNA=$(egrep -i "$KEYWORDS_SINGERS_MADONNA" "$NEWPAGES"| egrep -iv "$KEYWORDS_SINGERS_MADONNA_EXCLUDE")
  MINAJ=$(egrep -i "$KEYWORDS_SINGERS_NICKIMINAJ" "$NEWPAGES")
  MERRYGOLD=$(egrep -i "$KEYWORDS_SINGERS_ASTONMERRYGOLD" "$NEWPAGES")
  ELTONJOHN=$(egrep -i "$KEYWORDS_SINGERS_ELTONJOHN" "$NEWPAGES")
  ELVIS=$(egrep -i "$KEYWORDS_SINGERS_ELVISPRESLEY" "$NEWPAGES")
  RAMSAY=$(egrep -i "$KEYWORDS_SINGERS_JOSHRAMSAY" "$NEWPAGES")
  RIHANNA=$(egrep -i "$KEYWORDS_SINGERS_RIHANNA" "$NEWPAGES")
  JSIMPSON=$(egrep -i "$KEYWORDS_SINGERS_JESSICASIMPSON" "$NEWPAGES") 
  BSPEARS=$(egrep -i "$KEYWORDS_SINGERS_BRITNEYSPEARS" "$NEWPAGES")
  SWIFT=$(egrep -i "$KEYWORDS_SINGERS_TAYLORSWIFT" "$NEWPAGES")
  TUPAC=$(egrep -i "$KEYWORDS_SINGERS_TUPACSHAKUR" "$NEWPAGES")
  TISDALE=$(egrep -i "$KEYWORDS_SINGERS_ASHLEYTSIDALE" "$NEWPAGES")
  LILWAYNE=$(egrep -i "$KEYWORDS_SINGERS_LILWAYNE" "$NEWPAGES")
  EMINEM=$(egrep -i "$KEYWORDS_SINGERS_EMINEM" "$NEWPAGES")
  WONDER=$(egrep -i "$KEYWORDS_SINGERS_STEVIEWONDER" "$NEWPAGES")
  KESHA=$(egrep -i "$KEYWORDS_SINGERS_KESHA" "$NEWPAGES")
  COLE=$(egrep -i "$KEYWORDS_SINGERS_CHERYLCOLE" "$NEWPAGES")
  KATYPERRY=$(egrep -i "$KEYWORDS_SINGERS_KATYPERRY" "$NEWPAGES")


  categorize "SINGERS" "Singers"
  categorize "AKON" "Akon"
  categorize "BIEBER" "Justin Bieber"
  categorize "JCASH" "Johnny Cash"
  categorize "CHARLES" "Ray Charles"
  categorize "CORONEL" "Luis Coronel"
  categorize "MCYRUS" "Miley Cyrus"
  categorize "DYLAN" "Bob Dylan"
  categorize "HUDGENS" "Vanessa Hudgens"
  categorize "WHOUSTON" "Whitney Houston"
  categorize "MJACKSON" "Michael Jackson"
  categorize "JJONAS" "Joe Jonas"
  categorize "NJONAS" "Nick Jonas"
  categorize "KNOWLES" "Beyoncé Knowles"
  categorize "KNOWLES" "Demi Lovato"
  categorize "LENNON" "John Lennon"
  categorize "GAGA" "Lady Gaga"
  categorize "MADONNA" "Madonna"
  categorize "MARLEY" "Bob Marley"
  categorize "BRUNOMARS" "Bruno Mars"
  categorize "MERRYGOLD" "Aston Merrygold"
  categorize "MINAJ" "Nicki Minaj"
  categorize "ELTONJOHN" "Elton John"
  categorize "ELVIS" "Elvis Presley"
  categorize "RAMSAY" "Josh Ramsay"
  categorize "RIHANNA" "Rihanna"
  categorize "JSIMPSON" "Jessica Simpson"
  categorize "BSPEARS" "Britney Spears"
  categorize "SWIFT" "Taylor Swift"
  categorize "TUPAC" "Tupac Shakur"
  categorize "TISDALE" "Ashley Tisdale"
  categorize "LILWAYNE" "Lil Wayne"
  categorize "EMINEM" "Eminem"
  categorize "WONDER" "Stevie Wonder"
  categorize "KESHA" "Kesha"
  categorize "COLE" "Cheryl Cole"
  categorize "KATYPERRY" "Katy Perry"


  debug_end "Singers"

fi