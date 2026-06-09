#!/bin/bash
whois $1 | awk -F': ' '/^(Registrant|Admin|Tech) /{f=$1; v=$2; if(f~/Street$/)v=v" "; if(f~/Ext:/)printf f","v"\n"; else printf f","v"\n"}' > $1.csv
