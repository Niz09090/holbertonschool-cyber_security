#!/bin/bash
subfinder -d $1 -silent -active -oI 2>/dev/null | awk -F',' '{print $1","$2}' | tee $1.txt | awk -F',' '{print $1}'
