#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Rhyhorn.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Rhyhorn"
send "\r"
expect EOF
