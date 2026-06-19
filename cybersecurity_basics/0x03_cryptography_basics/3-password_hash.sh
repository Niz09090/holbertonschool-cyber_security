#!/bin/bash
openssl rand -base64 12 | echo -n "$1" | openssl dgst -sha512 > 3_hash.txt
