Set up an Ubuntu desktop system without the annoyance of manual configuration. Originally, I relied on scripts stored on a personal wiki ([gollum wiki](https://github.com/gollum/gollum)) for easy access. This project is an effort to learn and move over tasks to Ansible. 

This playbook is intended to be run against an Ubuntu desktop machine.

## Roles

* [core software](roles/core_software)
  * install needed flatpaks, snaps, and repo packages
  * install vscode and its extensions
* [flat remix](roles/flat_remix)
  * install [Flat Remix](https://github.com/daniruiz/flat-remix-gtk) from github
  * also include the flat remix snaps for snap package theming consistency
* [gnome](roles/gnome)
  * keybinds, power, mutter, and other dconf settings
  * theming 
  * extensions (from repo and github)
* [systemd](roles/systemd)
  * copy and enable systemd files
* [updates](roles/updates)
  * update apt, flatpak and snaps
* [yadm](roles/yadm)
  * install yadm
  * clone dotfiles

## Requirements

* Ansible, which can be installed in a few ways, such as:
  * ```apt install ansible```
  * ```python -m pip install ansible``` (in or out of a virtual enviroment)
* GNOME desktop is of course required to run the gnome role
    
### Run

*Note: the ```-K``` flag will prompt for a sudo password to use on the tasks which require root privileges, such as updating and installing packages.*

```
cd /to/the/playbook/directory

# local
ansible-playbook -K main.yml --connection=local

# none local
ansible-playbook -K main.yml
```

## @TODO

- pip package updates
- fonts outside of the apt repos
- enable extensions
- dock
 
## Resources

@carlwgeorge [Gnome Keybindings and Settings](https://gist.github.com/carlwgeorge/c560a532b6929f49d9c0df52f75a68ae)
