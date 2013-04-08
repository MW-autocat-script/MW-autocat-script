$!/bin/bash

CURRENTDIR="./catscripts/Temp/Animals/Vertebrates"

egrep -i 'vertebrate' newpages.txt \
| egrep -iv 'fish' \
| egrep -iv 'amphibian' \
| egrep -iv 'mammal' \
| egrep -iv 'bird' \
>> Vertebrates.txt

VERTEBRATES=`stat --print=%s Vertebrates.txt`

if [ $VERTEBRATES -ne 0 ];
then
  export CATFILE="Vertebrates.txt"
  export CATNAME="Vertebrates"
  $CATEGORIZE
fi


$CURRENTDIR/Mammals/Mammals.sh

rm Vertebrates.txt