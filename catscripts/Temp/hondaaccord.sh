#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:HondaAccord.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Honda Accord"
send "\r"
expect EOF
