#!/bin/bash
# Count how many firewall rules were added to the system by
# inspecting the authentication log for sudo-executed iptables
# commands.
#
# When a user runs a privileged command via sudo, auth.log records
# a line containing "COMMAND=" followed by the executed command.
# Firewall rules are added with iptables' "-A" (append) or "-I"
# (insert) options, so counting COMMAND= lines that invoke iptables
# with one of those options gives the number of rules added.

grep "COMMAND=" auth.log | grep "iptables" | grep -cE -- "-A |-I "
