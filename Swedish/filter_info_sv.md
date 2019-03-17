## Grundläggande information

Listan är specifikt skriven för, och testad i [uBlock Origin](https://github.com/gorhill/uBlock) med sina ursprungliga inställningar. Den bör också fungera i andra förgreningar av uBlock Origin, som till exempel [Nano Adblocker](https://github.com/NanoAdblocker/NanoCore).

*Listan är inte testad tillsammans med Nano Defender.*

**Använd bara en blockerare.** Används fler så kan det hända att vissa filter inte fungerar som de ska. Det finns [ingen fördel](https://twitter.com/gorhill/status/1033706103782170625) med att använda fler än 1 annonsblockerare i din webbläsare. *(Användning tillsammans med nätverksövergripande blockerare som till exempel pi-hole bör inte vara något problem. Listan är dock inte testad med användnignen av en sådan.)*

Vissa delar av listan kan fungera i andra annonsblockerare, men **ingen support** ges för dessa. Då använder du listan på egen risk, och får fixa eventuella problem själv.

## Filter policy

**Allt som nämns nedan blockeras inte.** Det som kommer att blockeras är det som **hittas på svenska webbsidor**, och det som är tekniskt möjligt. Listan bör inte blockera det som redan är blockerat med uBlock Origins ursprungliga inställningar. (Dubbletter kan fortfarande förekomma, och kommer att tas bort när de hittas.)

Listan har ingen ekonomisk eller politisk motivation bakom sig. Inga donationer sökes. Inga åsikter censureras.

#### Listan har som mål att plocka bort:

* **All form av annonsering**, såvida det inte är icke störande självpromotion för produkter / tjänster från **första part**. Men om denna självpromotion möter följande kriterier så kommer det att blockeras:
    - Självpromotion om casino, betting och lotterier.
    - Självpromotion om pseudovetenskap och kvacksalveri. (**Reklam** om anti-vax och potentiellt farliga läkemedel och liknande.)
    - Självpromotion som kräver JavaScript och / eller är bloatad och tar tid att ladda in.
    - Självpromotion som är irriterande och avbryter besökaren.
    - CSS, filnamn och annonsmärkning som inte skiljer sig från tredjeparts-annonseringen.

* **Spårning av besökare**
    - Mätningar, analyser och nästan allt som spårar besökaren. Även vissa tjänster som är utformade för att samla information automatiskt om buggar kan komma att blockeras.

* **Irritationer**
    - Något som avbryter besökaren, täcker över innehåll, eller tar upp onödigt mycket utrymme. (Onödiga modal pop-ups till exempel.)
    - Meddelanden om GDPR / Cookies.
    - Fientlig anti-högerklick och liknande som förhindrar besökaren från att använda sina enheter eller webbläsare som tänkt.
    - Alla former av anti-adblocks kommer att plockas bort, men bara om de triggas igång av något skript eller en CSS timer. Dold adblock-detektering kommer att klassas som spårning och plockas bort / avbrytas. Vanliga artiklar som uppmanar till diskussion om ämnet, eller en frågeställning nånstans på sidan, är helt ok att använda, så länge som ingen spårning görs av användningen av en annonsblockerare.
    - Mjuka betalväggar och andra typer av låtsas väggar. Till exempel en sådan vägg som slutar att fungera om JavaScript och / eller cookies är inaktiverade i webbläsarens inställningar.
        - Innehållet bakom sådana väggar **ska ej ses som skyddat** om det döljs av dålig JavaScript eller CSS som kan blockeras eller modifieras av user-agent. Skyddat innehåll ska ej finnas tillgänglig front-end förrens användaren blivit verifierad. En user-agent har i slutändan kontrollen över hur ett skickat förslag visas.
        - Med största sannolikhet så kommer mjuka betalväggar klassas som en form av irritation, lurendrejeri och / eller bloat, och kommer därmed att kringgås om det går.

* **Bedrägerier och skadlig programvara**
    - Bluffsidor och bluffannonser. Oftast så hämtas denna informationen från nyhetsartiklar och foruminlägg som varnar om diverse aktuella bedrägeriförsök.
    - Försök till att sprida skadlig programvara kommer att blockeras.
    - Dessa sidor kommer att vara blockerade med [strikt blockering](https://github.com/gorhill/uBlock/wiki/Strict-blocking).

* **Bloat**
    - Cryptomining utan besökarens tillåtelse. Helst så ska inga skript relaterat till cryptomining laddats tills besökaren gjort ett aktivt val.
    - Sociala funktioner som kräver mängder med JavaScript för att visa en "gilla-knapp" eller liknande.
    - JavaScript som inte behövs för att sidan ska kunna visas och fungera normalt för besökaren.
    - Beroenden och JavaScript-bibliotek som inte behövs längre på grund av att något annat har blockerats.
    - Något onödigt som slöar ner sidan markant. (Dåliga animationer till exempel.)

Målet är att sidorna i övrigt ska fungera så normalt som möjligt för besökaren först och främst. Hänsyn kan inte alltid tas till saker som vanliga besökare ej har tillgång till. (Som till exempel administrativa paneler och liknande.)

## Övrig info

Listan uppdateras automatiskt var tredje dag. Du kan också [uppdatera manuellt](https://github.com/gorhill/uBlock/wiki/Dashboard:-Filter-lists#update-now).

Om något inte fungerar som det ska, eller om du upptäcker oblockerat innehåll så kan du rapportera problemet här på GitHub. Var vänlig följ mallen. Frågor hänvisas till reddit.

Frågor gällande Frellwit's Swedish Filter: Skicka ett DM till /u/Frellwit på reddit.

Generella frågor om uBlock Origin som inte specifikt berör detta filtret: https://old.reddit.com/r/uBlockOrigin/

Vissa svar kan även finnas i [uBlock Origins wiki](https://github.com/gorhill/uBlock/wiki).

Om du inte håller med om någon lösning i listan så kan du kontakta mig på reddit och förklara varför. Alternativt så kan du skriva en egen filter-regel, skapa en egen förgrening av listan, vitlista sidan det gäller på, eller deaktivera hela listan i uBlock Origins eller Nano Adblockers inställningar.