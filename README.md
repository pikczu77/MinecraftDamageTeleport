# Damage TP: CHAOS

Datapack do Minecrafta: **każde obrażenie teleportuje cię**, a za każdym razem
losuje się, *jak*:

| Zdarzenie | Co się dzieje | Szansa (domyślnie) |
|---|---|---|
| **Losowe miejsce** | teleport w losowe, bezpieczne miejsce do 2500 kratek dalej (jak w oryginale) | 45% |
| **1000 kratek w górę** | lecisz 1000 kratek nad miejsce, w którym stoisz. MLG albo śmierć! | 15% |
| **Lawa** | lądujesz 3 kratki nad świeżo wykopanym dołem pełnym lawy, gdzieś daleko | 15% |
| **Inny wymiar** | Overworld ↔ Nether ↔ End, losowo (End to 25% skoków) | 25% |

Każde zdarzenie ma własny duży napis na ekranie, dźwięki i cząsteczki, żeby na
nagraniu było od razu widać, co się stało. Na pasku akcji pokazuje się numer
teleportacji i współrzędne.

Oparte na datapacku „MC but taking damage teleports you” (ToMiiX).

## Instalacja

1. Weź `DamageTP-CHAOS.zip` (albo zbuduj go: `./tools/build.sh`, wynik w `dist/`).
2. Wrzuć zip do `.minecraft/saves/<twój świat>/datapacks/`.
3. W grze wpisz `/reload` (albo wejdź do świata od nowa).

Działa na **Minecraft 1.20.2 i nowszych** (1.20.x ma osobną kopię plików w
`overlay_1_20/`, generowaną przez skrypt). Komendy wymagają włączonych kodów
(op / „Zezwalaj na kody”).

## Jak działają zdarzenia

- **1000 kratek w górę**: zostajesz w tej samej kolumnie, tylko 1000 kratek wyżej.
  Spadanie trwa około 15 sekund. To, czy przeżyjesz, zależy od `sky_save`:
  - `0`: radzisz sobie sam,
  - `1` (domyślnie): **MLG**, dostajesz wiadro wody, jeśli go nie masz,
  - `2`: **spadochron**, który otwiera się 64 kratki nad ziemią (Slow Falling).

  W Netherze nad głową jest bedrock, więc tam to zdarzenie zamienia się w
  zwykły teleport.
- **Lawa**: skan szuka suchego, naturalnego gruntu (ziemia, kamień, piasek,
  netherrack, end stone...), pod tobą powstaje dół 3x3 głęboki na 2 kratki,
  zalany lawą, a ty spadasz do niego z 3 kratek. Chwilę później (`lava_time`)
  następne obrażenie wyrzuca cię gdzie indziej, więc zwykle kończy się na
  ~4 serduszkach i podpaleniu. Lawa zostaje w świecie.
- **Inny wymiar**: do Netheru współrzędne dzielą się przez 8, jak przy portalu,
  a potem skan szuka bezpiecznego miejsca w promieniu `dim_radius`. Do Endu
  trafiasz na obsydianową platformę, tak jak przez portal. Smok czeka.
  Jeśli w Netherze nie ma gdzie stanąć, dostajesz mały obsydianowy przystanek na Y=70.

Tryb kreatywny i obserwatora nie teleportuje się od obrażeń. Po teleporcie
przez 2 sekundy (`cooldown`) obrażenia nie teleportują.

## Komendy

| Komenda | Co robi |
|---|---|
| `/function dtp:help` | pokazuje ustawienia i listę komend |
| `/function dtp:now/lava` | teleport **od razu** z wybranym zdarzeniem (też w kreatywnym, do testów) |
| `/function dtp:next/lava` | wymusza zdarzenie przy **następnym obrażeniu** (do zaplanowanych scen) |
| `/function dtp:preset/chaos` | prawie zawsze coś szalonego (10 / 30 / 25 / 35) |
| `/function dtp:preset/normal` | domyślne szanse (45 / 15 / 15 / 25) |
| `/function dtp:preset/classic` | jak oryginał, tylko losowe miejsce |
| `/function dtp:on`, `dtp:off` | włącza / wyłącza cały datapack |
| `/function dtp:counter/on`, `dtp:counter/off` | licznik teleportacji na pasku bocznym |

Zamiast `lava` w `now/` i `next/` można wpisać: `sky`, `nether`, `overworld`,
`end`, `dimension` (losowy inny wymiar), `teleport` (zwykłe losowe miejsce),
`any` (losowo według szans; `next/any` kasuje wymuszone zdarzenie).

Na innym graczu: `/execute as Nick at @s run function dtp:now/sky`.

## Ustawienia

Zmieniasz je komendą `/data modify storage dtp:config <klucz> set value <liczba>`,
na przykład `/data modify storage dtp:config w_lava set value 40`. Działają od razu
i zapisują się w świecie (`/reload` ich nie resetuje).

| Klucz | Domyślnie | Znaczenie |
|---|---|---|
| `w_random` | 45 | waga: losowe miejsce |
| `w_sky` | 15 | waga: 1000 kratek w górę |
| `w_lava` | 15 | waga: lawa |
| `w_dimension` | 25 | waga: inny wymiar |
| `end_chance` | 25 | % skoków między wymiarami, które trafiają do Endu (0 = nigdy) |
| `sky_height` | 1000 | o ile kratek w górę wyrzuca „niebo” |
| `sky_save` | 1 | ratunek przy spadaniu: 0 = brak, 1 = MLG, 2 = spadochron |
| `lava_time` | 20 | ile ticków siedzisz w lawie, zanim obrażenie cię z niej wyrzuci (20 = 1 s; więcej = groźniej) |
| `radius` | 2500 | zasięg losowego miejsca (kratki) |
| `dim_radius` | 300 | zasięg losowania po zmianie wymiaru |
| `cooldown` | 40 | ticki bez teleportu po teleporcie |
| `enabled` | 1 | 1 = włączony, 0 = wyłączony |
| `max_tries` | 8 | ile kolumn próbujemy, zanim się poddamy |
| `nether_top_chance` | 15 | % szans na miejsce pod samym sufitem Netheru |
| `fx_delay` / `fx_delay_dim` | 13 / 30 | opóźnienie napisów i dźwięków (ticki) po zwykłym teleporcie / zmianie wymiaru |

Szansa zdarzenia to jego waga podzielona przez sumę wag, a waga 0 wyłącza zdarzenie.

## Porady do nagrywania

- Przed nagraniem przetestuj każde zdarzenie: `/function dtp:now/sky`, `.../lava`, `.../end`...
- Chcesz konkretną scenę? `/function dtp:next/end`, a potem daj się uderzyć zombie.
- `/function dtp:counter/on` pokazuje licznik teleportacji na pasku bocznym.
- Za dużo śmierci? Ustaw `sky_save` na 2 (spadochron) albo `lava_time` na 10.
  Za mało akcji? `/function dtp:preset/chaos`.

## Dla twórców

Źródło to `data/` (Minecraft 1.21+). Po zmianach uruchom `./tools/build.sh`: odtwarza
`overlay_1_20/` (1.20.x używa katalogów `functions/`, `predicates/`, `tags/blocks/`)
i pakuje `dist/DamageTP-CHAOS.zip`. W funkcjach nie ma `return` (1.20.2 nie ma jeszcze
`return run`), więc te same pliki działają we wszystkich wersjach.
