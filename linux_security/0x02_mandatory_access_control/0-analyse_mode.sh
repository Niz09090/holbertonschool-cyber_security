#!/bin/bash
awk 'END{print "SELinux status:                 " ($0 ? tolower($0) : "disabled")}' <<< "$(getenforce 2>/dev/null)"
