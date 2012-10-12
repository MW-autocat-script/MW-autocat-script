#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Jirachi.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Jirachi"
send "\r"
expect EOF
