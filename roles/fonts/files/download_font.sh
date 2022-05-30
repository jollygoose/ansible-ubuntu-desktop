#!/bin/bash

# taken from this gist by @steinwaywhw: https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8
curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest \
| grep "browser_download_url.*JetBrainsMono.zip" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - -P ~/.local/share/fonts
