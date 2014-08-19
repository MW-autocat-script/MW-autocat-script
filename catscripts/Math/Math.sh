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

debug_end "Mathematics"