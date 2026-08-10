#!/bin/bash
# Count the number of distinct attackers who gained access to the
# system, treating each unique source IP address as a separate
# attacker.
#
# A successful login alone doesn't prove an attack — it could be a
# legitimate user. An attacker is identified by the same pattern as
# a compromised account: one or more failed login attempts from an
# IP, followed by a successful one from that same IP. Counting the
# distinct IPs that match this pattern gives the true number of
# attackers who broke in.

accepted_ips=$(grep "Accepted password" auth.log | grep -oP "from \K\S+" | sort -u)

count=0
for ip in $accepted_ips
do
	failed=$(grep -c "Failed password.*from $ip " auth.log)
	if [ "$failed" -gt 0 ]
	then
		count=$((count + 1))
	fi
done

echo "$count"	

