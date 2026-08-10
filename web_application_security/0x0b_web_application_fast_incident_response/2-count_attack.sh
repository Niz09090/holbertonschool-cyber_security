#!/bin/bash
# Determine how many requests the attacker sent, where the attacker
# is the IP address with the highest number of requests in the log
# file.
#
# The first field of each access log line is the client IP.
# Counting occurrences of each unique IP and sorting by frequency
# identifies the attacker's IP as the top entry. The count next to
# that entry is the total number of requests made by the attacker.

awk '{print $1}' logs.txt | sort | uniq -c | sort -rn | head -n 1 | awk '{print $1}'
