#!/bin/bash
subfinder -d $1 -silent 2>/dev/null | tee /dev/tty | xargs -I{} echo {} && subfinder -d $1 -silent -active -oI 2>/dev/null | awk -F',' '{print $1","$2}' > $1.txt
