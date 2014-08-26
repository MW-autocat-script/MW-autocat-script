#!/bin/bash

CHEMISTRYDIR="./catscripts/Science/Chemistry"

$CHEMISTRYDIR/Elements/Elements.sh
$CHEMISTRYDIR/Compounds/Compounds.sh

KEYWORDS_CHEMISTRY="Chemistry"
KEYWORDS_CHEMISTRY_EXCLUDE="Biochemistry|Actinium|Aluminum|Americium|Antimony|Argon|Arsenic|Astatine|Barium|Berkelium|Beryllium|Bismuth|Bohrium|Boron|Bromine|Cadmium|Calcium|Californium|Carbon|Cerium|Cesium|Chlorine|Chromium|Cobalt|Copernicium|Copper|Curium|Darmstadtium|Dubnium|Dysprosium|Einsteinium|Erbium|Europium|Fermium|Flerovium|Fluorine|Francium|Gadolinium|Gallium|Germanium|Gold|Hafnium|Hassium|Helium|Holmium|Hydrogen|Indium|Iodine|Iridium|Iron|Krypton|Lanthanum|Lawrencium|Lead|Lithium|Livermorium|Lutetium|Magnesium|Manganese|Meitnerium|Mendelevium|Mercury|Molybdenum|Neodymium|Neon|Neptunium|Nickel|Niobium|Nitrogen|Nobelium|Osmium|Oxygen|Palladium|Phosphorus|Platinum|Plutonium|Polonium|Potassium|Praseodymium|Promethium|Protactinium|Radium|Radon|Rhenium|Rhodium|Roentgenium|Rubidium|Ruthenium|Rutherfordium|Samarium|Scandium|Seaborgium|Selenium|Silicon|Silver|Sodium|Strontium|Sulfur|Tantalum|Technetium|Tellurium|Terbium|Thallium|Thorium|Thulium|Tin|Titanium|Tungsten|Ununoctium|Ununpentium|Ununseptium|Ununtrium|Uranium|Vanadium|Xenon|Ytterbium|Yttrium|Zinc|Zirconium"

if [ "$1" == "" ];
then
  
  debug_start "Chemistry"

  CHEMISTRY=$(egrep -i "$KEYWORDS_CHEMISTRY" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHEMISTRY_EXCLUDE")

  categorize "CHEMISTRY" "Chemistry"

  debug_end "Chemistry"

fi