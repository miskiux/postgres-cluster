## About the project

Running postgres cluster with Patroni.

- HA database solution


## Getting Started

Project configurations is automated via ansible.

#### Prerequisites

 - Installed ansible on a local machine

#### Steps

For local development:

 - Run shell script to start docker containers
```sh start-localdev.sh```
  

```ansible-playbook -i etcd/configuration/ansible/inventory/hosts etcd/main.yml -K```
