#!/bin/bash
grep -P "^(?!\s*#|(?!
)\s*$)" /etc/ssh/sshd_config
