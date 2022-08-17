#!/bin/bash

# Homepage: https://github.com/lassekongo83/Frellwit-s-filter-lists
# Description: A little ugly script that sorts the filters. There are probably better ways to do this, but it gets the job done for now.
# License: GPLv3

date=$(date '+%Y-%m-%d %H:%M:%S %Z')
main='main.txt'
main_temp='output/main-temp.txt'
# browser specific
#firefox='output/firefox.txt'
#not_firefox='output/not_firefox.txt'
chromium='output/chromium.txt'
not_chromium='output/not_chromium.txt'
#mobile='output/mobile.txt'
not_mobile='output/not_mobile.txt'
#not_ubo='output/not_ubo.txt'
#brave_disable='output/brave_disable.txt'
# extended/not extended syntax
extended='output/extended.txt'
not_extended='output/not-extended.txt'
# uBO specific filters
ubo_n='redirect=|redirect-rule=|\$important|,important|\$document|,document|\$doc|,doc|\$frame|,frame|\$badfilter|,badfilter|\$inline-script|,inline-script|\$popunder|,popunder|\$1p|,1p|\$3p|,3p|\$strict1p|,strict1p|\$strict3p|,strict3p|\$xhr|,xhr|\$header|,header|\$first-party|,first-party|\$all|\$mp4|,mp4|\$empty|,empty|\$specifichide|,specifichide|\$shide|,shide|\$ghide|,ghide|\$ehide|,ehide|\$cname|,cname|\$denyallow|,denyallow|\$removeparam|,removeparam'
ubo_c=':xpath\(|:matches-css\(|:matches-css-before\(|:matches-css-after\(|:has\(|:has-text\(|:style\(|:scope|:watch-attr\(|:upward\(|:remove\(|:min-text-length\(|:matches-media\(|:matches-path\('
ubo_s='script:inject|#\+js\('

# Extract browser and extension specific filters if there are any
#sed -n '/^!#if env_firefox/,/^!#endif/p' $main > $firefox
#sed -n '/^!#if !env_firefox/,/^!#endif/p' $main > $not_firefox
sed -n '/^!#if env_chromium/,/^!#endif/p' $main > $chromium
sed -n '/^!#if !env_chromium/,/^!#endif/p' $main > $not_chromium
#sed -n '/^!#if env_mobile/,/^!#endif/p' $main > $mobile
sed -n '/^!#if !env_mobile/,/^!#endif/p' $main > $not_mobile
#sed -n '/^!#if !ext_ublock/,/^!#endif/p' $main > $not_ubo
#sed -n '/^!#if !env_safari/,/^!#endif/p' $main > $brave_disable
sleep .5
# Delete it (Sleep needed here or it won't be removed properly)
sed -n '/^!#if/,/^!#endif/!p' $main > $main_temp
#sed -n -i '/^!/!p' $firefox
#sed -n -i '/^!/!p' $not_firefox
sed -n -i '/^!/!p' $chromium
sed -n -i '/^!/!p' $not_chromium
#sed -n -i '/^!/!p' $mobile
sed -n -i '/^!/!p' $not_mobile
#sed -n -i '/^!/!p' $not_ubo
#sed -n -i '/^!/!p' $brave_disable

# egrep the stuff needed and then remove it with egrep -v
egrep "($ubo_n)|($ubo_c)|($ubo_s)" $main_temp > $extended
egrep -v "($ubo_n)|($ubo_c)|($ubo_s)|(^!.*|^$)" $main_temp > $not_extended

# Sort with FOP.py
python3 FOP.py output

# Header content
cat > output/headers.txt <<EOF
[Adblock Plus 2.0]
! Title: Frellwit's Swedish Filter
! Expires: 4 days (update frequency)
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
! --- Browser/extension specific filters
!#include Swedish/swe-ubo-filters.txt
!#if env_chromium
!#include Swedish/chromium.txt
!#endif
!#if !env_chromium
!#include Swedish/not_chromium.txt
!#endif
!#if !env_mobile
!#include Swedish/not_mobile.txt
!#endif
! --- End browser/extension specific filters
EOF

# FIXME - Don't create and use empty files https://github.com/DandelionSprout/adfilt/issues/7#issuecomment-559785940 & https://github.com/gorhill/uBlock/blob/92c0f6cab645a23374307b181498987c002c426c/src/js/assets.js#L116
# Combine the files
cat output/headers.txt $not_extended > ../../Frellwits-Swedish-Filter.txt
cat $extended > ../swe-ubo-filters.txt
#cat $firefox > ../firefox.txt
#cat $not_firefox > ../not_firefox.txt
cat $chromium > ../chromium.txt
cat $not_chromium > ../not_chromium.txt
#cat $mobile > ../mobile.txt
cat $not_mobile > ../not_mobile.txt
#cat $not_ubo > ../not_ubo.txt
#cat $brave_disable > ../brave_disable.txt

sleep .5

# No need to keep the temp txt files in output
rm output/*.txt
