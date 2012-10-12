#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:KingdomHeartsSeries.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Kingdom Hearts series"
send "\r"
expect EOF
