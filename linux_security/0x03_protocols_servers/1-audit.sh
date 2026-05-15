#!/bin/bash
grep -P '^(?!\s*#|(?!\n)\s*$)' /etc/ssh/sshd_config
