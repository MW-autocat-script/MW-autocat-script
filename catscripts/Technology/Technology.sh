#!/bin/bash

TECHNOLOGYDIR="./catscripts/Technology"

debug_start "Technology"

. $TECHNOLOGYDIR/Inventions/Inventions.sh
. $TECHNOLOGYDIR/Inventors/Inventors.sh
. $TECHNOLOGYDIR/Cameras/Cameras.sh
. $TECHNOLOGYDIR/Computers/Computers.sh
. $TECHNOLOGYDIR/Telephones/Telephones.sh
. $TECHNOLOGYDIR/Portable_media_players/PMP.sh

debug_end "Technology"