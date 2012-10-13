#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:HondaCivic.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Honda Civic"
send "\r"
expect EOF
