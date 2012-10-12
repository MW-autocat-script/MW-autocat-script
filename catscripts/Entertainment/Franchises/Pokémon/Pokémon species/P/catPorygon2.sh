#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Porygon2.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Porygon2"
send "\r"
expect EOF
