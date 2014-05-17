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
KEYWORDS_USPRESIDENT_T="$KEYWORDS_WILLIAMHOWARDTAFT|$KEYWORDS_ZACHARYTAYLOR|$KEYWORDS_HARRYTRUMAN|$KEYWORDS_JOHNTYLER" #Total: 4
KEYWORDS_USPRESIDENT_W="$KEYWORDS_GEORGEWASHINGTON|$KEYWORDS_WOODROWWILSON" #Total: 2

KEYWORDS_USPRESIDENT_EXCLUDE="$KEYWORDS_USPRESIDENT_A|$KEYWORDS_USPRESIDENT_B|$KEYWORDS_USPRESIDENT_C|$KEYWORDS_USPRESIDENT_E|$KEYWORDS_USPRESIDENT_F|$KEYWORDS_USPRESIDENT_G|$KEYWORDS_USPRESIDENT_H|$KEYWORDS_USPRESIDENT_J|$KEYWORDS_USPRESIDENT_K|$KEYWORDS_USPRESIDENT_L|$KEYWORDS_USPRESIDENT_M|$KEYWORDS_USPRESIDENT_N|$KEYWORDS_USPRESIDENT_O|$KEYWORDS_USPRESIDENT_P|$KEYWORDS_USPRESIDENT_R|$KEYWORDS_USPRESIDENT_T|$KEYWORDS_USPRESIDENT_W"

KEYWORDS_USPRESIDENT_ALL="$KEYWORDS_USPRESIDENT|$KEYWORDS_USPRESIDENT_EXCLUDE"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "US Presidents"

  PRESIDENT=$(egrep -i "$KEYWORDS_USPRESIDENT" newpages.txt | egrep -iv "$KEYWORDS_USPRESIDENT_EXCLUDE")
  WASHINGTON=$(egrep -i "$KEYWORDS_GEORGEWASHINGTON" newpages.txt | egrep -iv "$KEYWORDS_GEORGEWASHINGTON_EXCLUDE")
  JOHNADAMS=$(egrep -i "$KEYWORDS_JOHNADAMS" newpages.txt)
  JEFFERSON=$(egrep -i "$KEYWORDS_THOMASJEFFERSON" newpages.txt)
  MADISON=$(egrep -i "$KEYWORDS_JAMESMADISON" newpages.txt)
  MONROE=$(egrep -i "$KEYWORDS_JAMESMONROE" newpages.txt)
  QUINCY=$(egrep -i "$KEYWORDS_JOHNQUINCYADAMS" newpages.txt)
  JACKSON=$(egrep -i "$KEYWORDS_ANDREWJACKSON" newpages.txt)
  BUREN=$(egrep -i "$KEYWORDS_MARTINVANBUREN" newpages.txt)
  WHARRISON=$(egrep -i "$KEYWORDS_WILLIAMHHARRISON" newpages.txt)
  TYLER=$(egrep -i "$KEYWORDS_JOHNTYLER" newpages.txt)
  POLK=$(egrep -i "$KEYWORDS_JAMESKPOLK" newpages.txt)
  TAYLOR=$(egrep -i "$KEYWORDS_ZACHARYTAYLOR" newpages.txt)
  FILLMORE=$(egrep -i "$KEYWORDS_MILLARDFILLMORE" newpages.txt)
  PIERCE=$(egrep -i "$KEYWORDS_FRANKLINPIERCE" newpages.txt)
  BUCHANAN=$(egrep -i "$KEYWORDS_JAMESBUCHANAN" newpages.txt)
  LINCOLN=$(egrep -i "$KEYWORDS_ABRAHAMLINCOLN" newpages.txt)
  JOHNSON=$(egrep -i "$KEYWORDS_ANDREWJOHNSON" newpages.txt)
  GRANT=$(egrep -i "$KEYWORDS_ULYSSESSGRANT" newpages.txt)
  HAYES=$(egrep -i "$KEYWORDS_RUTHERFORDBHAYES" newpages.txt)
  GARFIELD=$(egrep -i "$KEYWORDS_JAMESGARFIELD" newpages.txt)
  ARTHUR=$(egrep -i "$KEYWORDS_CHESTERAARTHUR" newpages.txt)
  CLEVELAND=$(egrep -i "$KEYWORDS_GROVERCLEVELAND" newpages.txt)
  HARRISON=$(egrep -i "$KEYWORDS_BENJAMINHARRISON" newpages.txt)
  MCKINLEY=$(egrep -i "$KEYWORDS_WILLIAMMCKINLEY" newpages.txt)
  THEODORE=$(egrep -i "$KEYWORDS_THEODOREROOSEVELT" newpages.txt)
  TAFT=$(egrep -i "$KEYWORDS_WILLIAMHOWARDTAFT" newpages.txt)
  WILSON=$(egrep -i "$KEYWORDS_WOODROWWILSON" newpages.txt)
  HARDING=$(egrep -i "$KEYWORDS_WARRENHARDING" newpages.txt)
  COOLIDGE=$(egrep -i "$KEYWORDS_CALVINCOOLIDGE" newpages.txt)
  HOOVER=$(egrep -i "$KEYWORDS_HERBERTHOOVER" newpages.txt)
  FDR=$(egrep -i "$KEYWORDS_FRANKLINDROOSEVELT" newpages.txt)
  TRUMAN=$(egrep -i "$KEYWORDS_HARRYTRUMAN" newpages.txt)
  EISENHOWER=$(egrep -i "$KEYWORDS_DWIGHTEISENHOWER" newpages.txt)
  KENNEDY=$(egrep -i "$KEYWORDS_JOHNFKENNEDY" newpages.txt)
  LBJ=$(egrep -i "$KEYWORDS_LYNDONJOHNSON" newpages.txt)
  NIXON=$(egrep -i "$KEYWORDS_RICHARDNIXON" newpages.txt)
  FORD=$(egrep -i "$KEYWORDS_GERALDFORD" newpages.txt)
  CARTER=$(egrep -i "$KEYWORDS_JAMESCARTER" newpages.txt)
  REAGAN=$(egrep -i "$KEYWORDS_RONALDREAGAN" newpages.txt)
  GHWBUSH=$(egrep -i "$KEYWORDS_GEORGEHWBUSH" newpages.txt)
  CLINTON=$(egrep -i "$KEYWORDS_BILLCLINTON" newpages.txt)
  GWBUSH=$(egrep -i "$KEYWORDS_GEORGEWBUSH" newpages.txt)
  OBAMA=$(egrep -i "$KEYWORDS_BARACKOBAMA" newpages.txt | egrep -iv "$KEYWORDS_BARACKOBAMA_EXCLUDE")

  if [ "$PRESIDENT" != "" ];
  then
    printf "$PRESIDENT" > President.txt
    export CATFILE="President.txt"
    export CATNAME="US Presidents"
    $CATEGORIZE
    rm President.txt
    unset PRESIDENT
  fi

  if [ "$WASHINGTON" != "" ];
  then
    printf "$WASHINGTON" > GeorgeWashington.txt
    export CATFILE="GeorgeWashington.txt"
    export CATNAME="George Washington"
    $CATEGORIZE
    rm GeorgeWashington.txt
    unset WASHINGTON
  fi

  if [ "$JOHNADAMS" != "" ];
  then
    printf "$JOHNADAMS" > JohnAdams.txt
    export CATFILE="JohnAdams.txt"
    export CATNAME="John Adams"
    $CATEGORIZE
    rm JohnAdams.txt
    unset JOHNADAMS
  fi

  if [ "$JEFFERSON" != "" ];
  then
    printf "$JEFFERSON" > ThomasJefferson.txt
    export CATFILE="ThomasJefferson.txt"
    export CATNAME="Thomas Jefferson"
    $CATEGORIZE
    rm ThomasJefferson.txt
    unset JEFFERSON
  fi

  if [ "$MADISON" != "" ];
  then
    printf "$MADISON" > JamesMadison.txt
    export CATFILE="JamesMadison.txt"
    export CATNAME="James Madison"
    $CATEGORIZE
    rm JamesMadison.txt
    unset MADISON
  fi

  if [ "$MONROE" != "" ];
  then
    printf "$MONROE" > JamesMonroe.txt
    export CATFILE="JamesMonroe.txt"
    export CATNAME="James Monroe"
    $CATEGORIZE
    rm JamesMonroe.txt
    unset MONROE
  fi

  if [ "$QUINCY" != "" ];
  then
    printf "$QUINCY" > JohnQuincyAdams.txt
    export CATFILE="JohnQuincyAdams.txt"
    export CATNAME="John Quincy Adams"
    $CATEGORIZE
    rm JohnQuincyAdams.txt
    unset QUINCY
  fi

  if [ "$JACKSON" != "" ];
  then
    printf "$JACKSON" > AndrewJackson.txt
    export CATFILE="AndrewJackson.txt"
    export CATNAME="Andrew Jackson"
    $CATEGORIZE
    rm AndrewJackson.txt
    unset JACKSON
  fi

  if [ "$BUREN" != "" ];
  then
    printf "$BUREN" > MartinVanBuren.txt
    export CATFILE="MartinVanBuren.txt"
    export CATNAME="Martin Van Buren"
    $CATEGORIZE
    rm MartinVanBuren.txt
    unset BUREN
  fi

  if [ "$WHARRISON" != "" ];
  then
    printf "$WHARRISON" > WilliamHenryHarrison.txt
    export CATFILE="WilliamHenryHarrison.txt"
    export CATNAME="William Henry Harrison"
    $CATEGORIZE
    rm WilliamHenryHarrison.txt
    unset WHARRISON
  fi

  if [ "$TYLER" != "" ];
  then
    printf "$TYLER" > JohnTyler.txt
    export CATFILE="JohnTyler.txt"
    export CATNAME="John Tyler"
    $CATEGORIZE
    rm JohnTyler.txt
    unset TYLER
  fi

  if [ "$POLK" != "" ];
  then
    printf "$POLK" > JamesKPolk.txt
    export CATFILE="JamesKPolk.txt"
    export CATNAME="James K. Polk"
    $CATEGORIZE
    rm JamesKPolk.txt
    unset POLK
  fi

  if [ "$TAYLOR" != "" ];
  then
    printf "$TAYLOR" > ZacharyTaylor.txt
    export CATFILE="ZacharyTaylor.txt"
    export CATNAME="Zachary Taylor"
    $CATEGORIZE
    rm ZacharyTaylor.txt
    unset TAYLOR
  fi

  if [ "$FILLMORE" != "" ];
  then
    printf "$FILLMORE" > MillardFillmore.txt
    export CATFILE="MillardFillmore.txt"
    export CATNAME="Millard Fillmore"
    $CATEGORIZE
    rm MillardFillmore.txt
    unset FILLMORE
  fi

  if [ "$PIERCE" != "" ];
  then
    printf "$PIERCE" > FranklinPierce.txt
    export CATFILE="FranklinPierce.txt"
    export CATNAME="Franklin Pierce"
    $CATEGORIZE
    rm FranklinPierce.txt
    unset PIERCE
  fi

  if [ "$BUCHANAN" != "" ];
  then
    printf "$BUCHANAN" > JamesBuchanan.txt
    export CATFILE="JamesBuchanan.txt"
    export CATNAME="James Buchanan"
    $CATEGORIZE
    rm JamesBuchanan.txt
    unset BUCHANAN
  fi

  if [ "$LINCOLN" != "" ];
  then
    printf "$LINCOLN" > AbrahamLincoln.txt
    export CATFILE="AbrahamLincoln.txt"
    export CATNAME="Abraham Lincoln"
    $CATEGORIZE
    rm AbrahamLincoln.txt
    unset LINCOLN
  fi

  if [ "$JOHNSON" != "" ];
  then
    printf "$JOHNSON" > AndrewJohnson.txt
    export CATFILE="AndrewJohnson.txt"
    export CATNAME="Andrew Johnson"
    $CATEGORIZE
    rm AndrewJohnson.txt
    unset JOHNSON
  fi

  if [ "$GRANT" != "" ];
  then
    printf "$GRANT" > UlyssesSGrant.txt
    export CATFILE="UlyssesSGrant.txt"
    export CATNAME="Ulysses S. Grant"
    $CATEGORIZE
    rm UlyssesSGrant.txt
    unset GRANT
  fi

  if [ "$HAYES" != "" ];
  then
    printf "$HAYES" > RutherfordBHayes.txt
    export CATFILE="RutherfordBHayes.txt"
    export CATNAME="Rutherford B. Hayes"
    $CATEGORIZE
    rm RutherfordBHayes.txt
    unset HAYES
  fi

  if [ "$GARFIELD" != "" ];
  then
    printf "$GARFIELD" > JamesAGarfield.txt
    export CATFILE="JamesAGarfield.txt"
    export CATNAME="James A. Garfield"
    $CATEGORIZE
    rm JamesAGarfield.txt
    unset GARFIELD
  fi

  if [ "$ARTHUR" != "" ];
  then
    printf "$ARTHUR" > ChesterAArthur.txt
    export CATFILE="ChesterAArthur.txt"
    export CATNAME="Chester A. Arthur"
    $CATEGORIZE
    rm ChesterAArthur.txt
    unset ARTHUR
  fi

  if [ "$CLEVELAND" != "" ];
  then
    printf "$CLEVELAND" > GroverCleveland.txt
    export CATFILE="GroverCleveland.txt"
    export CATNAME="Grover Cleveland"
    $CATEGORIZE
    rm GroverCleveland.txt
    unset CLEVELAND
  fi

  if [ "$HARRISON" != "" ];
  then
    printf "$HARRISON" > BenjaminHarrison.txt
    export CATFILE="BenjaminHarrison.txt"
    export CATNAME="Benjamin Harrison"
    $CATEGORIZE
    rm BenjaminHarrison.txt
    unset HARRISON
  fi

  if [ "$MCKINLEY" != "" ];
  then
    printf "$MCKINLEY" > WilliamMcKinley.txt
    export CATFILE="WilliamMcKinley.txt"
    export CATNAME="William McKinley"
    $CATEGORIZE
    rm WilliamMcKinley.txt
    unset MCKINLEY
  fi

  if [ "$THEODORE" != "" ];
  then
    printf "$THEODORE" > TheodoreRoosevelt.txt
    export CATFILE="TheodoreRoosevelt.txt"
    export CATNAME="Theodore Roosevelt"
    $CATEGORIZE
    rm TheodoreRoosevelt.txt
    unset THEODORE
  fi

  if [ "$TAFT" != "" ];
  then
    printf "$TAFT" > WilliamHowardTaft.txt
    export CATFILE="WilliamHowardTaft.txt"
    export CATNAME="William Howard Taft"
    $CATEGORIZE
    rm WilliamHowardTaft.txt
    unset TAFT
  fi

  if [ "$WILSON" != "" ];
  then
    printf "$WILSON" > WoodrowWilson.txt
    export CATFILE="WoodrowWilson.txt"
    export CATNAME="Woodrow Wilson"
    $CATEGORIZE
    rm WoodrowWilson.txt
    unset WILSON
  fi

  if [ "$HARDING" != "" ];
  then
    printf "$HARDING" > WarrenGHarding.txt
    export CATFILE="WarrenGHarding.txt"
    export CATNAME="Warren G. Harding"
    $CATEGORIZE
    rm WarrenGHarding.txt
    unset HARDING
  fi

  if [ "$COOLIDGE" != "" ];
  then
    printf "$COOLIDGE" > CalvinCoolidge.txt
    export CATFILE="CalvinCoolidge.txt"
    export CATNAME="Calvin Coolidge"
    $CATEGORIZE
    rm CalvinCoolidge.txt
    unset COOLIDGE
  fi

  if [ "$HOOVER" != "" ];
  then
    printf "$HOOVER" > HerbertHoover.txt
    export CATFILE="HerbertHoover.txt"
    export CATNAME="Herbert Hoover"
    $CATEGORIZE
    rm HerbertHoover.txt
    unset HOOVER
  fi

  if [ "$FDR" != "" ];
  then
    printf "$FDR" > FranklinDelanoRoosevelt.txt
    export CATFILE="FranklinDelanoRoosevelt.txt"
    export CATNAME="Franklin Delano Roosevelt"
    $CATEGORIZE
    rm FranklinDelanoRoosevelt.txt
    unset FDR
  fi

  if [ "$TRUMAN" != "" ];
  then
    printf "$TRUMAN" > HarrySTruman.txt
    export CATFILE="HarrySTruman.txt"
    export CATNAME="Harry S. Truman"
    $CATEGORIZE
    rm HarrySTruman.txt
    unset TRUMAN
  fi

  if [ "$EISENHOWER" != "" ];
  then
    printf "$EISENHOWER" > DwightDEisenhower.txt
    export CATFILE="DwightDEisenhower.txt"
    export CATNAME="Dwight D. Eisenhower"
    $CATEGORIZE
    rm DwightDEisenhower.txt
    unset EISENHOWER
  fi

  if [ "$KENNEDY" != "" ];
  then
    printf "$KENNEDY" > JohnFKennedy.txt
    export CATFILE="JohnFKennedy.txt"
    export CATNAME="John F. Kennedy"
    $CATEGORIZE
    rm JohnFKennedy.txt
    unset KENNEDY
  fi

  if [ "$LBJ" != "" ];
  then
    printf "$LBJ" > LyndonBJohnson.txt
    export CATFILE="LyndonBJohnson.txt"
    export CATNAME="Lyndon B. Johnson"
    $CATEGORIZE
    rm LyndonBJohnson.txt
    unset LBJ
  fi

  if [ "$NIXON" != "" ];
  then
    printf "$NIXON" > RichardMNixon.txt
    export CATFILE="RichardMNixon.txt"
    export CATNAME="Richard Nixon"
    $CATEGORIZE
    rm RichardMNixon.txt
    unset NIXON
  fi

  if [ "$FORD" != "" ];
  then
    printf "$FORD" > GeraldFord.txt
    export CATFILE="GeraldFord.txt"
    export CATNAME="Gerald Ford"
    $CATEGORIZE
    rm GeraldFord.txt
    unset FORD
  fi

  if [ "$CARTER" != "" ];
  then
    printf "$CARTER" > JimmyCarter.txt
    export CATFILE="JimmyCarter.txt"
    export CATNAME="James Earl Carter"
    $CATEGORIZE
    rm JimmyCarter.txt
    unset CARTER
  fi

  if [ "$REAGAN" != "" ];
  then
    printf "$REAGAN" > RonaldReagan.txt
    export CATFILE="RonaldReagan.txt"
    export CATNAME="Ronald Reagan"
    $CATEGORIZE
    rm RonaldReagan.txt
    unset REAGAN
  fi

  if [ "$GHWBUSH" != "" ];
  then
    printf "$GHWBUSH" > GeorgeHWBush.txt
    export CATFILE="GeorgeHWBush.txt"
    export CATNAME="George Herbert Walker Bush"
    $CATEGORIZE
    rm GeorgeHWBush.txt
    unset GHWBUSH
  fi

  if [ "$CLINTON" != "" ];
  then
    printf "$CLINTON" > BillClinton.txt
    export CATFILE="BillClinton.txt"
    export CATNAME="Bill Clinton"
    $CATEGORIZE
    rm BillClinton.txt
    unset CLINTON
  fi

  if [ "$GWBUSH" != "" ];
  then
    printf "$GWBUSH" > GeorgeWBush.txt
    export CATFILE="GeorgeWBush.txt"
    export CATNAME="George W. Bush"
    $CATEGORIZE
    rm GeorgeWBush.txt
    unset GWBUSH
  fi

  if [ "$OBAMA" != "" ];
  then
    printf "$OBAMA" > BarackObama.txt
    export CATFILE="BarackObama.txt"
    export CATNAME="Barack Obama"
    $CATEGORIZE
    rm BarackObama.txt
    unset OBAMA
  fi

  debug_end "US Presidents"

fi