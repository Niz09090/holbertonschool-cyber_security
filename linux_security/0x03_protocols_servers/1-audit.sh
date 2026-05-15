#!/bin/bash
sudo sshd -T | grep -E '^(kbdinteractiveauthentication|usepam|x11forwarding|printmotd|acceptenv|subsystem|passwordauthentication|permitrootlogin|authorizedkeysfile|tcpkeepalive)'
