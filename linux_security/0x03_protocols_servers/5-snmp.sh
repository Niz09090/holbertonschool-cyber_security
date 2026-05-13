#!/bin/bash
grep -E "com2sec|rocommunity|rwcommunity" /etc/snmp/snmpd.conf | grep "public"
