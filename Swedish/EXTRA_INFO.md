Note: This is information for Swedish visitors to this repo regarding the Swedish filter list(s). It's written in Swedish for now.

**Don't use the issue tracker here on GitHub for discussions or irrelevant messages!**

### Information till användare

**Frellwit's Swedish Filter** finns främst till för att plocka bort annonser, spårning, irritationer, lurendrejerier och bloat på **svenska** webbsidor. 

Många förfrågningar och tjänster som blockeras kan även förekomma på utländska webbsidor vilket inte bör vara något problem då förfrågningarna har blockerats pågrund av en av anledningarna som [nämnts nedan](https://github.com/lassekongo83/Frellwits-filter-lists/blob/master/Swedish/EXTRA_INFO.md#vad-listan-har-som-mål-att-ta-bort). Alla dessa förfrågningar förekommer eller har någon gång förekommit på en svensk webbsida.

**Listan har ingen ekonomisk eller politisk motivation bakom sig.**
Jag accepterar inga donationer. Jag censurerar inga åsikter.

Denna listan är skriven specifikt för uBlock Origin, därför finns det ingen garanti på att den kommer fungera i någon annan blockerare än just uBlock Origin.

För att dra nytta av uBlock Origins bättre effektivitet, så är det inte rekommenderat att använda andra blockerare samtidigt (som till exempel Adblock Plus eller Ghostery). uBlock Origin kommer att blockera lika bra eller bättre än andra populära annonsblockerare. Andra blockerare kan också förhindra att uBlock Origins funktioner ej fungerar korrekt.

Listan är testat tillsammans med uBlock Origins orginalinställningar. Då används dessa listor: `EasyList`, `EasyPrivacy`, `Peter Lowe's Ad server list`, `Malware Domain List`, `Malware domains` och `uBlock Filters`. *(Dubbletter kan ibland förekomma vilket inte nödvändigtvis är något problem. Hittar du nån dubblett så kan du tipsa mig om den så att jag kan ta bort den.)*
Listan bör även fungera bra tillsammans med `Fanboy's` alla listor. Det finns dock alltid en liten möjlighet att vissa konflikter kan uppstå tillsammans med andra listor.

Finns det något i listan du inte håller med om, eller vill vitlista så kan du antagligen: 
- [Deaktivera uBlock Origin](https://github.com/gorhill/uBlock/wiki/Quick-guide:-popup-user-interface#the-large-power-button) på sidan det gäller. Alternativt [deaktivera kosmetisk filtrering](https://github.com/gorhill/uBlock/wiki/Per-site-switches#no-cosmetic-filtering).
- Deaktivera listan i uBlock Origins `inställingar > Tredjepartfilter > Regioner & Språk > SWE: Frellwit's Swedish Filter`.
- Skriva ett eget filter som vitlistar.
- Öppna en ny issue här på GitHub som tydligt beskriver var och varför. (Jag accepterar ej vitlistning av någon annons eller spårning.)

### Vad listan har som mål att ta bort

Betald marknadsföring i form av: 
- Bilder.
- Ljud & video.
- Text.
- Influencer-samarbeten. (Ej video.)

Spårning som:
- Samlar in information om vad/vem/var besökaren är.
- Samlar in information om vilka intressen eller beteénden besökaren kan tänkas ha.
- Samlar in information om vilken mjukvara besökaren använder. (Anti-adblockers räknas in här.)
- Samlar in övrig information om besökaren. (Analytics till exempel.)

Irritationer som: 
- Täcker över delar av innehåll.
- Avbryter besökaren.
- Förhindrar besökaren från att använda sin webbläsare eller sitt operativsystem normalt.
- Mjuka betalväggar som slutar fungera så fort kakor eller JavaScript slås av.

Lurendrejerier och skadliga saker som försöker:
- Lura besökaren på pengar.
- Installera skadlig programvara.
- Gräva kryptovalutor utan besökarens tillåtelse.
- Utsätta besökaren för phishing.

Övrig bloat som:
- Ej behövs för att webbsidan ska fungera och kunna visas normalt.
- Ej behövs längre eftersom filtret redan plockat bort övriga beroenden i form av annonser, spårning, irritationer med mera.
- Markant slöar ner webbsidan utan någon bra anledning.
- Stora länkar till sociala medier.
- Onödiga saker som tar upp väldigt mycket skärmutrymme. (Enorma vertikala banners som tipsar om nyhetsbrev till exempel.)

**Listan plockar ej bort allt av det ovannämnda.** Jag försöker få listan till att plocka bort det som går och det jag hinner med, men vissa saker kan slinka förbi i alla fall. Upptäcks något jag har missat på någon svensk webbsida så öppna en ny issue här på GitHub och följ [problemmallen](https://github.com/lassekongo83/Frellwits-filter-lists/blob/master/ISSUE_TEMPLATE.md).

Jag försöker aldrig medvetet förstöra funktionaliteten eller censurera någon webbsida. Filtren skrivs så gott det går enligt min förmåga och vad som hinns med. **Målet är att sidorna ska fungera så normalt som möjligt, fast utan reklam, spårning, annoyances och bloat.** Fungerar något inte korrekt så kan du öppna en ny issue här på GitHub så tar jag hand om det så fort jag hinner. (Glöm dock ej att följa [problemmallen](https://github.com/lassekongo83/Frellwits-filter-lists/blob/master/ISSUE_TEMPLATE.md)).

Vill du bidra med filter så kan du skicka en pull request. Tänk på att följa ovannämnda punkter.
