#!/bin/bash

git clone https://github.com/daniruiz/flat-remix-gnome /tmp/flat-remix-gnome
cd /tmp/flat-remix-gnome
git pull
version="$(git describe --tags | sed 's/^v//' | cut -d "-" -f1)"
git checkout $version
