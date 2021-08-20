#!/usr/bin/env python3
import os

binds_dict = {
    '\"\'kitty\'\"': '\"\'<Super>Backslash\'\"',
    '\"\'code\'\"': '\"\'<Super>c\'\"',
    '\"\'code-insiders\'\"': '\"\'<Super><Shift>c\'\"',
    '\"\'tilix\'\"': '\"\'<Super>apostrophe\'\"',
}

binds = []
gs = "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom"
ctr = 0
for k, v in binds_dict.items():
    os.system(gs + str(ctr) + '/name ' + k)
    os.system(gs + str(ctr) + '/command ' + k)
    os.system(gs + str(ctr) + '/binding ' + v)
    binds.append('\'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom' + str(ctr) + '/' + '\'')
    ctr = ctr + 1

custom_keys = ','.join(binds)
os.system('dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings \"[' + custom_keys + ']\"')
