#!/bin/bash
awk '!/^#/ && !/^$/' /etc/ssh/sshd_config
