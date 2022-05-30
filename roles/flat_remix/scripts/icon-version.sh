#!/bin/bash

git clone https://github.com/daniruiz/flat-remix /tmp/flat-remix
cd /tmp/flat-remix
git pull
version="$(git describe --tags | sed 's/^v//' | cut -d "-" -f1)"
git checkout "$version"
