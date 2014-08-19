#!/bin/bash

COMPUTERDIR="./catscripts/Technology/Computers"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Computers"

  . $COMPUTERDIR/Computer_programming/Computerprogramming.sh
  . $COMPUTERDIR/Computer_security/ComputerSecurity.sh
  . $COMPUTERDIR/Computer_hardware/Computerhardware.sh
  . $COMPUTERDIR/Computer_manufacturers/Manufacturers.sh
  . $COMPUTERDIR/Computer_networking/Computernetworking.sh
  . $COMPUTERDIR/Internet/Internet.sh
  . $COMPUTERDIR/Software/Software.sh #KEYWORDS_SOFTWARE_ALL
  . $COMPUTERDIR/Tablets/Tablets.sh

  debug_end "Computers"

else #Export variables only

  . $COMPUTERDIR/Computer_programming/Computerprogramming.sh norun
  . $COMPUTERDIR/Computer_security/ComputerSecurity.sh norun
  . $COMPUTERDIR/Computer_hardware/Computerhardware.sh norun
  . $COMPUTERDIR/Computer_manufacturers/Manufacturers.sh norun
  . $COMPUTERDIR/Computer_networking/Computernetworking.sh norun
  . $COMPUTERDIR/Software/Software.sh norun #KEYWORDS_SOFTWARE_ALL
  . $COMPUTERDIR/Tablets/Tablets.sh norun
fi