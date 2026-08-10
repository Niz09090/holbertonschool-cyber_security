#!/bin/bash
# Count the number of distinct attackers who gained access to the
# system, treating each unique source IP address as a separate
# attacker.
#
# Only successful logins ("Accepted password") represent an
# attacker who actually gained access, as opposed to a failed
# attempt. Extracting the source IP from each such line and
# counting the unique values gives the total number of distinct
# attackers who broke in.

grep "Accepted password" auth.log | grep -oP "from \K\S+" | sort -u | wc -l
