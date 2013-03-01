#!/bin/bash

egrep -i 'George Washington|President Washington' newpages.txt | egrep -iv 'George Washington Carver' >> GeorgeWashington.txt
egrep -i 'John Adams' newpages.txt >> JohnAdams.txt
egrep -i 'Thomas Jefferson|Jefforsonian|Monticello|President Jefferson' newpages.txt >> ThomasJefferson.txt
egrep -i 'James Madison|President Madison' newpages.txt >> JamesMadison.txt
egrep -i 'James Monroe|President Monroe' newpages.txt >> JamesMonroe.txt
egrep -i 'John Q(|\.|uincy) Adams' newpages.txt >> JohnQuincyAdams.txt
egrep -i 'Andrew Jackson|President Jackson' newpages.txt >> AndrewJackson.txt
egrep -i 'Martin Van Buren|President Buren|President Van Buren' newpages.txt >> MartinVanBuren.txt
egrep -i 'William H(|\.|enry) Harrison' newpages.txt >> WilliamHenryHarrison.txt
egrep -i 'John Tyler|President Tyler' newpages.txt >> JohnTyler.txt
egrep -i 'James(| K(|\.|nox)) Polk|President Polk' newpages.txt >> JamesKPolk.txt
egrep -i 'Zachary Taylor|President Taylor' newpages.txt >> ZacharyTaylor.txt
egrep -i 'Fillmore' newpages.txt >> MillardFillmore.txt
egrep -i 'Franklin Pierce|President Pierce' newpages.txt >> FranklinPierce.txt
egrep -i 'James Buchanan|President Buchanan' newpages.txt >> JamesBuchanan.txt
egrep -i '(Abraham|Abe) Lincoln|President Lincoln' newpages.txt >> AbrahamLincoln.txt
egrep -i 'Andrew Johnson' newpages.txt >> AndrewJohnson.txt
egrep -i 'Ulysses(| S(|\.|impson)) Grant|President Grant' newpages.txt >> UlyssesSGrant.txt
egrep -i 'Rutherford(| B(|\.|irchard)) Hayes|President Hayes' newpages.txt >> RutherfordBHayes.txt
egrep -i 'James(| A(|\.|bram)) Garfield|President Garfield' newpages.txt >> JamesAGarfield.txt
egrep -i 'Chester(| A(|\.|lan)) Arthur|President Arthur' newpages.txt >> ChesterAArthur.txt
egrep -i '(President|Grover) Cleveland' newpages.txt >> GroverCleveland.txt
egrep -i 'Benjamin Harrison' newpages.txt >> BenjaminHarrison.txt
egrep -i '(William|President) McKinley' newpages.txt >> WilliamMcKinley.txt
egrep -i '(Theodore|Teddy) Roosevelt' newpages.txt >> TheodoreRoosevelt.txt
egrep -i 'Taft' newpages.txt >> WilliamHowardTaft.txt #Would anything that mentions Taft NOT be about him?
egrep -i 'Woodrow Wilson|President Wilson' newpages.txt >> WoodrowWilson.txt
egrep -i 'Warren(| G(|\.|amaliel)) Harding|President Harding' newpages.txt >> WarrenGHarding.txt
egrep -i 'Coolidge' newpages.txt >> CalvinCoolidge.txt
egrep -i 'Herbert(| C(|\.|lark)) Hoover|President Hoover' newpages.txt >> HerbertHoover.txt
egrep -i 'Franklin(| D(|\.|elano)) Roosevelt|\bFDR\b' newpages.txt >> FranklinDelanoRoosevelt.txt
egrep -i 'Harry(| S(|\.)) Truman|President Truman' newpages.txt >> HarrySTruman.txt
egrep -i 'Eisenhower' newpages.txt >> DwightDEisenhower.txt
egrep -i 'John(| F(|\.|itzgerald)) Kennedy|\bJFK\b' newpages.txt >> JohnFKennedy.txt
egrep -i 'Lyndon(| B(|\.|aines)) Johnson|\bLBJ\b' newpages.txt >> LyndonBJohnson.txt
egrep -i 'Richard(| M(|\.|ilhous)) Nixon|President Nixon|Tricky Dick' newpages.txt >> RichardMNixon.txt
egrep -i 'Gerald(| R(|\.|udolph)) Ford|President Ford' newpages.txt >> GeraldFord.txt
egrep -i '(James|Jimmy|President)(| E(|\.|arl)) Carter' newpages.txt >> JimmyCarter.txt
egrep -i 'Ronald(| W(|\.|ilson)) Reagan|President Reagan' newpages.txt >> RonaldReagan.txt
egrep -i 'George H(|\.|erbert) W(|\.|alker) Bush' newpages.txt >> GeorgeHWBush.txt
egrep -i '(William|Bill)(| Jefferson) Clinton|President Clinton' newpages.txt >> BillClinton.txt
egrep -i 'George W(|\.|alker) Bush' newpages.txt >> GeorgeWBush.txt
egrep -i 'Barack.+Obama|President Obama' newpages.txt >> BarackObama.txt
egrep -i 'Obama' newpages.txt | egrep -iv 'Michel(|l)e Obama' newpages.txt >> BarackObama.txt
egrep -i 'president of the (U(\.|)S(\.|)|United States)|(U(\.|)S(\.|)|American) president' newpages.txt | egrep -iv 'George Washington|President Washington' newpages.txt | egrep -iv 'George Washington Carver'| egrep -iv 'John Adams'| egrep -iv 'Thomas Jefferson|Jefforsonian|Monticello|President Jefferson'| egrep -iv 'James Madison|President Madison'| egrep -iv 'James Monroe|President Monroe'| egrep -iv 'John Q(|\.|uincy) Adams'| egrep -iv 'Andrew Jackson|President Jackson'| egrep -iv 'Martin Van Buren|President Buren|President Van Buren'| egrep -iv 'William H(|\.|enry) Harrison'| egrep -iv 'John Tyler|President Tyler'| egrep -iv 'James(| K(|\.|nox)) Polk|President Polk'| egrep -iv 'Zachary Taylor|President Taylor'| egrep -iv 'Fillmore'| egrep -iv 'Franklin Pierce|President Pierce'| egrep -iv 'James Buchanan|President Buchanan'| egrep -iv '(Abraham|Abe) Lincoln|President Lincoln'| egrep -iv 'Andrew Johnson'| egrep -iv 'Ulysses(| S(|\.|impson)) Grant|President Grant'| egrep -iv 'Rutherford(| B(|\.|irchard)) Hayes|President 
Hayes'| egrep -iv 'James(| A(|\.|bram)) Garfield|President Garfield'| egrep -iv 'Chester(| A(|\.|lan)) Arthur|President Arthur'| egrep -iv '(President|Grover) Cleveland'| egrep -iv 'Benjamin Harrison'| egrep -iv '(William|President) McKinley'| egrep -iv '(Theodore|Teddy) Roosevelt'| egrep -iv 'Taft'| egrep -iv 'Woodrow Wilson|President Wilson'| egrep -iv 'Warren(| G(|\.|amaliel)) Harding|President Harding'| egrep -iv 'Coolidge'| egrep -iv 'Herbert(| C(|\.|lark)) Hoover|President Hoover'| egrep -iv 'Franklin(| D(|\.|elano)) Roosevelt|\bFDR\b'| egrep -iv 'Harry(| S(|\.)) Truman|President Truman'| egrep -iv 'Eisenhower'| egrep -iv 'John(| F(|\.|itzgerald)) Kennedy|\bJFK\b'| egrep -iv 'Lyndon(| B(|\.|aines)) Johnson|\bLBJ\b'| egrep -iv 'Richard(| M(|\.|ilhous)) Nixon|President Nixon|Tricky Dick'| egrep -iv 'Gerald(| R(|\.|udolph)) Ford|President Ford'| egrep -iv '(James|Jimmy|President)(| E(|\.|arl)) Carter'| egrep -iv 'Ronald(| W(|\.|ilson)) Reagan|President Reagan'| egrep -iv 'George H(|\.|erbert) W(|\.|alker) 
Bush'| egrep -iv '(William|Bill)(| Jefferson) Clinton|President Clinton'| egrep -iv 'George W(|\.|alker) Bush'| egrep -iv 'Obama' >> President.txt

PRESIDENT=`stat --print=%s President.txt`
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

if [ $PRESIDENT -ne 0 ];
then
  export CATFILE="President.txt"
  export CATNAME="US Presidents"
  ./catscripts/Categorize.sh
fi

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
rm President.txt