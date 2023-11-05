#!/bin/bash

# Homepage: https://github.com/lassekongo83/Frellwit-s-filter-lists
# Description: A very simple script to sort the hosts file and include the headers
# License: GPLv3

date=$(date '+%Y-%m-%d %H:%M:%S %Z')
lines=$(grep -c '' ../lists/main-hosts.txt)
sort=$(sort -V ../lists/main-hosts.txt)

host_headers=$(cat <<EOF
# A hosts file that aims to get rid of ads, tracking, scams & badware on (mostly) Swedish websites
# ----
# title:          Frellwit's Swedish Hosts File
# last updated:   ${date}
# entries:        ${lines}
# format:         hosts (hosts -- in hosts file format)
# homepage:       https://github.com/lassekongo83/Frellwits-filter-lists/
EOF
)

echo "$host_headers" > ../Frellwits-Swedish-Hosts-File.txt
echo "$sort" >> ../Frellwits-Swedish-Hosts-File.txt
echo "Hosts file sorted."