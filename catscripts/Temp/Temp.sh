#!/bin/bash

CURRENTDIR="./catscripts/Temp"

debug_start "Temporary scripts"

$CURRENTDIR/Soft_drinks/Softdrinks.sh
$CURRENTDIR/War/War.sh

debug_end "Temporary scripts"
