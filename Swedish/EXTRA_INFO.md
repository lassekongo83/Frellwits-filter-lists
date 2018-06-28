Note: This is information for Swedish visitors to this repo regarding the Swedish filter list(s). It's written in Swedish for now.

### Information till användare

**Frellwit's Swedish Filter** finns främst till för att plocka bort annonser, spårning, irritationer, lurendrejerier och bloat på **svenska** webbsidor. Listan bör redan vara automatiskt aktiverad i uBlock Origin om din webbläsare är på svenska. Denna lista används också av webbläsaren [Brave](https://brave.com) för regional blockering i Sverige. **OBS:** Jag stödjer inte officiellt Brave, så kan det hända att vissa lösningar inte kommer att fungera korrekt i den webbläsaren. Denna listan är skriven specifikt för uBlock Origin, därför finns det ingen garanti på att den kommer fungera i någon annan blockerare.

**Listan har ingen ekonomisk eller politisk motivation bakom sig.**
Jag accepterar inga donationer. Jag censurerar inga åsikter.

För att dra nytta av uBlock Origins bättre effektivitet, så är det inte rekommenderat att använda andra blockerare samtidigt (som till exempel Adblock Plus eller Ghostery). uBlock Origin kommer att blockera lika bra eller bättre än andra populära annonsblockerare. Andra blockerare kan också förhindra att uBlock Origins funktioner ej fungerar korrekt.

Listan är testad tillsammans med uBlock Origins orginalinställningar. Då används dessa listor: `EasyList`, `EasyPrivacy`, `Peter Lowe's Ad server list`, `Malware Domain List`, `Malware domains` och `uBlock Filters`. Listan bör även fungera bra tillsammans med `Fanboy's` alla listor. Det finns dock alltid en liten möjlighet att vissa konflikter kan uppstå tillsammans med andra listor.

Finns det något i listan du inte håller med om, eller vill vitlista så kan du antagligen: 
- [Deaktivera uBlock Origin](https://github.com/gorhill/uBlock/wiki/Quick-guide:-popup-user-interface#the-large-power-button) på sidan det gäller. Alternativt [deaktivera kosmetisk filtrering](https://github.com/gorhill/uBlock/wiki/Per-site-switches#no-cosmetic-filtering).
- Deaktivera listan i uBlock Origins `inställingar > Tredjepartfilter > Regioner & Språk > SWE: Frellwit's Swedish Filter`.
- Skriva ett eget filter som vitlistar, alternativt skapa en fork av hela projektet som gör de saker du vill.
- Öppna en ny issue här på GitHub som tydligt beskriver var och varför. (Jag accepterar ej vitlistning av annonser eller spårning.)

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
- Cookie och GDPR meddelanden. Filtret har som uppgift att undvika annonser och spårning så gott det går. Dessa meddelanden kan därför ses som irrelevanta och störande. Skyll ej på webbsidan om du inte ser något meddelande om GDPR med detta filtret påslaget.

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

**Listan plockar ej bort allt av det ovannämnda.** Jag försöker få listan till att plocka bort det som går och det jag hinner med, men vissa saker kan slinka förbi i alla fall. Upptäcks något jag har missat på någon svensk webbsida så öppna en ny issue här på GitHub och följ problemmallen.

Jag försöker aldrig medvetet censurera eller att förstöra funktionaliteten på någon webbsida. Ibland kan [strikta filter](https://github.com/gorhill/uBlock/wiki/Strict-blocking) blockera en webbsida om inget filteralternativ som till exempel `$third-party` eller `$script` har angetts. Ett strikt filter kan visa sig om du ser en varningstriangel och information om vilken lista sidan är blockerad i. Du som besökare kan enkelt med ett knapptryck temporärt eller permanent kringå filtret som blockerar sidan. 

De webbsidor som har varningstrianglar har det oftast av en anledning. Det kan bero på att sidan distribuerar skadlig programvara eller att sidan försöker lura besökaren på pengar. Där med ska det enbart ses som en varning och inte som censur om webbsidan är blockerad med ett strikt filter. Det är fortfarande du som bestämmer om du vill visa webbsidan eller ej. Vill du inte ha strikt filtrering aktiverat så kan du gå in i uBlock Origins inställningar > `Mina regler` och lägga till `no-strict-blocking: * true`, tryck sedan på `Spara` och `Skicka`.

Filtren skrivs så gott det går enligt min förmåga och vad som hinns med. **Målet är att sidorna ska fungera så normalt som möjligt, fast utan reklam, spårning, irritationer och bloat.** Om något inte fungerar korrekt så kan du öppna en ny issue här på GitHub så tar jag hand om det så fort jag hinner. (Glöm dock ej att följa problemmallen).

### Information till kollaboratörer

Vill du bidra med filter så kan du skicka en pull request. Tänk på att följa de punkter som nämns ovan. 

**Lite extra information om du vill bidra:**
- Även i pull requests vill jag ha tydliga exempel med URLs och skrämdumpar om så behövs.
- Varje pull request kommer att granskas. Jag kan välja att neka den eller att modifiera den.
- Länkar till premium-alternativ (och liknande) som inte täcker över innehåll eller avbryter besökaren ska inte plockas bort.
- Dubbletter kan förekomma i andra listor. Dessa plockas bort efter hand om det inte finns någon annan anledning till att de finns där.
- Kontrollera dina filter med [redundancy check](https://arestwo.org/famlam/redundantRuleChecker.html). Det verktyget kan hjälpa till med att hitta dubletter och felaktigt skrivna filter.
- Försök att undvika globala blockeringar om du är osäker på om det kan komma att förstöra funktionaliteten på andra sidor. Använd då helst `$domain` och/eller `$first-party` / `$~third-party`.

Många förfrågningar och tjänster som blockeras kan även förekomma på utländska webbsidor. Förfrågningarna har blockerats pågrund av en av anledningarna som [nämnts ovan](https://github.com/lassekongo83/Frellwits-filter-lists/blob/master/Swedish/EXTRA_INFO.md#vad-listan-har-som-mål-att-ta-bort). Alla dessa förfrågningar förekommer eller har någon gång förekommit på en svensk webbsida.
