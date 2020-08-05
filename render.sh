#!/usr/bin/env bash
set -euo pipefail

cd www/
rm -rf out/
mkdir -p out/

# https://graphicdesign.stackexchange.com/questions/77359
cp favicon.ico out/
cp robots.txt out/
cp -R static out/

tpl -out out/ base.html de/index.html
tpl -out out/ base.html de/beratung.html
tpl -out out/ base.html de/entwicklung.html
tpl -out out/ base.html de/schulung.html
tpl -out out/ base.html de/kontakt.html
tpl -out out/ base.html de/impressum.html
tpl -out out/ base.html de/datenschutz.html
