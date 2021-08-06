Set up an Ubuntu desktop system without the annoyance of manual configuration. Originally, I relied on scripts stored on a personal wiki ([gollum wiki](https://github.com/gollum/gollum)) for easy access. This project is an effort to learn and move over tasks to Ansible. 

This playbook is intended to be run against an Ubuntu desktop machine.

## Tasks

* [dotfiles](tasks/update.yml)
  * pull dotfiles from repo
* [shell](tasks/shell.yml)
  * set default shell and update its config file
* [vscode extensions](tasks/install_extensions_vscode.yml)
* [gnome extensions](tasks/install_extensions_gnome.yml)
* install packages
  * [apt](tasks/install_packages_apt.yml)
  * [flatpak](tasks/install_packages_flatpak.yml)
  * [snap](tasks/install_packages_snap.yml)
* [themes](tasks/install_theming.yml)
  * fonts
  * icons
  * gtk themes
  * etc.
* [set user profile image](tasks/profile.yml)
* [remove connect checking](tasks/remove_connect_checking.yml)
* [settings tweaks](tasks/setting_tweaks.yml)
  * configure various gnome settings such as clock formating, workspace settings, etc. with the ansible dconf module
* [update](tasks/update.yml)
* [wallpaper](tasks/wallpaper.yml)

## Requirements

* Ansible, which can be installed in a few ways, such as:
  * ```apt install ansible```
  * ```python -m pip install ansible``` (in or out of a virtual enviroment)
* GNOME desktop is of course required to run the gnome tasks
    
## Setup

Rename the ```example.config.yml``` and ```example.inventory.ini``` files to ```config.yml``` and ```inventory.ini```. Note which parts you want to include/exclude by setting them to false or true. By default, all these options are set to false. Finally add your host(s) to the ```ansible.cfg``` file.

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

- [ ] pip packages & setup python enviroments
- [ ] fonts/themes outside of the apt repos
- [ ] gnome-extensions outside of the apt repos
 
## Resources

@carlwgeorge [Gnome Keybindings and Settings](https://gist.github.com/carlwgeorge/c560a532b6929f49d9c0df52f75a68ae)
