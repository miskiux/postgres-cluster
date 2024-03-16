## running etcd cluster

#### running systemd 

- running systemd in unprivileged container

#### Steps

Run
```
ansible-playbook -i inventory/hosts main.yml -K
```

Flags:
    -K : to specify sudo password

