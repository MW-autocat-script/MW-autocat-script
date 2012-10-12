#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Ampharos.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Ampharos"
send "\r"
expect EOF
