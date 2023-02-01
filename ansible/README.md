

# ansible installation on Debian WSL

```
cat /etc/debian_version
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
ansible --version
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
server keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
$ sudo apt update
sudo apt update
apt-get install -y gnupg2
sudo apt-get install -y gnupg2
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt update
cat /etc/apt/sources.list
sudo apt install ansible -y
```


# config

## .ssh config file

```
UserKnownHostsFile /dev/null
StrictHostKeyChecking no
PasswordAuthentication no
IdentitiesOnly yes
LogLevel ERROR

Host worker1 w1
HostName 192.168.83.10
User vagrant
IdentityFile ~/.ssh/id_worker1
Host worker2 w2
HostName 192.168.83.11
User vagrant
IdentityFile ~/.ssh/id_worker2
```

## hosts file
```
controller:
  hosts:
    controller:
workers:
  hosts:
    worker1:
    worker2:
```



# check commands

```
ansible -i hosts -m ping workers
ansible -i hosts -m uptime workers
ansible -i hosts -m shell -a uptime workers
ansible -i hosts -m shell -a "docker images" workers
```
