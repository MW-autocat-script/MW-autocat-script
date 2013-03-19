#!/usr/bin/expect -f
#This is the generic expect script for all categories (sinc Pywikipediabot doesn't allow passing the categoryname with the 'add' action.
#CATFILE is the list of articles generated in one of the subscripts
#CATNAME is the name of the category (obviously)
set timeout -1
spawn python $::env(PYWIKIPEDIADIR)/category.py add -file:$::env(CATFILE) -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "$::env(CATNAME)"
send "\r"
expect EOF
 
