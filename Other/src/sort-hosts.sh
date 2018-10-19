#!/bin/bash

# Homepage: https://github.com/lassekongo83/Frellwit-s-filter-lists
# Description: Very simple script to sort the hosts file and include the headers
# License: GPLv3

date=$(date '+%Y-%m-%d %H:%M:%S %Z')

cat anti-gambling-main.txt | sort > output/sorted-hosts.txt

cat > output/hosts-headers.txt <<EOF
# A hosts file that aims to block online casino and betting websites
# ----
# last updated:   ${date}
# format:         hosts (hosts -- in hosts file format)
# homepage:       https://github.com/lassekongo83/Frellwits-filter-lists/
EOF

cat output/hosts-headers.txt output/sorted-hosts.txt > ../../anti-gambling-and-betting-hosts-file.txt

rm output/*.txt