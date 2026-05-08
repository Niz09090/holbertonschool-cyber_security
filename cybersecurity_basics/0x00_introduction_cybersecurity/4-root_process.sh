#!/bin/bash
ps -u "$1" -o user,pid,pcpu,pmem,vsz,rss,tty,stat,start,time,cmd | grep -v "\s0\s*0\s"
