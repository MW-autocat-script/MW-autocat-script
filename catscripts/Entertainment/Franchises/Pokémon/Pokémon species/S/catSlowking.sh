#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Slowking.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Slowking"
send "\r"
expect EOF
