#!/bin/bash

MATHDIR="./catscripts/Math"

debug_start "Mathematics"

. $MATHDIR/Addition/Addition.sh
. $MATHDIR/Algebra/Algebra.sh
. $MATHDIR/Division/Division.sh
. $MATHDIR/Exponents/Exponents.sh
. $MATHDIR/Fractions/Fractions.sh 
. $MATHDIR/Geometry/Geometry.sh
. $MATHDIR/Measurements/Measurements.sh
. $MATHDIR/Multiplication/Multiplication.sh
. $MATHDIR/Percentages/Percentages.sh
. $MATHDIR/Roman_numerals/RomanNumerals.sh
. $MATHDIR/Trigonometry/Trigonometry.sh #KEYWORDS_TRIGONOMETRY_ALL

debug_end "Mathematics"