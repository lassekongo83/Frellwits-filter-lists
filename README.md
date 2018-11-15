# Frellwit's filter lists
Various filter lists for [uBlock Origin](https://github.com/gorhill/uBlock) and [Nano Adblocker](https://github.com/NanoAdblocker/NanoCore).

## Available lists

| List                          | Description                                                             |
|:------------------------------|:------------------------------------------------------------------------|
**[Frellwits-Swedish-Filter.txt](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Filter.txt)** ([Subscribe][Frellwit's Swedish Filter Subscribe]) | A filter for [uBlock Origin](https://github.com/gorhill/uBlock) (uBO) that aims to remove regional Swedish ads, tracking, annoyances, scams + badware, and unnecessary bloat. This is Sweden's regional filter in uBlock Origin located in: **Dashboard -> Filter lists -> Regions, language -> SWE: Frellwit's Swedish Filter**. This filter is also used in [Brave](https://brave.com) for regional blocking in Sweden. **Note:** I don't officially support Brave. Some filters I use may not work in that browser. <br/><br/> uBO enables the region/language-filter that corresponds to the locale of your web browser. This means that **SWE: Frellwit's Swedish Filter** will be enabled by default if your browser has Swedish locale installed, and that you have to enable the filter manually as described above otherwise. <br/><br/> **Swedish:** [Mer information om filtret.](https://github.com/lassekongo83/Frellwits-filter-lists/blob/master/Swedish/EXTRA_INFO.md)
| **[deviantJUNKfilter.txt](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/deviantJUNKfilter.txt)** ([Subscribe][deviantJUNK Filter Subscribe]) | A filter for deviantart.com. Blocks over 1000 of users that upload junk or stuff in the wrong categories. (Warning: This list is highly personal and may not suit everyone.) 
| **[emoji-filter.txt](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/emoji-filter.txt)** ([Subscribe][I Don't Care About Emojis Subscribe]) | A.k.a "I Don't Care About Emojis." This filter aims to remove emoji realted scripts, stylesheets, fonts, and images.
| **[a.txt](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/a.txt)** ([Subscribe][Frellwit's personal filters Subscribe]) | This is where I keep some of my personal filters. (These may break stuff.)
| **[i-dont-want-your-app.txt](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/i-dont-want-your-app.txt)** ([Subscribe][I Don't Want Your App Subscribe]) | A filter for uBlock Origin (Firefox Android) that aims to specifically target websites that nags people to install their app.
| **[Frellwits-Swedish-Hosts-File.txt](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt)** | This file is in hosts file format and works best when used in for example [pi-hole](https://pi-hole.net/), routers, etc. It aims to reduce your exposure to ads, tracking, scams & badware, and occasionally some annoyances on (mostly) Swedish websites. As always with hosts file, use at your own risk and make sure that you know what you're doing. This is **not** as powerful as the filter list for uBO. Use this hosts file together with [Peter Lowe’s Ad and tracking server list](https://pgl.yoyo.org/adservers/serverlist.php?showintro=0;hostformat=hosts) for the best results.
| **[anti-casino-and-betting-hosts-file.txt](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/anti-casino-and-betting-hosts-file.txt)** | This hosts file aims to block online casino and betting websites. Useful for administrators who have friends/family/partners/workers that are addicted to online gambling. **Help wanted!** If you know of any gambling websites that can be added to this hosts file - let me know.

[Frellwit's Swedish Filter Subscribe]: https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Filter.txt&title=Frellwit%27s%20Swedish%20Filter
[deviantJUNK Filter Subscribe]: https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/deviantJUNKfilter.txt&title=deviantJUNK%20Filter
[I Don't Care About Emojis Subscribe]: https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/emoji-filter.txt&title=I%20Don%27t%20Care%20About%20Emojis
[Frellwit's personal filters Subscribe]: https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/a.txt&title=Frellwit%27s%20personal%20filters
[I Don't Want Your App Subscribe]: https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/i-dont-want-your-app.txt&title=I%20Don%27t%20Want%20Your%20App

#### How to subscribe

Left-click on the subscribe link *or* copy the link address above and [follow the guide on how to import external lists in uBlock Origin.](https://github.com/gorhill/uBlock/wiki/Filter-lists-from-around-the-web)

## Useful tools that I use

[Redundant Rule Checker](https://arestwo.org/famlam/redundantRuleChecker.html) by Famlam.

[PyFunceble](https://github.com/funilrys/PyFunceble) by [funilrys](https://github.com/funilrys).

[FOP](https://hg.adblockplus.org/easylist/file/tip/FOP.py) by Michael/hgweb.

## Special thanks

[ryanbr](https://github.com/ryanbr) for the rules from [Fanboy's Swedish filter](https://github.com/ryanbr/fanboy-adblock/blob/master/firefox-regional/fanboy-adblocklist-swe.txt).

[gorhill](https://github.com/gorhill) for creating [uBlock Origin](https://github.com/gorhill/uBlock).

[DandelionSprout](https://github.com/DandelionSprout) for helping with mirrors.