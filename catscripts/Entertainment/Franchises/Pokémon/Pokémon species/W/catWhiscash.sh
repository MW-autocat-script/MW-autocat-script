#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Whiscash.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Whiscash"
send "\r"
expect EOF
