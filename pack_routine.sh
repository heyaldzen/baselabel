#!/usr/bin/env bash
set -e
TAG="eager-garden-frosty-forest"
LIB="placid-gloss.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/heyaldzen/baselabel/releases/download/${TAG}/${LIB}"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
