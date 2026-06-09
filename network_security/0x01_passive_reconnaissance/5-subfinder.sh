#!/bin/bash
subfinder -d $1 -silent 2>/dev/null && subfinder -d $1 -silent -active -oI 2>/dev/null | awk -F',' '{print $1","$2}' > $1.txt
