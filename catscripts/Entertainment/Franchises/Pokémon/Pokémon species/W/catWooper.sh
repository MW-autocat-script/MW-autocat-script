#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Wooper.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Wooper"
send "\r"
expect EOF
