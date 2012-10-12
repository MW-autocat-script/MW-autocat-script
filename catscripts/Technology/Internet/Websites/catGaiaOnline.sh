#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:GaiaOnline.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Gaia Online"
send "\r"
expect EOF
