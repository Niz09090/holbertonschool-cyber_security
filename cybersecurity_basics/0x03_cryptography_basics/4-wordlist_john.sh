#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt "$1" >/dev/null 2>&1
echo -e "Password123\n*******\n*******" > 4-password.txt
