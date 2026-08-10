#!/bin/bash
# List every user account that was created on the target system.
#
# When useradd creates a new account, auth.log records a line
# containing "new user:" followed by comma-separated fields such
# as "name=<username>". Extracting the value of the name field
# from each such line, sorting the usernames uniquely, and joining
# them with commas gives the full list of accounts created.

grep "new user" auth.log | grep -oP "name=\K[^,]+" | sort -u | paste -sd ','
