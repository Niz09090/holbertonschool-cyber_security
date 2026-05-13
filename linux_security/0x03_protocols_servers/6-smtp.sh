#!/bin/bash
grep -i "starttls\|tls" /etc/postfix/main.cf 2>/dev/null || echo "STARTTLS not configured"
