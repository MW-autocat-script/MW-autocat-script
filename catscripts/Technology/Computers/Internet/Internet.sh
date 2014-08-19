#!/bin/bash

INTERNETDIR="./catscripts/Technology/Computers/Internet"

debug_start "Internet"

. $INTERNETDIR/Websites/Websites.sh
. $INTERNETDIR/Email/Email.sh

debug_end "Internet"
