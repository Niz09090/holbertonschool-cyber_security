#!/bin/bash
grep "smtpd_tls" /etc/postfix/main.cf 2>/dev/null || echo "STARTTLS not configured"
