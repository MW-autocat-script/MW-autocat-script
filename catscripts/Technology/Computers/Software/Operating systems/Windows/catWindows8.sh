#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Windows8.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Windows 8"
send "\r"
expect EOF
