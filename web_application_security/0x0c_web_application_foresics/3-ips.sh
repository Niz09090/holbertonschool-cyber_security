#!/bin/bash
# Count the number of distinct attackers who gained access to the
# system, treating each unique source IP address as a separate
# attacker.
#
# An attacker is an IP that had at least one failed authentication
# attempt (either a "Failed password" line or a PAM
# "authentication failure" line reporting the same rhost) before
# succeeding in logging in (Accepted password or Accepted publickey).
# Counting the distinct IPs that match this pattern gives the
# number of attackers who broke in.

accepted_ips=$(grep -E "Accepted (password|publickey)" auth.log | grep -oP "from \K\S+" | sort -u)

count=0
for ip in $accepted_ips
do
	failed=$(grep -E "(Failed password.*from $ip )|(authentication failure;.*rhost=$ip)" auth.log | wc -l)
	if [ "$failed" -gt 0 ]
	then
		count=$((count + 1))
	fi
done

echo "$count"
