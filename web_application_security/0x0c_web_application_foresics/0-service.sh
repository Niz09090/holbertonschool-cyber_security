#!/bin/bash
# Analyze the authentication log file to determine which service
# attackers used to gain access to the system.
#
# Each line of auth.log follows the pattern:
#   <month> <day> <time> <host> <process[pid]>: <message...>
# The sixth whitespace-separated field of a line therefore holds
# either the first word of the message (Failed, Invalid, Accepted...)
# or, for PAM-generated lines, the PAM module identifier
# (pam_unix(sshd:auth):). Counting how often each of these values
# appears, sorted from most to least frequent, shows which service
# generated the bulk of the log activity and reveals it as the
# entry point the attackers used.

awk '{print $6}' auth.log | sort | uniq -c | sort -rn
