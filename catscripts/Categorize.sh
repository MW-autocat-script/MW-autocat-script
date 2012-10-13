#!/usr/bin/expect -f

set timeout -1
spawn python $::env(PYWIKIPEDIADIR)/category.py add -file:$::env(CATFILE) -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "$::env(CATNAME)"
send "\r"
expect EOF
 
