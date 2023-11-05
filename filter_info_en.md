## Basic information

This list is specifically written and tested for [uBlock Origin](https://github.com/gorhill/uBlock) with its original settings.

**Only use one blocker.** Some filters may not work correctly if 2 or more blockers are used. There is [no benefit](https://twitter.com/gorhill/status/1033706103782170625) to using more than 1 adblocker in your web browser.

Some parts of the list may work with other adblockers, but **no support** is given for those. Then you'll be using the list at your own risk, and you'll have to fix any potential problems yourself.

## Filter policy

**Everything that's mentioned below will not be blocked.** What will be blocked is what is **found on Swedish websites**, and what is technically possible. The list should not block anything that's already blocked by uBlock Origin's original settings. (Duplicates may still occur, and will be removed when found.)

This list has no economic or political motivation. No donations sought. No opinions censored.

#### The list's goal is to remove:

* **All forms of advertising**, unless it's non-intrusive **first party** self-promotion of products / services. But some of these self-promotions will be blocked if the following conditions are met:
    - Self-promotion about casino, betting, and lotteries.
    - Self-promotion about pseudoscience, and ads from pretending charlatans. (Ads about anti-vax and potentially harmful pharmaceuticals etc.)
    - Self-promotion that requires JavaScript and / or is bloated.
    - Self-promotion that is annoying and interupts the visitor.
    - CSS, file names, and ad marking that doesn't differ from the third-party advertising.

* **Tracking**
    - Measurements, analytics, and just about anything that tracks the visitor. Some services that are designed to collect information automatically about bugs may also be blocked.

* **Annoyances**
    - Something that interrupts the visitor, covers the content, or takes up an unnecessary amount of space. (Unnecessary modal pop-ups for example.)
    - GDPR / Cookie messages.
    - Hostile anti-right-click and similar things that prevents the visitor from using their devices or browsers as intended.
    - Any form of anti-adblock will be removed, but only if it's triggered by a script or a CSS timer. Hidden adblock-detection will be classified as tracking and will be removed / aborted. Common articles that call for discussion on the subject, or a question somewhere on the page, are ok to use, as long as no tracking is made of the use of an adblocker.
    - Soft paywalls, otherwise known as "fake walls". A paywall is fake if it does not work when JavaScript and / or cookies are disabled in browser settings. 
        - The content behind such walls **should not be considered protected** if it is hidden by bad JavaScript or CSS that can be blocked or modified by the user-agent. Protected content should not be accessible client-side before the user has been verified. The user-agent will have the final word on how a sent suggestion is rendered.
        - Fake walls will most likely be seen as a form of annoyance, scam and / or bloat, and will thus be bypassed if possible.

* **Scams and malicious software**
    - Scam websites and ads. Most often, this information is retrieved from news articles and forum posts that warn about various current fraud attempts.
    - Attempts to spread malicious software will be blocked.
    - Those websites will be blocked with [strict blocking](https://github.com/gorhill/uBlock/wiki/Strict-blocking).

* **Bloat**
    - Cryptomining without the visitor's permission. Preferably no scripts related to cryptomining should be loaded until the visitor have made an active choice.
    - Social buttons that requires tons of JavaScript to display a little "like" button or something similar.
    - JavaScript that's not necessary for the website to work normally for the visitor.
    - Dependencies and JavaScript libraries that are no longer needed because something else has been blocked.
    - Something unnecessary that's slows down a page for no good reason. (Bad animations for example.)

The goal is for the pages to function as normally as possible for the visitor first and foremost. Consideration cannot always be given to things that ordinary visitors do not have access to. (For example, administrative interfaces and the like.)

## Other information

The list is set to automatically update every 4th day. You can also [update manually](https://github.com/gorhill/uBlock/wiki/Dashboard:-Filter-lists#update-now).

If something isn't working correctly, or if you find unblocked content, you can open an issue here on GitHub. Please follow the issue template. If you have a question, please use reddit.

Questions about Frellwit's Swedish Filter? Go to [discussions](https://github.com/lassekongo83/Frellwits-filter-lists/discussions) or send a DM to /u/Frellwit on reddit.

General questions about uBlock Origin that does not regard this filter: https://old.reddit.com/r/uBlockOrigin/

Some answers may also be found in [uBlock Origin's wiki](https://github.com/gorhill/uBlock/wiki).
