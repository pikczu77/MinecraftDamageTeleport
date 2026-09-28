# Damage TP

Datapack do Minecrafta: **każde obrażenie teleportuje cię w losowe miejsce**,
tak jak w oryginale („MC but taking damage teleports you”, ToMiiX).

Różnica jest taka, że co któryś teleport jest śmieszny, pod film:

| Dokąd | Co się dzieje | Szansa (domyślnie) |
|---|---|---|
| **Losowe miejsce** | zwykły teleport, do 2500 kratek dalej, jak w oryginale | 65% |
| **Wysoko w niebo** | losowe miejsce, ale 1000 kratek nad ziemią | 5% |
| **Nad lawę** | losowe miejsce, 3 kratki nad dołem pełnym lawy | 5% |
| **Inny wymiar** | Overworld ↔ Nether ↔ End (End to 25% z tych skoków) | 5% |
| **Dach Netheru** | na bedrockowy sufit Netheru, skąd zejdziesz tylko, jak się zranisz | 5% |
| **Środek oceanu** | na wodę, daleko od lądu | 5% |
| **Deep Dark** | do jaskini w Deep Darku, w ciemności, z dźwiękami Wardena | 5% |
| **Creeper-towarzysz** | zwykły teleport, ale creeper teleportuje się razem z tobą | 5% |

Śmieszne teleporty mają duży napis na ekranie („☁ 1000 KRATEK NAD ZIEMIĄ! ☁”,
„♨ LAWA! ♨”, „NETHER!”, „THE END”, „DACH NETHERU”, „ŚRODEK OCEANU”, „DEEP DARK”,
„TOWARZYSZ PODRÓŻY”), dźwięki i cząsteczki. Zwykły wygląda jak w
oryginale: dźwięk endermana i współrzędne na pasku akcji.

## Instalacja

1. Weź `DamageTP.zip` (albo zbuduj go: `./tools/build.sh`, wynik w `dist/`).
2. Wrzuć zip do `.minecraft/saves/<twój świat>/datapacks/`.
3. W grze wpisz `/reload` (albo wejdź do świata od nowa).

Działa na **Minecraft 1.20.2 i nowszych**. Komendy `/function` wymagają
włączonych kodów (op / „Zezwalaj na kody”).

## Śmieszne teleporty dokładniej

- **Wysoko w niebo**: miejsce losuje się jak przy zwykłym teleporcie, a potem
  lądujesz 1000 kratek nad ziemią i spadasz ~15 sekund.
  - Dostajesz **wiadro wody** na MLG, jeśli jeszcze go nie masz (trafia na pierwsze
    wolne miejsce, zwykle na pasek szybkiego wyboru; przy pełnym ekwipunku wypada).
  - Na pasku akcji leci **timer**: „↓ Ziemia za 12,3 s   812 kratek”, a przez
    ostatnie 2 sekundy na czerwono „⚠ ZIEMIA ZA 1,4 s! ⚠”. Przez ostatnie 5 sekund
    co sekundę słychać pik.
  - Jak przeżyjesz (woda, jezioro, szczęście), na ekranie pojawia się **„MLG!”**.

  Jest to możliwe tylko w Overworldzie: w Netherze nad głową jest bedrock,
  a w Endzie pod spodem zwykle pustka, więc tam zamiast tego jest zwykły teleport.
- **Nad lawę**: skan szuka suchego, naturalnego gruntu (ziemia, kamień, piasek,
  netherrack, end stone...), robi pod tobą dół 3x3 głęboki na 2 kratki, zalany
  lawą, i teleportuje cię 3 kratki nad nim, więc widzisz, w co wpadasz.
  Po chwili (`lava_time`) następne obrażenie wyrzuca cię gdzie indziej, więc
  zwykle kończy się na ~4 serduszkach i podpaleniu. Lawa zostaje w świecie.
- **Inny wymiar**: do Netheru współrzędne dzielą się przez 8, jak przy portalu,
  i skan szuka bezpiecznego miejsca w promieniu `dim_radius`. Do Endu trafiasz
  na obsydianową platformę, tak jak przez portal. Smok czeka.
- **Dach Netheru**: lądujesz na bedrockowym suficie Netheru (Y 128). Nie da się
  stamtąd zejść normalnie. Musisz się zranić: skoczyć z 4 kratek, rzucić perłę
  kresu, cokolwiek. Obrażenie oznacza teleport, który zabiera cię z dachu. Na pasku akcji
  widać „Utknąłeś na dachu Netheru! Zrań się, żeby zejść... albo czekaj 58 s”.
  Jeśli nie masz jak się zranić, po minucie (`roof_time`) mod sam cię zdejmie.
  Działa z każdego wymiaru; z Overworldu współrzędne dzielą się przez 8.
- **Środek oceanu**: losowe miejsce w zasięgu `radius`, ale na wodzie. Najpierw
  szuka biomu głębokiego oceanu (tam zwykle nie widać lądu), potem dowolnego
  oceanu. Jeśli w zasięgu nie ma oceanu, robi zwykły teleport. Tylko w Overworldzie.
- **Deep Dark**: losowe miejsce w zasięgu `radius`, ale w suchej jaskini w biomie
  Deep Dark (głęboko pod górami). Na start dostajesz 10 sekund efektu Ciemności,
  słyszysz bicie serca Wardena i krzyk shriekera. To tylko dźwięki: prawdziwy
  Warden przyjdzie dopiero, jak sam uruchomisz shriekery. Deep Dark jest rzadszy
  niż zwykły teren, więc mod sprawdza do 20 kolumn (`deep_dark_tries`); przy
  szukaniu może na chwilę przyciąć. Jeśli nic nie znajdzie, robi zwykły teleport.
  Tylko w Overworldzie.
- **Creeper-towarzysz**: zwykły losowy teleport, ale creeper ląduje 2 kratki za
  twoimi plecami (albo w tym samym miejscu, jeśli za plecami jest ściana) i patrzy
  prosto na ciebie. Jeśli jakiś creeper był w pobliżu (16 kratek), leci z tobą właśnie on.
  Uciekaj! A jak wybuchnie, to przecież obrażenie, więc znowu teleport.

Tryb kreatywny i obserwatora się nie teleportuje. Przez 2 sekundy po teleporcie
(`cooldown`) obrażenia nie teleportują.

## Komendy

| Komenda | Co robi |
|---|---|
| `/function dtp:help` | pokazuje ustawienia i listę komend |
| `/function dtp:now/lava` | teleport **od razu** wybranego rodzaju (też w kreatywnym, do testów) |
| `/function dtp:next/lava` | wybrany rodzaj przy **następnym obrażeniu** (do zaplanowanych scen) |
| `/function dtp:on`, `dtp:off` | włącza / wyłącza datapack |

Zamiast `lava` w `now/` i `next/` można wpisać: `sky`, `roof`, `ocean`, `deep_dark`, `creeper`, `nether`, `overworld`,
`end`, `dimension` (losowy inny wymiar), `teleport` (zwykłe losowe miejsce),
`any` (losowo według szans; `next/any` kasuje wymuszony teleport).

Na innym graczu: `/execute as Nick at @s run function dtp:now/sky`.

## Ustawienia

Zmieniasz je komendą `/data modify storage dtp:config <klucz> set value <liczba>`,
na przykład `/data modify storage dtp:config w_lava set value 20`. Działają od razu
i zapisują się w świecie (`/reload` ich nie resetuje).

| Klucz | Domyślnie | Znaczenie |
|---|---|---|
| `w_random` | 65 | szansa: zwykłe losowe miejsce |
| `w_sky` | 5 | szansa: wysoko w niebo |
| `w_lava` | 5 | szansa: nad lawę |
| `w_dimension` | 5 | szansa: inny wymiar |
| `w_roof` | 5 | szansa: dach Netheru |
| `w_ocean` | 5 | szansa: środek oceanu |
| `w_deep_dark` | 5 | szansa: Deep Dark |
| `w_creeper` | 5 | szansa: creeper-towarzysz |
| `end_chance` | 25 | % skoków między wymiarami, które trafiają do Endu (0 = nigdy) |
| `sky_height` | 1000 | ile kratek nad ziemią ląduje teleport w niebo |
| `sky_save` | 1 | ratunek w niebie: 0 = brak, 1 = wiadro wody na MLG (jeśli go nie masz), 2 = spadochron 64 kratki nad ziemią |
| `lava_time` | 20 | ile ticków siedzisz w lawie, zanim obrażenie cię z niej wyrzuci (20 = 1 s; więcej = groźniej) |
| `radius` | 2500 | zasięg losowego miejsca (kratki) |
| `dim_radius` | 300 | zasięg losowania po zmianie wymiaru i na dachu Netheru |
| `roof_time` | 1200 | po ilu tickach mod sam zdejmuje cię z dachu Netheru (1200 = 1 min) |
| `deep_dark_tries` | 20 | ile kolumn mod sprawdza, szukając Deep Darku |
| `cooldown` | 40 | ticki bez teleportu po teleporcie |
| `enabled` | 1 | 1 = włączony, 0 = wyłączony |
| `max_tries` | 8 | ile kolumn próbujemy, zanim się poddamy |
| `nether_top_chance` | 15 | % szans na miejsce pod samym sufitem Netheru |
| `fx_delay` / `fx_delay_dim` | 13 / 30 | opóźnienie napisów i dźwięków (ticki) po zwykłym teleporcie / zmianie wymiaru |

Szansa to waga podzielona przez sumę wag, a 0 wyłącza dany rodzaj. Żeby mieć
dokładnie oryginał, ustaw wszystkie wagi oprócz `w_random` na 0.

## Porady do nagrywania

- Przed nagraniem przetestuj każdy teleport: `/function dtp:now/sky`, `.../lava`, `.../end`...
- Chcesz konkretną scenę? `/function dtp:next/end`, a potem daj się uderzyć zombie.
- Za dużo śmierci w niebie? Ustaw `sky_save` na 2 (spadochron). Chcesz bez wiadra? Ustaw na 0.

## Dla twórców

Źródło to `data/` (Minecraft 1.21+). Po zmianach uruchom `./tools/build.sh`: odtwarza
`overlay_1_20/` (1.20.x używa katalogów `functions/`, `predicates/`, `tags/blocks/`)
i pakuje `dist/DamageTP.zip`. W funkcjach nie ma `return` (1.20.2 nie ma jeszcze
`return run`), więc te same pliki działają we wszystkich wersjach.
