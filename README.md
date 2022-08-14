Set up the software I use for a desktop system. Originally, I relied on scripts stored on a personal wiki ([gollum wiki](https://github.com/gollum/gollum)) for easy access. This project is an effort to learn, and move over tasks to Ansible. 

*Tested with Ubuntu 22.04, and Pop!_OS. Fedora 36 has had \*some testing*

### Run

*Note: the ```-K``` flag will prompt for a sudo password to use on the tasks which require root privileges, such as updating and installing packages.*

```
cd /to/the/playbook/directory

# local
ansible-playbook -K main.yaml --connection=local

# none local
ansible-playbook -K main.yaml
```
