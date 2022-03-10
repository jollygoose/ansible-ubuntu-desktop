Set up the software I use for an Ubuntu desktop system. Originally, I relied on scripts stored on a personal wiki ([gollum wiki](https://github.com/gollum/gollum)) for easy access. This project is an effort to learn, and move over tasks to Ansible. 

*Tested with Ubuntu 21.10*

### Run

*Note: the ```-K``` flag will prompt for a sudo password to use on the tasks which require root privileges, such as updating and installing packages.*

```
cd /to/the/playbook/directory

# local
ansible-playbook -K main.yml --connection=local

# none local
ansible-playbook -K main.yml
```
