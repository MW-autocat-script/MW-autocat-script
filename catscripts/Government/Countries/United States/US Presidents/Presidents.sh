#!/bin/bash

cat newpages.txt | egrep -i 'George Washington|President Washington' | egrep -iv 'George Washington Carver' >> GeorgeWashington.txt
cat newpages.txt | egrep -i 'John Adams' >> JohnAdams.txt
cat newpages.txt | egrep -i 'Thomas Jefferson|Jefforsonian|Monticello|President Jefferson' >> ThomasJefferson.txt
cat newpages.txt | egrep -i 'James Madison|President Madison' >> JamesMadison.txt
cat newpages.txt | egrep -i 'James Monroe|President Monroe' >> JamesMonroe.txt
cat newpages.txt | egrep -i 'John Q(|\.|uincy) Adams' >> JohnQuincyAdams.txt
cat newpages.txt | egrep -i 'Andrew Jackson|President Jackson' >> AndrewJackson.txt
cat newpages.txt | egrep -i 'Martin Van Buren|President Buren|President Van Buren' >> MartinVanBuren.txt
cat newpages.txt | egrep -i 'William H(|\.|enry) Harrison' >> WilliamHenryHarrison.txt
cat newpages.txt | egrep -i 'John Tyler|President Tyler' >> JohnTyler.txt
cat newpages.txt | egrep -i 'James(| K(|\.|nox)) Polk|President Polk' >> JamesKPolk.txt
cat newpages.txt | egrep -i 'Zachary Taylor|President Taylor' >> ZacharyTaylor.txt
cat newpages.txt | egrep -i 'Fillmore' >> MillardFillmore.txt
cat newpages.txt | egrep -i 'Franklin Pierce|President Pierce' >> FranklinPierce.txt
cat newpages.txt | egrep -i 'James Buchanan|President Buchanan' >> JamesBuchanan.txt
cat newpages.txt | egrep -i '(Abraham|Abe) Lincoln|President Lincoln' >> AbrahamLincoln.txt
cat newpages.txt | egrep -i 'Andrew Johnson' >> AndrewJohnson.txt
cat newpages.txt | egrep -i 'Ulysses(| S(|\.|impson)) Grant|President Grant' >> UlyssesSGrant.txt
cat newpages.txt | egrep -i 'Rutherford(| B(|\.|irchard)) Hayes|President Hayes' >> RutherfordBHayes.txt
cat newpages.txt | egrep -i 'James(| A(|\.|bram)) Garfield|President Garfield' >> JamesAGarfield.txt
cat newpages.txt | egrep -i 'Chester(| A(|\.|lan)) Arthur|President Arthur' >> ChesterAArthur.txt
cat newpages.txt | egrep -i '(President|Grover) Cleveland' >> GroverCleveland.txt
cat newpages.txt | egrep -i 'Benjamin Harrison' >> BenjaminHarrison.txt
cat newpages.txt | egrep -i '(William|President) McKinley' >> WilliamMcKinley.txt
cat newpages.txt | egrep -i '(Theodore|Teddy) Roosevelt' >> TheodoreRoosevelt.txt
cat newpages.txt | egrep -i 'Taft' >> WilliamHowardTaft.txt #Would anything that mentions Taft NOT be about him?
cat newpages.txt | egrep -i 'Woodrow Wilson|President Wilson' >> WoodrowWilson.txt
cat newpages.txt | egrep -i 'Warren(| G(|\.|amaliel)) Harding|President Harding' >> WarrenGHarding.txt
cat newpages.txt | egrep -i 'Coolidge' >> CalvinCoolidge.txt
cat newpages.txt | egrep -i 'Herbert(| C(|\.|lark)) Hoover|President Hoover' >> HerbertHoover.txt
cat newpages.txt | egrep -i 'Franklin(| D(|\.|elano)) Roosevelt|\bFDR\b' >> FranklinDelanoRoosevelt.txt
cat newpages.txt | egrep -i 'Harry(| S(|\.)) Truman|President Truman' >> HarrySTruman.txt
cat newpages.txt | egrep -i 'Eisenhower' >> DwightDEisenhower.txt
cat newpages.txt | egrep -i 'John(| F(|\.|itzgerald)) Kennedy|\bJFK\b' >> JohnFKennedy.txt
cat newpages.txt | egrep -i 'Lyndon(| B(|\.|aines)) Johnson|\bLBJ\b' >> LyndonBJohnson.txt
cat newpages.txt | egrep -i 'Richard(| M(|\.|ilhous)) Nixon|President Nixon|Tricky Dick' >> RichardMNixon.txt
cat newpages.txt | egrep -i 'Gerald(| R(|\.|udolph)) Ford|President Ford' >> GeraldFord.txt
cat newpages.txt | egrep -i '(James|Jimmy|President)(| E(|\.|arl)) Carter' >> JimmyCarter.txt
cat newpages.txt | egrep -i 'Ronald(| W(|\.|ilson)) Reagan|President Reagan' >> RonaldReagan.txt
cat newpages.txt | egrep -i 'George H(|\.|erbert) W(|\.|alker) Bush' >> GeorgeHWBush.txt
cat newpages.txt | egrep -i '(William|Bill)(| Jefferson) Clinton|President Clinton' >> BillClinton.txt
cat newpages.txt | egrep -i 'George W(|\.|alker) Bush' >> GeorgeWBush.txt
cat newpages.txt | egrep -i 'Barack.+Obama|President Obama' >> BarackObama.txt
cat newpages.txt | egrep -i 'Obama' | egrep -iv 'Michel(|l)e Obama' >> BarackObama.txt 

WASHINGTON=`stat --print=%s GeorgeWashington.txt`
JOHNADAMS=`stat --print=%s JohnAdams.txt`
JEFFERSON=`stat --print=%s ThomasJefferson.txt`
MADISON=`stat --print=%s JamesMadison.txt`
MONROE=`stat --print=%s JamesMonroe.txt`
QUINCY=`stat --print=%s JohnQuincyAdams.txt`
JACKSON=`stat --print=%s AndrewJackson.txt`
BUREN=`stat --print=%s MartinVanBuren.txt`
WHARRISON=`stat --print=%s WilliamHenryHarrison.txt`
TYLER=`stat --print=%s JohnTyler.txt`
POLK=`stat --print=%s JamesKPolk.txt`
TAYLOR=`stat --print=%s ZacharyTaylor.txt`
FILLMORE=`stat --print=%s MillardFillmore.txt`
PIERCE=`stat --print=%s FranklinPierce.txt`
BUCHANAN=`stat --print=%s JamesBuchanan.txt`
LINCOLN=`stat --print=%s AbrahamLincoln.txt`
JOHNSON=`stat --print=%s AndrewJohnson.txt`
GRANT=`stat --print=%s UlyssesSGrant.txt`
HAYES=`stat --print=%s RutherfordBHayes.txt`
GARFIELD=`stat --print=%s JamesAGarfield.txt`
ARTHUR=`stat --print=%s ChesterAArthur.txt`
CLEVELAND=`stat --print=%s GroverCleveland.txt`
HARRISON=`stat --print=%s BenjaminHarrison.txt`
MCKINLEY=`stat --print=%s WilliamMcKinley.txt`
THEODORE=`stat --print=%s TheodoreRoosevelt.txt`
TAFT=`stat --print=%s WilliamHowardTaft.txt`
WILSON=`stat --print=%s WoodrowWilson.txt`
HARDING=`stat --print=%s WarrenGHarding.txt`
COOLIDGE=`stat --print=%s CalvinCoolidge.txt`
HOOVER=`stat --print=%s HerbertHoover.txt`
FDR=`stat --print=%s FranklinDelanoRoosevelt.txt`
TRUMAN=`stat --print=%s HarrySTruman.txt`
EISENHOWER=`stat --print=%s DwightDEisenhower.txt`
KENNEDY=`stat --print=%s JohnFKennedy.txt`
LBJ=`stat --print=%s LyndonBJohnson.txt`
NIXON=`stat --print=%s RichardMNixon.txt`
FORD=`stat --print=%s GeraldFord.txt`
CARTER=`stat --print=%s JimmyCarter.txt`
REAGAN=`stat --print=%s RonaldReagan.txt`
GHWBUSH=`stat --print=%s GeorgeHWBush.txt`
CLINTON=`stat --print=%s BillClinton.txt`
GWBUSH=`stat --print=%s GeorgeWBush.txt`
OBAMA=`stat --print=%s BarackObama.txt`

if [ $WASHINGTON -ne 0 ];
then
  export CATFILE="GeorgeWashington.txt"
  export CATNAME="George Washington"
  ./catscripts/Categorize.sh
fi

if [ $JOHNADAMS -ne 0 ];
then
  export CATFILE="JohnAdams.txt"
  export CATNAME="John Adams"
  ./catscripts/Categorize.sh
fi

if [ $JEFFERSON -ne 0 ];
then
  export CATFILE="ThomasJefferson.txt"
  export CATNAME="Thomas Jefferson"
  ./catscripts/Categorize.sh
fi

if [ $MADISON -ne 0 ];
then
  export CATFILE="JamesMadison.txt"
  export CATNAME="James Madison"
  ./catscripts/Categorize.sh
fi

if [ $MONROE -ne 0 ];
then
  export CATFILE="JamesMonroe.txt"
  export CATNAME="James Monroe"
  ./catscripts/Categorize.sh
fi

if [ $QUINCY -ne 0 ];
then
  export CATFILE="JohnQuincyAdams.txt"
  export CATNAME="John Quincy Adams"
  ./catscripts/Categorize.sh
fi

if [ $JACKSON -ne 0 ];
then
  export CATFILE="AndrewJackson.txt"
  export CATNAME="Andrew Jackson"
  ./catscripts/Categorize.sh
fi

if [ $BUREN -ne 0 ];
then
  export CATFILE="MartinVanBuren.txt"
  export CATNAME="Martin Van Buren"
  ./catscripts/Categorize.sh
fi

if [ $WHARRISON -ne 0 ];
then
  export CATFILE="WilliamHenryHarrison.txt"
  export CATNAME="William Henry Harrison"
  ./catscripts/Categorize.sh
fi

if [ $TYLER -ne 0 ];
then
  export CATFILE="JohnTyler.txt"
  export CATNAME="John Tyler"
  ./catscripts/Categorize.sh
fi

if [ $POLK -ne 0 ];
then
  export CATFILE="JamesKPolk.txt"
  export CATNAME="James K. Polk"
  ./catscripts/Categorize.sh
fi

if [ $TAYLOR -ne 0 ];
then
  export CATFILE="ZacharyTaylor.txt"
  export CATNAME="Zachary Taylor"
  ./catscripts/Categorize.sh
fi

if [ $FILLMORE -ne 0 ];
then
  export CATFILE="MillardFillmore.txt"
  export CATNAME="Millard Fillmore"
  ./catscripts/Categorize.sh
fi

if [ $PIERCE -ne 0 ];
then
  export CATFILE="FranklinPierce.txt"
  export CATNAME="Franklin Pierce"
  ./catscripts/Categorize.sh
fi

if [ $BUCHANAN -ne 0 ];
then
  export CATFILE="JamesBuchanan.txt"
  export CATNAME="James Buchanan"
  ./catscripts/Categorize.sh
fi

if [ $LINCOLN -ne 0 ];
then
  export CATFILE="AbrahamLincoln.txt"
  export CATNAME="Abraham Lincoln"
  ./catscripts/Categorize.sh
fi

if [ $JOHNSON -ne 0 ];
then
  export CATFILE="AndrewJohnson.txt"
  export CATNAME="Andrew Johnson"
  ./catscripts/Categorize.sh
fi

if [ $GRANT -ne 0 ];
then
  export CATFILE="UlyssesSGrant.txt"
  export CATNAME="Ulysses S. Grant"
  ./catscripts/Categorize.sh
fi

if [ $HAYES -ne 0 ];
then
  export CATFILE="RutherfordBHayes.txt"
  export CATNAME="Rutherford B. Hayes"
  ./catscripts/Categorize.sh
fi

if [ $GARFIELD -ne 0 ];
then
  export CATFILE="JamesAGarfield.txt"
  export CATNAME="James A. Garfield"
  ./catscripts/Categorize.sh
fi

if [ $ARTHUR -ne 0 ];
then
  export CATFILE="ChesterAArthur.txt"
  export CATNAME="Chester A. Arthur"
  ./catscripts/Categorize.sh
fi

if [ $CLEVELAND -ne 0 ];
then
  export CATFILE="GroverCleveland.txt"
  export CATNAME="Grover Cleveland"
  ./catscripts/Categorize.sh
fi

if [ $HARRISON -ne 0 ];
then
  export CATFILE="BenjaminHarrison.txt"
  export CATNAME="Benjamin Harrison"
  ./catscripts/Categorize.sh
fi

if [ $MCKINLEY -ne 0 ];
then
  export CATFILE="WilliamMcKinley.txt"
  export CATNAME="William McKinley"
  ./catscripts/Categorize.sh
fi

if [ $THEODORE -ne 0 ];
then
  export CATFILE="TheodoreRoosevelt.txt"
  export CATNAME="Theodore Roosevelt"
  ./catscripts/Categorize.sh
fi

if [ $TAFT -ne 0 ];
then
  export CATFILE="WilliamHowardTaft.txt"
  export CATNAME="William Howard Taft"
  ./catscripts/Categorize.sh
fi

if [ $WILSON -ne 0 ];
then
  export CATFILE="WoodrowWilson.txt"
  export CATNAME="Woodrow Wilson"
  ./catscripts/Categorize.sh
fi

if [ $HARDING -ne 0 ];
then
  export CATFILE="WarrenGHarding.txt"
  export CATNAME="Warren G. Harding"
  ./catscripts/Categorize.sh
fi

if [ $COOLIDGE -ne 0 ];
then
  export CATFILE="CalvinCoolidge.txt"
  export CATNAME="Calvin Coolidge"
  ./catscripts/Categorize.sh
fi

if [ $HOOVER -ne 0 ];
then
  export CATFILE="HerbertHoover.txt"
  export CATNAME="Herbert Hoover"
  ./catscripts/Categorize.sh
fi

if [ $FDR -ne 0 ];
then
  export CATFILE="FranklinDelanoRoosevelt.txt"
  export CATNAME="Franklin Delano Roosevelt"
  ./catscripts/Categorize.sh
fi

if [ $TRUMAN -ne 0 ];
then
  export CATFILE="HarrySTruman.txt"
  export CATNAME="Harry S. Truman"
  ./catscripts/Categorize.sh
fi

if [ $EISENHOWER -ne 0 ];
then
  export CATFILE="DwightDEisenhower.txt"
  export CATNAME="Dwight D. Eisenhower"
  ./catscripts/Categorize.sh
fi

if [ $KENNEDY -ne 0 ];
then
  export CATFILE="JohnFKennedy.txt"
  export CATNAME="John F. Kennedy"
  ./catscripts/Categorize.sh
fi

if [ $LBJ -ne 0 ];
then
  export CATFILE="LyndonBJohnson.txt"
  export CATNAME="Lyndon B. Johnson"
  ./catscripts/Categorize.sh
fi

if [ $NIXON -ne 0 ];
then
  export CATFILE="RichardMNixon.txt"
  export CATNAME="Richard Nixon"
  ./catscripts/Categorize.sh
fi

if [ $FORD -ne 0 ];
then
  export CATFILE="GeraldFord.txt"
  export CATNAME="Gerald Ford"
  ./catscripts/Categorize.sh
fi

if [ $CARTER -ne 0 ];
then
  export CATFILE="Jimmy Carter.txt"
  export CATNAME="James Earl Carter"
  ./catscripts/Categorize.sh
fi

if [ $REAGAN -ne 0 ];
then
  export CATFILE="RonaldReagan.txt"
  export CATNAME="Ronald Reagan"
  ./catscripts/Categorize.sh
fi

if [ $GHWBUSH -ne 0 ];
then
  export CATFILE="GeorgeHWBush.txt"
  export CATNAME="George Herbert Walker Bush"
  ./catscripts/Categorize.sh
fi

if [ $CLINTON -ne 0 ];
then
  export CATFILE="BillClinton.txt"
  export CATNAME="Bill Clinton"
  ./catscripts/Categorize.sh
fi

if [ $GWBUSH -ne 0 ];
then
  export CATFILE="GeorgeWBush.txt"
  export CATNAME="George W. Bush"
  ./catscripts/Categorize.sh
fi

if [ $OBAMA -ne 0 ];
then
  export CATFILE="BarackObama.txt"
  export CATNAME="Barack Obama"
  ./catscripts/Categorize.sh
fi

rm GeorgeWashington.txt
rm JohnAdams.txt
rm ThomasJefferson.txt
rm JamesMadison.txt
rm JamesMonroe.txt
rm JohnQuincyAdams.txt
rm AndrewJackson.txt
rm MartinVanBuren.txt
rm WilliamHenryHarrison.txt
rm JohnTyler.txt
rm JamesKPolk.txt
rm ZacharyTaylor.txt
rm MillardFillmore.txt
rm FranklinPierce.txt
rm JamesBuchanan.txt
rm AbrahamLincoln.txt
rm AndrewJohnson.txt
rm UlyssesSGrant.txt
rm RutherfordBHayes.txt
rm JamesAGarfield.txt
rm ChesterAArthur.txt
rm GroverCleveland.txt
rm BenjaminHarrison.txt
rm WilliamMcKinley.txt
rm TheodoreRoosevelt.txt
rm WilliamHowardTaft.txt
rm WoodrowWilson.txt
rm WarrenGHarding.txt
rm CalvinCoolidge.txt
rm HerbertHoover.txt
rm FranklinDelanoRoosevelt.txt
rm HarrySTruman.txt
rm DwightDEisenhower.txt
rm JohnFKennedy.txt
rm LyndonBJohnson.txt
rm RichardMNixon.txt
rm GeraldFord.txt
rm JimmyCarter.txt
rm RonaldReagan.txt
rm GeorgeHWBush.txt
rm BillClinton.txt
rm GeorgeWBush.txt
rm BarackObama.txt