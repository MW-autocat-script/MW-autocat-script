#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Poptropica.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Poptropica"
send "\r"
expect EOF
