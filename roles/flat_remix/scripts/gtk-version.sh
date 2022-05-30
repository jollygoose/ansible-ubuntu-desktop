#!/bin/bash

git clone https://github.com/daniruiz/flat-remix-gtk /tmp/flat-remix-gtk
cd /tmp/flat-remix-gtk
git pull
version="$(git describe --tags | sed 's/^v//' | cut -d "-" -f1)"
git checkout $version
