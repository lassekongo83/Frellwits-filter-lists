#!/bin/bash

date=$(date '+%Y-%m-%d %H:%M:%S %Z')
main='lists/main.txt'

directives=$(
  sed -n '/^!#if env_chromium/,/^!#endif/p' $main
  sed -n '/^!#if env_mobile/,/^!#endif/p' $main
  sed -n '/^!#if !env_chromium/,/^!#endif/p' $main
  sed -n '/^!#if !env_mobile/,/^!#endif/p' $main
)

sorted=$(sed -e '/^!#if env_chromium/,/^!#endif/d' -e '/^!#if !env_chromium/,/^!#endif/d' -e '/^!#if !env_mobile/,/^!#endif/d' -e '/^!#if env_mobile/,/^!#endif/d' -e '/^!#if env_mv3/,/^!#endif/d' -e '/^\s*$/d; /^!/d' $main | sort -V)

# Header content
filter_headers=$(cat <<EOF
! Title: Frellwit's Swedish Filter
! Expires: 4 days
! Last modified: ${date}
! Homepage: https://github.com/lassekongo83/Frellwits-filter-lists
! Description: A filter for uBlock Origin that aims to remove regional Swedish ads, tracking, annoyances, scams + badware, and unnecessary bloat.
! License: GPL3 - https://github.com/lassekongo83/Frellwits-filter-lists/blob/master/LICENSE
!
! Legal stuff. (T&C's)
! In no event shall this list, or the list author be liable for any indirect, direct, punitive, special, incidental, or consequential damages whatsoever.
! By downloading or viewing, or using this list, you are accepting these terms and the license.
!
! Special thanks to ryanbr@github for the rules from the old "Fanboy's Swedish list".
EOF
)

# Merge
echo "$filter_headers" > Frellwits-Swedish-Filter.txt
echo "$sorted" >> Frellwits-Swedish-Filter.txt
echo "$directives" >> Frellwits-Swedish-Filter.txt
echo "uBO filter sorted."
