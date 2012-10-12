#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:WindowsServer2003.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Windows Server 2003"
send "\r"
expect EOF
