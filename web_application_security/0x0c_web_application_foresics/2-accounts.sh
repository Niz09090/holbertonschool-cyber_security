#!/bin/bash
# Identify the compromised account by analyzing the last 1000 lines
# of the authentication log. A compromised account typically shows
# a pattern of multiple failed login attempts (brute-force) followed
# by at least one successful login for the same username.

accepted=$(tail -n 1000 auth.log | grep "Accepted password" | grep -oP "for \K\S+" | sort -u)

for user in $accepted
do
	count=$(tail -n 1000 auth.log | grep "Failed password" | grep -E -c "for (invalid user )?$user ")
	if [ "$count" -gt 0 ]
	then
		echo "$user"
	fi
done
