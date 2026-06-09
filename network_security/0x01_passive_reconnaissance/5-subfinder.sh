#!/bin/bash
subfinder -d $1 -silent -active -oI -o $1.txt 2>/dev/null && cat $1.txt
