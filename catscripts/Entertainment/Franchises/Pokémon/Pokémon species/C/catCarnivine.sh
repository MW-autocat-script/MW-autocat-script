#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Carnivine.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Carnivine"
send "\r"
expect EOF
