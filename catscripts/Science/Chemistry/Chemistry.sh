#!/bin/bash

CURRENTDIR="./catscripts/Science/Chemistry"

$CURRENTDIR/Elements/Elements.sh
$CURRENTDIR/Compounds/Compounds.sh

egrep -i 'Chemistry' newpages.txt | egrep -iv 'Biochemistry|Actinium|Aluminum|Americium|Antimony|Argon|Arsenic|Astatine|Barium|Berkelium|Beryllium|Bismuth|Bohrium|Boron|Bromine|Cadmium|Calcium|Californium|Carbon|Cerium|Cesium|Chlorine|Chromium|Cobalt|Copernicium|Copper|Curium|Darmstadtium|Dubnium|Dysprosium|Einsteinium|Erbium|Europium|Fermium|Flerovium|Fluorine|Francium|Gadolinium|Gallium|Germanium|Gold|Hafnium|Hassium|Helium|Holmium|Hydrogen|Indium|Iodine|Iridium|Iron|Krypton|Lanthanum|Lawrencium|Lead|Lithium|Livermorium|Lutetium|Magnesium|Manganese|Meitnerium|Mendelevium|Mercury|Molybdenum|Neodymium|Neon|Neptunium|Nickel|Niobium|Nitrogen|Nobelium|Osmium|Oxygen|Palladium|Phosphorus|Platinum|Plutonium|Polonium|Potassium|Praseodymium|Promethium|Protactinium|Radium|Radon|Rhenium|Rhodium|Roentgenium|Rubidium|Ruthenium|Rutherfordium|Samarium|Scandium|Seaborgium|Selenium|Silicon|Silver|Sodium|Strontium|Sulfur|Tantalum|Technetium|Tellurium|Terbium|Thallium|Thorium|Thulium|Tin|Titanium|Tungsten|Ununoctium|Ununpentium|Ununseptium|Ununtrium|Uranium|Vanadium|Xenon|Ytterbium|Yttrium|Zinc|Zirconium' >> Chemistry.txt

CHEMISTRY=$(stat --print=%s Chemistry.txt)

if [ $CHEMISTRY -ne 0 ];
then
  export CATFILE="Chemistry.txt"
  export CATNAME="Chemistry"
  $CATEGORIZE
fi

rm Chemistry.txt