#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Dialga.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Dialga"
send "\r"
expect EOF
