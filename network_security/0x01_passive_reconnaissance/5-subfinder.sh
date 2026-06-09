#!/bin/bash
subfinder -d $1 -silent -active -oI -o $1.txt 2>/dev/null && awk -F',' '{print $1}' $1.txt
