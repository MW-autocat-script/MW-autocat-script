#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Multiplication.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Multiplication"
send "\r"
expect EOF
