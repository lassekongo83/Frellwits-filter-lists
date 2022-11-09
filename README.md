# Frellwit's filter lists
Various filter lists for [uBlock Origin](https://github.com/gorhill/uBlock).

##

<b>IMPORTANT NOTE FOR CHROMIUM-BROWSER USERS:</b> The lists do not, can not, and will not support Chromium's extension Manifest v3 in its current shape and form, due to its exteremly short rule limit, and the possibility of it crippling advanced content blockers which these lists rely on. **If you are using Chrome, Chromium, Edge, Opera, Vivaldi, Brave**, (or any other browser based on chromium), then you may have to start preparing to switch your browser to Firefox (or an updated Firefox fork) if you want to continue to use any of these lists in 2023.

## Available lists

<table>
  <tr align="left">
    <th>List</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><a href="https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Filter.txt"><strong>Frellwits-Swedish-Filter.txt</strong></a><br/>(<a href="https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Filter.txt&title=Frellwit%27s%20Swedish%20Filter">Subscribe</a>)</td>
    <td>A filter for <a href="https://github.com/gorhill/uBlock">uBlock Origin</a> (uBO) that aims to remove regional Swedish ads, tracking, annoyances, scams + badware, and unnecessary bloat. This is Sweden's regional filter in uBlock Origin located in: <strong>Dashboard -> Filter lists -> Regions, language -> SWE: Frellwit's Swedish Filter</strong>. <br/><br/> uBO enables the region/language-filter that corresponds to the locale of your web browser. This means that <strong>SWE: Frellwit's Swedish Filter</strong> will be enabled by default if your browser has Swedish locale installed, and that you have to enable the filter manually as described above otherwise. <br/><br/> <strong>Swedish:</strong> <a href="https://github.com/lassekongo83/Frellwits-filter-lists/blob/master/Swedish/filter_info_sv.md">Mer information om filtret.</a> / <strong>English:</strong> <a href="https://github.com/lassekongo83/Frellwits-filter-lists/blob/master/Swedish/filter_info_en.md">More information about the filter.</a></td>
  </tr>
  <tr>
    <td><strong><a href="https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/emoji-filter.txt">emoji-filter.txt</a></strong><br/>(<a href="https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/emoji-filter.txt&title=I%20Don%27t%20Care%20About%20Emojis">Subscribe</a>)</td>
    <td>A.k.a "I Don't Care About Emojis." This filter aims to remove emoji realted scripts, stylesheets, fonts, and images.</td>
  </tr>
  <tr>
    <td><strong><a href="https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/i-dont-want-your-app.txt">i-dont-want-your-app.txt</a></strong><br/>(<a href="https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/i-dont-want-your-app.txt&title=I%20Don%27t%20Want%20Your%20App">Subscribe</a>)</td>
    <td>A filter for uBlock Origin (Firefox Android) that aims to specifically target websites that nags people to install their app.</td>
  </tr>
  <tr>
    <td><strong><a href="https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt">Frellwits-Swedish-Hosts-File.txt</a></strong></td>
    <td>This file is in hosts file format and works best when used in for example <a href="https://pi-hole.net/">pi-hole</a>, routers, etc. It aims to reduce your exposure to ads, tracking, scams & badware, and occasionally some annoyances on (mostly) Swedish websites. As always with hosts files, use at your own risk and make sure that you know what you're doing. This is <strong>not</strong> as powerful as the filter list for uBO. Use this hosts file together with <a href="https://pgl.yoyo.org/adservers/serverlist.php?showintro=0;hostformat=hosts">Peter Lowe’s Ad and tracking server list</a> for the best results.</td>
  </tr>
</table>

#### How to subscribe

Left-click on the subscribe link *or* copy the link address above and [follow the guide on how to import external lists in uBlock Origin.](https://github.com/gorhill/uBlock/wiki/Filter-lists-from-around-the-web)

## Useful tools that I use

[PyFunceble](https://github.com/funilrys/PyFunceble) by [funilrys](https://github.com/funilrys).

[FOP](https://hg.adblockplus.org/easylist/file/tip/FOP.py) by Michael/hgweb.

## Special thanks

[ryanbr](https://github.com/ryanbr) for the rules from [Fanboy's Swedish filter](https://github.com/ryanbr/fanboy-adblock/blob/master/firefox-regional/fanboy-adblocklist-swe.txt).

[gorhill](https://github.com/gorhill) for creating [uBlock Origin](https://github.com/gorhill/uBlock).

[DandelionSprout](https://github.com/DandelionSprout) for helping with mirrors.
