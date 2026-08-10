#!/bin/bash
# Determine the operating system version of the targeted system
# by inspecting the kernel ring buffer log (dmesg).
#
# The very first line dmesg prints at boot is the kernel banner,
# which states the exact Linux kernel version, build info, and
# distribution details. Grepping for "Linux version" isolates that
# line and reveals the OS/kernel version running on the machine.

grep "Linux version" dmesg
