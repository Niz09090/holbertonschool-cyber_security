#!/bin/bash
subfinder -d $1 -silent -ip -o $1.txt 2>/dev/null && awk '{print $1}' $1.txt
