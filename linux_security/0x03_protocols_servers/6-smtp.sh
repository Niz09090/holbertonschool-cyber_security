#!/bin/bash
grep -r "tls" /etc/postfix/ 2>/dev/null || echo "STARTTLS not configured"
