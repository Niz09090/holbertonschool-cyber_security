#!/bin/bash
subfinder -d $1 -silent -o $1.txt -oI 2>/dev/null && cat $1.txt
