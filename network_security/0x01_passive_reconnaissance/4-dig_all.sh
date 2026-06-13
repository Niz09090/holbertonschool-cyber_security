#!/bin/bash
for type in A NS SOA MX TXT; do dig $1 $type +noall +answer; done
