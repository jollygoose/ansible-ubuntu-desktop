Set up a system without the annoyance of manual configuration. Originally, I relied on scripts stored on a personal wiki ([gollum wiki](https://github.com/gollum/gollum)) for easy access. This project is an effort to move over tasks to Ansible, and marks the start of finding new uses for this handy and powerful tool. 

## Inventory

The tasks are spread across three host groups: ```gnome-desktop```, ```ubuntu```, and ```all```

* gnome-desktop
  * Systems running the gnome desktop
* ubuntu
  * Systems that use the ```apt``` package manager
* all
  * Can perform tasks don't require specific software or configurations

## Tasks

The following tasks (with the exception of gnome & portions of desktop) are suitable for both desktop and server systems.

* [update](roles/update/main.yml)
  * update and install snap, flatpak and apt packages
* [common](roles/common/main.yml)
  * pull dotfiles
  * set default shell
* [desktop](roles/desktop/main.yml)
  * Install apt, snap, and flatpaks applications
  * Set apt cache server
  * Install vscode extensions
* [gnome](roles/gnome/main.yml)
  * configure gnome keybindings
  * set power, privacy settings, and workspace behavior
  * set themes (includes wallpaper and profile image)

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

- [ ] pip packages
- [ ] dnf packages
- [ ] docker
- [ ] git repos
- [ ] tars (e.g. grab JetBrains Mono Font)
 
## Resources

@carlwgeorge [Gnome Keybindings and Settings](https://gist.github.com/carlwgeorge/c560a532b6929f49d9c0df52f75a68ae)
