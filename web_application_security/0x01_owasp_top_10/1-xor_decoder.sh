#!/bin/bash
# Decode a WebSphere {xor} encoded password passed as $1

hash="${1#\{xor\}}"

python3 -c "
import base64
import sys

data = base64.b64decode(sys.argv[1])
print(''.join(chr(b ^ 0x5F) for b in data))
" "$hash"
