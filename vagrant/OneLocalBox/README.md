# How to use a local vagrant box ?

## Get it
First dowload it from the good location.
For instance: https://app.vagrantup.com/ubuntu/boxes/bionic64

## Add it as local box
vagrant box add bionix-server-box file:///%USERPROFILE%/Downloads/bionic-server-cloudimg-amd64-vagrant.box

Note: this is a rather small image for a standard distribution like Ubuntu 

## To list images
vagrant box list

## Boxes location ?
They are located in $HOME/.vagrant.d

## To see where space is used
I advice to use this tool: Windirstat (can be instaled with chocolatey vbox )