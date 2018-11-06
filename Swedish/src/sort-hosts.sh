#!/bin/bash

# Homepage: https://github.com/lassekongo83/Frellwit-s-filter-lists
# Description: Very simple script to sort the hosts file and include the headers
# License: GPLv3

date=$(date '+%Y-%m-%d %H:%M:%S %Z')

cat main-hosts.txt | sort > output/sorted-hosts.txt

cat > output/hosts-headers.txt <<EOF
# Aims to get rid of ads, tracking, scams & badware on (mostly) Swedish websites
# ----
# title:          Frellwit's Swedish Hosts File
# last updated:   ${date}
# format:         hosts (hosts -- in hosts file format)
# homepage:       https://github.com/lassekongo83/Frellwits-filter-lists/
EOF

cat output/hosts-headers.txt output/sorted-hosts.txt > ../../Frellwits-Swedish-Hosts-File.txt

rm output/*.txt