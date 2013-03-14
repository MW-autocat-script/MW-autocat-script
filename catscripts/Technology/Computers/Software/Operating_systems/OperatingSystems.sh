#!/bin/bash

egrep -i 'operating system| OS\b|\[\[OS ' newpages.txt | egrep -iv 'Windows|Unix|Linux|Mac OS|Open(| )BSD|Net(| )BSD|Free(| )BSD|\bDOS\b|Google Android' >> OperatingSystems.txt

OS=`stat --print=%s OperatingSystems.txt`

if [ $OS -ne 0 ];
then
  export CATFILE="OperatingSystems.txt"
  export CATNAME="Operating systems"
  $CATEGORIZE
fi

CURRENTDIR="./catscripts/Technology/Computers/Software/Operating_systems"

$CURRENTDIR/FreeBSD/FreeBSD.sh
$CURRENTDIR/Linux/Linux.sh
$CURRENTDIR/Mac_OS_X/Mac_OS_X.sh
$CURRENTDIR/OpenBSD/OpenBSD.sh
$CURRENTDIR/Unix/Unix.sh
$CURRENTDIR/Windows/Windows.sh

rm OperatingSystems.txt