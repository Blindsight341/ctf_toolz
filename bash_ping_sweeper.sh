#!/bin/bash
for i in `seq 1 255`; do ping -w 1 -c 1 10.120.15.$i | tr \\n ' ' | awk '/1 received/ {print $2}'; done
