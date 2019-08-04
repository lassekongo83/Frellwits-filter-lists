#!/bin/bash

# Homepage: https://github.com/lassekongo83/Frellwit-s-filter-lists
# Description: A little ugly script that sorts the filters. There are probably better ways to do this, but it gets the job done for now.
# License: GPLv3

date=$(date '+%Y-%m-%d %H:%M:%S %Z')
main='main.txt'
main_temp='output/main-temp.txt'
ppd='output/pre-parsing-directives.txt'
extended='output/extended.txt'
not_extended='output/not-extended.txt'
# uBO specific filters
ubo_n='redirect=|redirect-rule=|\$important|,important|\$document|,document|\$badfilter|,badfilter|\$inline-script|,inline-script|\$popunder|,popunder|\$1p|,1p|\$3p|,3p|\$xhr|,xhr|\$first-party|,first-party|\$all'
ubo_c=':xpath\(|:matches-css\(|:matches-css-before\(|:matches-css-after\(|:has\(|:if\(|:if-not\(|:has-text\(|:style\(|:scope|:nth-ancestor\(|:watch-attr\('
ubo_s='script:inject|#\+js\('
# Filters that work in most blockers but is needed in combination with other uBO filters to work
ubo_o='mediacreeper.com|mediacreeper.se'

# Extract browser and extension specific fixes if there are any
# TODO: Make sure !ext_ublock is handled differently AND included in the main list unlike the others
sed -n '/^!#if/,/^!#endif/p' $main > $ppd
sleep .5
# Delete it (Sleep needed here or it won't be removed properly)
sed -n '/^!#if/,/^!#endif/!p' $main > $main_temp

# egrep the stuff needed and then remove it with egrep -v
egrep "($ubo_n)|($ubo_c)|($ubo_s)|($ubo_o)" $main_temp > $extended
egrep -v "($ubo_n)|($ubo_c)|($ubo_s)|($ubo_o)|(^!.*|^$)" $main_temp > $not_extended

# Sort with FOP.py
python3 FOP.py output

# Header content
cat > output/headers.txt <<EOF
[Adblock Plus 2.0]
! Title: Frellwit's Swedish Filter
! Expires: 3 days (update frequency)
! Last modified: ${date}
! Homepage: https://github.com/lassekongo83/Frellwit-s-filter-lists
! Description: A filter for uBlock Origin that aims to remove regional Swedish ads, tracking, annoyances, scams + badware, and unnecessary bloat.
! License: GPLv3
!
! Legal stuff. (T&C's)
! In no event shall this list, or the list author be liable for any indirect, direct, punitive, special, incidental, or consequential damages whatsoever.
! By downloading or viewing, or using this list, you are accepting these terms and the license.
!
! Special thanks to ryanbr@github for the rules from Fanboy's Swedish list.
!
!#include Swedish/swe-ubo-nano-filters.txt
!#include Swedish/swe-ppd-filters.txt
EOF

cat > output/headers-extended.txt <<EOF
! This file is a part of Frellwits-Swedish-Filter.txt and contains filters specifically for uBO/Nano Adblocker
! There's no need to subscribe to this file
! Homepage: https://github.com/lassekongo83/Frellwit-s-filter-lists
EOF

# Combine the files
cat output/headers-extended.txt $extended > ../swe-ubo-nano-filters.txt
cat output/headers.txt $not_extended > ../../Frellwits-Swedish-Filter.txt
cat output/headers-extended.txt $ppd > ../swe-ppd-filters.txt

sleep .5

# No need to keep the temp txt files in output
rm output/*.txt
