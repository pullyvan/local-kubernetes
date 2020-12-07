# Install a local Kubernetes cluster using Vagrant, VirtualBox and Ansible

## Requirements
- Ansible **(A recent release if possible)**
- Vagrant **(A recent release if possible)**
- VirtualBox **(A recent release if possible)**

## Run 
```shell
foo@bar:~$ git clone https://github.com/adieperi/local-kubernetes.git

foo@bar:~$ cd local-kubernetes

foo@bar:~/local-kubernetes$ vagrant plugin install vagrant-vbguest

foo@bar:~/local-kubernetes$ vagrant up

foo@bar:~/local-kubernetes$ vagrant ssh kubmaster
```

## On kubmaster
```shell
vagrant@kubmaster:~$ kubectl get nodes -o wide
```