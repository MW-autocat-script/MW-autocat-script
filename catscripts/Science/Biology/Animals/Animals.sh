#!/bin/bash

ANIMALSDIR="./catscripts/Science/Biology/Animals"

debug_start "Animals"

. $ANIMALSDIR/Arthropods/Arthropods.sh
. $ANIMALSDIR/Vertebrates/Vertebrates.sh

debug_end "Animals"
