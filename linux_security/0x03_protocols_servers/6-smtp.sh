#!/bin/bash
grep -iE "tls|starttls" /etc/postfix/main.cf || echo "STARTTLS not configured"
