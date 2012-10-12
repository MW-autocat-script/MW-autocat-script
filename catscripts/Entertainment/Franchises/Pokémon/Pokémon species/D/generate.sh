#!/bin/bash

cat list.txt | while read x ; do ( cat Template.sh | sed "s/_placeholder_/$x/g" >  cat$x.sh ) ; done 
