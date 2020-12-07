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
NAME        STATUS   ROLES    AGE   VERSION   INTERNAL-IP      EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION   CONTAINER-RUNTIME
kubmaster   Ready    master   95m   v1.19.4   192.168.56.101   <none>        Debian GNU/Linux 10 (buster)   4.19.0-9-amd64   docker://19.3.14
kubnode1    Ready    <none>   81m   v1.19.4   192.168.56.102   <none>        Debian GNU/Linux 10 (buster)   4.19.0-9-amd64   docker://19.3.14
kubnode2    Ready    <none>   74m   v1.19.4   192.168.56.103   <none>        Debian GNU/Linux 10 (buster)   4.19.0-9-amd64   docker://19.3.14
```