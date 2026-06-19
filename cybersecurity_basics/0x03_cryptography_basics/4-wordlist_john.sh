#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt "$1" > /dev/null && john --show "$1" | awk -F: 'NR>1 {print $2}' | grep -v 'hashes' > 4-password.txt
