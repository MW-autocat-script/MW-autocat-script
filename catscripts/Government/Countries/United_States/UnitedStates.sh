#!/bin/bash

debug_start "United States"

UNITEDSTATESDIR="./catscripts/Government/Countries/United_States"

. $UNITEDSTATESDIR/CIA/CIA.sh #KEYWORDS_CIA_ALL
. $UNITEDSTATESDIR/FBI/FBI.sh #KEYWORDS_FBI_ALL
. $UNITEDSTATESDIR/NASA/NASA.sh #KEYWORDS_NASA_ALL
. $UNITEDSTATESDIR/US_constitution/USConstitution.sh #KEYWORDS_USCONSTITUTION_ALL
. $UNITEDSTATESDIR/US_military/USmilitary.sh #KEYWORDS_USMILITARY_ALL
. $UNITEDSTATESDIR/US_Presidents/Presidents.sh
. $UNITEDSTATESDIR/US_states/States.sh
. $UNITEDSTATESDIR/Puerto_Rico/PuertoRico.sh

debug_end "United States"