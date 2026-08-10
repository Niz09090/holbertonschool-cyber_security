#!/bin/bash
# Identify the IP address responsible for the most requests in the
# log file, which is likely the source of a Denial of Service (DoS)
# attack.
#
# Standard access log lines begin with the client's IP address as
# the first field. Extracting that field from every line, counting
# how many times each unique IP appears, and sorting by frequency
# reveals the single IP responsible for the largest volume of
# requests.

awk '{print $1}' logs.txt | sort | uniq -c | sort -rn | head -n 1 | awk '{print $2}'
