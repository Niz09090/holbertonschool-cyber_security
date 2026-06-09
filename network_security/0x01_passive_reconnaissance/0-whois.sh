#!/bin/bash
whois $1 | awk -F': ' '
/^Registrant |^Admin |^Tech / {
    section=$0
    gsub(/: .*/, "", section)
    gsub(/ /, " ", section)
    field=section
    value=$2
    if ($1 ~ /Street$/) value=value" "
    if ($1 ~ /Ext:$/) print field":"","value
    else if ($1 ~ /Ext:/) print field","value
    else print field","value
}' > $1.csv
