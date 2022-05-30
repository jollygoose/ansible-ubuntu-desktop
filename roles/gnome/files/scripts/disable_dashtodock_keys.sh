#!/bin/bash

# disable the dash-to-dock keybings because they conflict with setting keybings
# for <Super>1-10
for i in {1..10}; do
    dconf write "/org/gnome/shell/extensions/dash-to-dock/app-hotkey-$i" "['']"
    dconf write "/org/gnome/shell/extensions/dash-to-dock/app-shift-hotkey-$i" "['']"
done
