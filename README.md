# Damage TP

Datapack do Minecrafta: **każde obrażenie teleportuje cię w losowe miejsce**,
tak jak w oryginale („MC but taking damage teleports you”, ToMiiX).

Różnica jest taka, że co któryś teleport jest śmieszny, pod film:

| Dokąd | Co się dzieje | Szansa (domyślnie) |
|---|---|---|
| **Losowe miejsce** | zwykły teleport, do 2500 kratek dalej, jak w oryginale | 70% |
| **Wysoko w niebo** | losowe miejsce, ale 1000 kratek nad ziemią | 10% |
| **Nad lawę** | losowe miejsce, 3 kratki nad dołem pełnym lawy | 10% |
| **Inny wymiar** | Overworld ↔ Nether ↔ End (End to 25% z tych skoków) | 10% |

Śmieszne teleporty mają duży napis na ekranie („☁ 1000 KRATEK NAD ZIEMIĄ! ☁”,
„♨ LAWA! ♨”, „NETHER!”, „THE END”), dźwięki i cząsteczki. Zwykły wygląda jak w
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

Tryb kreatywny i obserwatora się nie teleportuje. Przez 2 sekundy po teleporcie
(`cooldown`) obrażenia nie teleportują.

## Komendy

| Komenda | Co robi |
|---|---|
| `/function dtp:help` | pokazuje ustawienia i listę komend |
| `/function dtp:now/lava` | teleport **od razu** wybranego rodzaju (też w kreatywnym, do testów) |
| `/function dtp:next/lava` | wybrany rodzaj przy **następnym obrażeniu** (do zaplanowanych scen) |
| `/function dtp:on`, `dtp:off` | włącza / wyłącza datapack |

Zamiast `lava` w `now/` i `next/` można wpisać: `sky`, `nether`, `overworld`,
`end`, `dimension` (losowy inny wymiar), `teleport` (zwykłe losowe miejsce),
`any` (losowo według szans; `next/any` kasuje wymuszony teleport).

Na innym graczu: `/execute as Nick at @s run function dtp:now/sky`.

## Ustawienia

Zmieniasz je komendą `/data modify storage dtp:config <klucz> set value <liczba>`,
na przykład `/data modify storage dtp:config w_lava set value 20`. Działają od razu
i zapisują się w świecie (`/reload` ich nie resetuje).

| Klucz | Domyślnie | Znaczenie |
|---|---|---|
| `w_random` | 70 | szansa: zwykłe losowe miejsce |
| `w_sky` | 10 | szansa: wysoko w niebo |
| `w_lava` | 10 | szansa: nad lawę |
| `w_dimension` | 10 | szansa: inny wymiar |
| `end_chance` | 25 | % skoków między wymiarami, które trafiają do Endu (0 = nigdy) |
| `sky_height` | 1000 | ile kratek nad ziemią ląduje teleport w niebo |
| `sky_save` | 1 | ratunek w niebie: 0 = brak, 1 = wiadro wody na MLG (jeśli go nie masz), 2 = spadochron 64 kratki nad ziemią |
| `lava_time` | 20 | ile ticków siedzisz w lawie, zanim obrażenie cię z niej wyrzuci (20 = 1 s; więcej = groźniej) |
| `radius` | 2500 | zasięg losowego miejsca (kratki) |
| `dim_radius` | 300 | zasięg losowania po zmianie wymiaru |
| `cooldown` | 40 | ticki bez teleportu po teleporcie |
| `enabled` | 1 | 1 = włączony, 0 = wyłączony |
| `max_tries` | 8 | ile kolumn próbujemy, zanim się poddamy |
| `nether_top_chance` | 15 | % szans na miejsce pod samym sufitem Netheru |
| `fx_delay` / `fx_delay_dim` | 13 / 30 | opóźnienie napisów i dźwięków (ticki) po zwykłym teleporcie / zmianie wymiaru |

Szansa to waga podzielona przez sumę wag, a 0 wyłącza dany rodzaj. Żeby mieć
dokładnie oryginał, ustaw `w_sky`, `w_lava` i `w_dimension` na 0.

## Porady do nagrywania

- Przed nagraniem przetestuj każdy teleport: `/function dtp:now/sky`, `.../lava`, `.../end`...
- Chcesz konkretną scenę? `/function dtp:next/end`, a potem daj się uderzyć zombie.
- Za dużo śmierci w niebie? Ustaw `sky_save` na 2 (spadochron). Chcesz bez wiadra? Ustaw na 0.

## Dla twórców

Źródło to `data/` (Minecraft 1.21+). Po zmianach uruchom `./tools/build.sh`: odtwarza
`overlay_1_20/` (1.20.x używa katalogów `functions/`, `predicates/`, `tags/blocks/`)
i pakuje `dist/DamageTP.zip`. W funkcjach nie ma `return` (1.20.2 nie ma jeszcze
`return run`), więc te same pliki działają we wszystkich wersjach.
