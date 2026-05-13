#!/bin/bash
postconf -n | grep tls || echo "STARTTLS not configured"
