#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Percentages.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Percentages"
send "\r"
expect EOF
