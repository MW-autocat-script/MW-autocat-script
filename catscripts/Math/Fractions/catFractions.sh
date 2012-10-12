#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Fractions.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Fractions"
send "\r"
expect EOF
