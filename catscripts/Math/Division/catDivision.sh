#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Division.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Division"
send "\r"
expect EOF
