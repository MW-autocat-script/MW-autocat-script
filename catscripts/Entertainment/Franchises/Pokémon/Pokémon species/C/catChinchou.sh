#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Chinchou.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Chinchou"
send "\r"
expect EOF
