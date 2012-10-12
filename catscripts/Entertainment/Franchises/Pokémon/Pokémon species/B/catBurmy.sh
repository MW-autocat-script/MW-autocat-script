#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Burmy.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Burmy"
send "\r"
expect EOF
