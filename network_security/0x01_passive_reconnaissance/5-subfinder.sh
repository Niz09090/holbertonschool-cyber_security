#!/bin/bash
subfinder -d $1 -o $1.txt -oJ=false -ip -csv 2>/dev/null | tee /dev/stderr | awk -F',' '{print $1}' && awk -F',' '{print $1","$2}' $1.txt > /tmp/tmp.txt && mv /tmp/tmp.txt $1.txt
