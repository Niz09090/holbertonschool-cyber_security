#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt "$1" > /dev/null && awk -F: '{print $2}' ~/.john/john.pot > 4-password.txt
