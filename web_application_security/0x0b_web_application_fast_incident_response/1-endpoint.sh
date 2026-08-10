#!/bin/bash
# Identify the endpoint (URL) that received the most requests,
# indicating it was likely the target of the attack.
#
# In a standard access log line, the HTTP request (method, path,
# and protocol) is enclosed in double quotes, e.g.
#   "GET /login HTTP/1.1"
# Splitting on the quote character isolates that request string,
# and its second whitespace-separated field is the requested path.
# Counting how often each path appears and sorting by frequency
# reveals the most heavily targeted endpoint.

awk -F'"' '{print $2}' logs.txt | awk '{print $2}' | sort | uniq -c | sort -rn | head -n 1 | awk '{print $2}'
