#!/bin/bash
# Identify which tool or library the attacker used by analyzing the
# User-Agent strings associated with their requests.
#
# The attacker is the IP address with the highest number of
# requests in the log file. Filtering the log for lines from that
# IP and extracting the User-Agent field (the sixth field when
# splitting on double quotes in combined log format) reveals what
# client software sent the requests. Counting and sorting those
# strings identifies the most frequently used one.

attacker_ip=$(awk '{print $1}' logs.txt | sort | uniq -c | sort -rn | head -n 1 | awk '{print $2}')

grep $attacker_ip logs.txt | awk -F'"' '{print $6}' | sort | uniq -c | sort -rn | head -n 1 | sed -E 's/^ *[0-9]+ //'
