#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Lairon.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Lairon"
send "\r"
expect EOF
