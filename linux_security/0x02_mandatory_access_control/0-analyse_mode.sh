#!/bin/bash
echo "SELinux status:                 $(getenforce 2>/dev/null)" | tr 'A-Z' 'a-z'
