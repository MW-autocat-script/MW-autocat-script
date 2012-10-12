#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:MLPFIM.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "My Little Pony: Friendship is Magic"
send "\r"
expect EOF
