#!/bin/bash

KEYWORDS_USPRESIDENT="president(| )of(| )the(| )(U(|\.)S(|\.)|United(| )States)|(United(| )States|U(|\.)S(|\.))(| )president|\bPOTUS|American(| )president"
KEYWORDS_GEORGEWASHINGTON="(George|General|President)(| )Washington"
KEYWORDS_GEORGEWASHINGTON_EXCLUDE="George(| )Washington(| )Carver"
KEYWORDS_JOHNADAMS="John(| )Adams"
KEYWORDS_THOMASJEFFERSON="(Thomas|President)(| )Jefferson|Jeffersonian|Monticello"
KEYWORDS_JAMESMADISON="(James|President)(| )Madison"
KEYWORDS_JAMESMONROE="(James|President)(| )Monroe"
KEYWORDS_JOHNQUINCYADAMS="John(| )Q(\.|uincy| )(| )Adams"
KEYWORDS_ANDREWJACKSON="(Andrew|President)(| )Jackson"
KEYWORDS_MARTINVANBUREN="(President|Martin)(| )(|Van)(| )Buren"
KEYWORDS_WILLIAMHHARRISON="William(| )H(|\.|enry)(| )Harrison"
KEYWORDS_JOHNTYLER="(President|John)(| )Tyler"
KEYWORDS_JAMESKPOLK="(James|President)(| )(K(\.|nox|)|)(| )Polk"
KEYWORDS_ZACHARYTAYLOR="(Zachary|President)(| )Taylor"
KEYWORDS_MILLARDFILLMORE="Fillmore"
KEYWORDS_FRANKLINPIERCE="(President|Franklin)(| )Pierce"
KEYWORDS_JAMESBUCHANAN="(President|James)(| )Buchanan"
KEYWORDS_ABRAHAMLINCOLN="(President|Abe|Abraham)(| )Lincoln|Honest(| )Abe"
KEYWORDS_ANDREWJOHNSON="Andrew(| )Johnson" #There were two "President Johnsons", so not used here
KEYWORDS_ULYSSESSGRANT="(Ulysses|President)(| )(S(\.|impson|)|)(| )Grant"
KEYWORDS_RUTHERFORDBHAYES="(Rutherford|President)(| )(B(\.|irchard|)|)(| )Hayes"
KEYWORDS_JAMESGARFIELD="(President|James)(| )(A(\.|bram|)|)(| )Garfield"
KEYWORDS_CHESTERAARTHUR="(President|Chester)(| )(A(\.|lan|)|)(| )Arthur"
KEYWORDS_GROVERCLEVELAND="(President|Grover)(| )Cleveland"
KEYWORDS_BENJAMINHARRISON="Benjamin(| )Harrison"
KEYWORDS_WILLIAMMCKINLEY="(William|President)(| )McKinley"
KEYWORDS_THEODOREROOSEVELT="(Theodore|Teddy)(| )Roosevelt|Roosevelt(| )Corollary"
KEYWORDS_WILLIAMHOWARDTAFT="Taft"
KEYWORDS_WOODROWWILSON="(Woodrow|President)(| )Wilson"
KEYWORDS_WARRENHARDING="(Warren|President)(| )(G(\.|amaliel|)|)(| )Harding"
KEYWORDS_CALVINCOOLIDGE="Coolidge"
KEYWORDS_HERBERTHOOVER="(Herbert|President)(| )(C(\.|lark|)|)(| )Hoover"
KEYWORDS_FRANKLINDROOSEVELT="Franklin(| )(D(\.|elano|)|)(| )Roosevelt|F(|\.)D(|\.)R"
KEYWORDS_HARRYTRUMAN="(Harry|President)(| )(S(\.|)|)(| )Truman"
KEYWORDS_DWIGHTEISENHOWER="Eisenhower"
KEYWORDS_JOHNFKENNEDY="(John|President)(| )(F(\.|itzgerald|)|)(| )Kennedy|Kennedy(| )administration"
KEYWORDS_LYNDONJOHNSON="Lyndon(| )(B(\.|aines|)|)(| )Johnson|\bL(\.|)B(\.|)J\b"
KEYWORDS_RICHARDNIXON="(Richard|President)(| )(M(\.|ilhaus|)|)(| )Nixon|Tricky(| )Dick"
KEYWORDS_GERALDFORD="(President|Gerald)(| )(R(\.|udolph|)|)(| )Ford"
KEYWORDS_JAMESCARTER="(James|President|Jimmy)(| )(E(\.|arl|)|)(| )Carter"
KEYWORDS_RONALDREAGAN="(Ronald|President)(| )(W(\.|ilson|)|)(| )Reagan"
KEYWORDS_GEORGEHWBUSH="George(| )H(\.|erbert|)W(\.|alker|)(| )Bush"
KEYWORDS_BILLCLINTON="(William|Bill|President)(| )(J(\.|efferson|)|)(| )Clinton|Clinton(| )administration"
KEYWORDS_GEORGEWBUSH="George(| )W(\.|alker|)(| )Bush"
KEYWORDS_BARACKOBAMA="Obama"
KEYWORDS_BARACKOBAMA_EXCLUDE="Michel(|l)e(| )Obama"
KEYWORDS_DONALDTRUMP="(President|Donald)(| )Trump"


#Group presidents alphabetically to enable easier combo

KEYWORDS_USPRESIDENT_A="$KEYWORDS_JOHNADAMS|$KEYWORDS_JOHNQUINCYADAMS|$KEYWORDS_CHESTERAARTHUR" #Total: 3
KEYWORDS_USPRESIDENT_B="$KEYWORDS_JAMESBUCHANAN|$KEYWORDS_MARTINVANBUREN|$KEYWORDS_GEORGEHWBUSH|$KEYWORDS_GEORGEWBUSH" #Total: 4
KEYWORDS_USPRESIDENT_C="$KEYWORDS_JAMESCARTER|$KEYWORDS_GROVERCLEVELAND|$KEYWORDS_BILLCLINTON|$KEYWORDS_CALVINCOOLIDGE" #Total: 4
KEYWORDS_USPRESIDENT_E="$KEYWORDS_DWIGHTEISENHOWER" #Total: 1
KEYWORDS_USPRESIDENT_F="$KEYWORDS_MILLARDFILLMORE|$KEYWORDS_GERALDFORD" #Total: 2
KEYWORDS_USPRESIDENT_G="$KEYWORDS_JAMESGARFIELD|$KEYWORDS_ULYSSESSGRANT" #Total: 2
KEYWORDS_USPRESIDENT_H="$KEYWORDS_WARRENHARDING|$KEYWORDS_BENJAMINHARRISON|$KEYWORDS_WILLIAMHHARRISON|$KEYWORDS_RUTHERFORDBHAYES|$KEYWORDS_HERBERTHOOVER" #Total: 5
KEYWORDS_USPRESIDENT_J="$KEYWORDS_ANDREWJACKSON|$KEYWORDS_THOMASJEFFERSON|$KEYWORDS_ANDREWJOHNSON|$KEYWORDS_LYNDONJOHNSON" #Total: 4
KEYWORDS_USPRESIDENT_K="$KEYWORDS_JOHNFKENNEDY" #Total: 1
KEYWORDS_USPRESIDENT_L="$KEYWORDS_ABRAHAMLINCOLN" #Total: 1
KEYWORDS_USPRESIDENT_M="$KEYWORDS_JAMESMADISON|$KEYWORDS_WILLIAMMCKINLEY|$KEYWORDS_JAMESMONROE" #Total: 3
KEYWORDS_USPRESIDENT_N="$KEYWORDS_RICHARDNIXON" #Total: 1
KEYWORDS_USPRESIDENT_O="$KEYWORDS_BARACKOBAMA" #Total: 1
KEYWORDS_USPRESIDENT_P="$KEYWORDS_FRANKLINPIERCE|$KEYWORDS_JAMESKPOLK" #Total: 2
KEYWORDS_USPRESIDENT_R="$KEYWORDS_RONALDREAGAN|$KEYWORDS_FRANKLINDROOSEVELT|$KEYWORDS_THEODOREROOSEVELT" #Total: 3
KEYWORDS_USPRESIDENT_T="$KEYWORDS_WILLIAMHOWARDTAFT|$KEYWORDS_ZACHARYTAYLOR|$KEYWORDS_HARRYTRUMAN|$KEYWORDS_DONALDTRUMP|$KEYWORDS_JOHNTYLER" #Total: 5
KEYWORDS_USPRESIDENT_W="$KEYWORDS_GEORGEWASHINGTON|$KEYWORDS_WOODROWWILSON" #Total: 2

KEYWORDS_USPRESIDENT_EXCLUDE="$KEYWORDS_USPRESIDENT_A|$KEYWORDS_USPRESIDENT_B|$KEYWORDS_USPRESIDENT_C|$KEYWORDS_USPRESIDENT_E|$KEYWORDS_USPRESIDENT_F|$KEYWORDS_USPRESIDENT_G|$KEYWORDS_USPRESIDENT_H|$KEYWORDS_USPRESIDENT_J|$KEYWORDS_USPRESIDENT_K|$KEYWORDS_USPRESIDENT_L|$KEYWORDS_USPRESIDENT_M|$KEYWORDS_USPRESIDENT_N|$KEYWORDS_USPRESIDENT_O|$KEYWORDS_USPRESIDENT_P|$KEYWORDS_USPRESIDENT_R|$KEYWORDS_USPRESIDENT_T|$KEYWORDS_USPRESIDENT_W"

KEYWORDS_USPRESIDENT_ALL="$KEYWORDS_USPRESIDENT|$KEYWORDS_USPRESIDENT_EXCLUDE"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "US Presidents"

  PRESIDENT=$(egrep -i "$KEYWORDS_USPRESIDENT" "$NEWPAGES" | egrep -iv "$KEYWORDS_USPRESIDENT_EXCLUDE")
  WASHINGTON=$(egrep -i "$KEYWORDS_GEORGEWASHINGTON" "$NEWPAGES" | egrep -iv "$KEYWORDS_GEORGEWASHINGTON_EXCLUDE")
  JOHNADAMS=$(egrep -i "$KEYWORDS_JOHNADAMS" "$NEWPAGES")
  JEFFERSON=$(egrep -i "$KEYWORDS_THOMASJEFFERSON" "$NEWPAGES")
  MADISON=$(egrep -i "$KEYWORDS_JAMESMADISON" "$NEWPAGES")
  MONROE=$(egrep -i "$KEYWORDS_JAMESMONROE" "$NEWPAGES")
  QUINCY=$(egrep -i "$KEYWORDS_JOHNQUINCYADAMS" "$NEWPAGES")
  JACKSON=$(egrep -i "$KEYWORDS_ANDREWJACKSON" "$NEWPAGES")
  BUREN=$(egrep -i "$KEYWORDS_MARTINVANBUREN" "$NEWPAGES")
  WHARRISON=$(egrep -i "$KEYWORDS_WILLIAMHHARRISON" "$NEWPAGES")
  TYLER=$(egrep -i "$KEYWORDS_JOHNTYLER" "$NEWPAGES")
  POLK=$(egrep -i "$KEYWORDS_JAMESKPOLK" "$NEWPAGES")
  TAYLOR=$(egrep -i "$KEYWORDS_ZACHARYTAYLOR" "$NEWPAGES")
  FILLMORE=$(egrep -i "$KEYWORDS_MILLARDFILLMORE" "$NEWPAGES")
  PIERCE=$(egrep -i "$KEYWORDS_FRANKLINPIERCE" "$NEWPAGES")
  BUCHANAN=$(egrep -i "$KEYWORDS_JAMESBUCHANAN" "$NEWPAGES")
  LINCOLN=$(egrep -i "$KEYWORDS_ABRAHAMLINCOLN" "$NEWPAGES")
  JOHNSON=$(egrep -i "$KEYWORDS_ANDREWJOHNSON" "$NEWPAGES")
  GRANT=$(egrep -i "$KEYWORDS_ULYSSESSGRANT" "$NEWPAGES")
  HAYES=$(egrep -i "$KEYWORDS_RUTHERFORDBHAYES" "$NEWPAGES")
  GARFIELD=$(egrep -i "$KEYWORDS_JAMESGARFIELD" "$NEWPAGES")
  ARTHUR=$(egrep -i "$KEYWORDS_CHESTERAARTHUR" "$NEWPAGES")
  CLEVELAND=$(egrep -i "$KEYWORDS_GROVERCLEVELAND" "$NEWPAGES")
  HARRISON=$(egrep -i "$KEYWORDS_BENJAMINHARRISON" "$NEWPAGES")
  MCKINLEY=$(egrep -i "$KEYWORDS_WILLIAMMCKINLEY" "$NEWPAGES")
  THEODORE=$(egrep -i "$KEYWORDS_THEODOREROOSEVELT" "$NEWPAGES")
  TAFT=$(egrep -i "$KEYWORDS_WILLIAMHOWARDTAFT" "$NEWPAGES")
  WILSON=$(egrep -i "$KEYWORDS_WOODROWWILSON" "$NEWPAGES")
  HARDING=$(egrep -i "$KEYWORDS_WARRENHARDING" "$NEWPAGES")
  COOLIDGE=$(egrep -i "$KEYWORDS_CALVINCOOLIDGE" "$NEWPAGES")
  HOOVER=$(egrep -i "$KEYWORDS_HERBERTHOOVER" "$NEWPAGES")
  FDR=$(egrep -i "$KEYWORDS_FRANKLINDROOSEVELT" "$NEWPAGES")
  TRUMAN=$(egrep -i "$KEYWORDS_HARRYTRUMAN" "$NEWPAGES")
  EISENHOWER=$(egrep -i "$KEYWORDS_DWIGHTEISENHOWER" "$NEWPAGES")
  KENNEDY=$(egrep -i "$KEYWORDS_JOHNFKENNEDY" "$NEWPAGES")
  LBJ=$(egrep -i "$KEYWORDS_LYNDONJOHNSON" "$NEWPAGES")
  NIXON=$(egrep -i "$KEYWORDS_RICHARDNIXON" "$NEWPAGES")
  FORD=$(egrep -i "$KEYWORDS_GERALDFORD" "$NEWPAGES")
  CARTER=$(egrep -i "$KEYWORDS_JAMESCARTER" "$NEWPAGES")
  REAGAN=$(egrep -i "$KEYWORDS_RONALDREAGAN" "$NEWPAGES")
  GHWBUSH=$(egrep -i "$KEYWORDS_GEORGEHWBUSH" "$NEWPAGES")
  CLINTON=$(egrep -i "$KEYWORDS_BILLCLINTON" "$NEWPAGES")
  GWBUSH=$(egrep -i "$KEYWORDS_GEORGEWBUSH" "$NEWPAGES")
  OBAMA=$(egrep -i "$KEYWORDS_BARACKOBAMA" "$NEWPAGES" | egrep -iv "$KEYWORDS_BARACKOBAMA_EXCLUDE")
  TRUMP=$(egrep -i "$KEYWORDS_DONALDTRUMP" "$NEWPAGES")

  categorize "PRESIDENT" "US Presidents"
  categorize "WASHINGTON" "George Washington"
  categorize "JOHNADAMS" "John Adams"
  categorize "JEFFERSON" "Thomas Jefferson"
  categorize "MADISON" "James Madison"
  categorize "MONROE" "James Monroe"
  categorize "QUINCY" "John Quincy Adams"
  categorize "JACKSON" "Andrew Jackson"
  categorize "BUREN" "Martin Van Buren"
  categorize "WHARRISON" "William Henry Harrison"
  categorize "TYLER" "John Tyler"
  categorize "POLK" "James K. Polk"
  categorize "TAYLOR" "Zachary Taylor"
  categorize "FILLMORE" "Millard Fillmore"
  categorize "PIERCE" "Franklin Pierce"
  categorize "BUCHANAN" "James Buchanan"
  categorize "LINCOLN" "Abraham Lincoln"
  categorize "JOHNSON" "Andrew Johnson"
  categorize "GRANT" "Ulysses S. Grant"
  categorize "HAYES" "Rutherford B. Hayes"
  categorize "GARFIELD" "James A. Garfield"
  categorize "ARTHUR" "Chester A. Arthur"
  categorize "CLEVELAND" "Grover Cleveland"
  categorize "HARRISON" "Benjamin Harrison"
  categorize "MCKINLEY" "William McKinley"
  categorize "THEODORE" "Theodore Roosevelt"
  categorize "TAFT" "William Howard Taft"
  categorize "WILSON" "Woodrow Wilson"
  categorize "HARDING" "Warren G. Harding"
  categorize "COOLIDGE" "Calvin Coolidge"
  categorize "HOOVER" "Herbert Hoover"
  categorize "FDR" "Franklin Delano Roosevelt"
  categorize "TRUMAN" "Harry S. Truman"
  categorize "EISENHOWER" "Dwight D. Eisenhower"
  categorize "KENNEDY" "John F. Kennedy"
  categorize "LBJ" "Lyndon B. Johnson"
  categorize "NIXON" "Richard Nixon"
  categorize "FORD" "Gerald Ford"
  categorize "CARTER" "James Earl Carter"
  categorize "REAGAN" "Ronald Reagan"
  categorize "GHWBUSH" "George Herbert Walker Bush"
  categorize "CLINTON" "Bill Clinton"
  categorize "GWBUSH" "George W. Bush"
  categorize "OBAMA" "Barack Obama"
  categorize "TRUMP" "Donald Trump"

  debug_end "US Presidents"

fi