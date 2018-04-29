#!/bin/bash

# A small ugly script that combines the indivdual filters into one

# Add last modified date to headers.txt
DATE=$(date '+%Y-%m-%d %H:%M:%S %Z')

cat > ../Swedish/headers.txt <<EOF
[Adblock Plus 2.0]
! Title: Frellwit's Swedish Filter
! Expires: 3 days (update frequency)
! Last modified: ${DATE}
! Homepage: https://github.com/lassekongo83/Frellwit-s-filter-lists
! Description: A filter for uBlock Origin that aims to remove regional Swedish ads, tracking, social media, annoyances, sponsored articles etc.
! License: GPLv3
!
! Legal stuff. (T&C's)
! In no event shall this list, or the list author be liable for any indirect, direct, punitive, special, incidental, or consequential damages whatsoever.
! By downloading or viewing, or using this list, you are accepting these terms and the license.
!
! Special thanks to ryanbr@github for the rules from Fanboy's Swedish list.
!
EOF

# Copy the individual filter files to the temp directory so they can be sorted with FOP.py without touching the comments
cp -v ../Swedish/*filters.txt ../Swedish/temp/

sleep .5

# Sort with FOP.py
python3 FOP.py ../Swedish/temp/

sleep .5

# Combine the files and remove empty lines & commented lines starting with %. Make sure there is a new empty line at the end of each file.
cat ../Swedish/headers.txt ../Swedish/temp/network-filters.txt ../Swedish/temp/cosmetic-filters.txt ../Swedish/temp/scriptlet-filters.txt | egrep -v "(^%.*|^$)" > ../Frellwits-Swedish-Filter.txt

sleep .5

# Remove temp files
rm ../Swedish/temp/*.txt
