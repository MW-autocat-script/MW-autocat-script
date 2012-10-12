#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Grotle.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Grotle"
send "\r"
expect EOF
