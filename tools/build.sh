#!/usr/bin/env bash
# Buduje paczkę do wrzucenia do folderu "datapacks".
#  1. Odtwarza overlay_1_20 z data/ (Minecraft 1.20.x szuka katalogów w liczbie mnogiej:
#     functions/, predicates/, tags/blocks/, tags/functions/ - poza tym pliki są identyczne).
#  2. Pakuje wszystko do dist/DamageTP-CHAOS.zip (pack.mcmeta musi leżeć w korzeniu zipa).
set -euo pipefail
cd "$(dirname "$0")/.."

rm -rf overlay_1_20
mkdir -p overlay_1_20/data/dtp/tags overlay_1_20/data/minecraft/tags
cp -r data/dtp/function overlay_1_20/data/dtp/functions
cp -r data/dtp/predicate overlay_1_20/data/dtp/predicates
cp -r data/dtp/tags/block overlay_1_20/data/dtp/tags/blocks
cp -r data/minecraft/tags/function overlay_1_20/data/minecraft/tags/functions

mkdir -p dist
rm -f dist/DamageTP-CHAOS.zip
zip -r -q -X dist/DamageTP-CHAOS.zip pack.mcmeta pack.png data overlay_1_20
echo "Gotowe: dist/DamageTP-CHAOS.zip"
