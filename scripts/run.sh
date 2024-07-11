#!/bin/bash

docker compose -f ../etcd/compose.yml up -d

# Get IP addresses of all containers with the name etcd-node
ip_addresses=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q --filter "name=etcd-node"))

# Create the hosts.ini file with the retrieved IP addresses
echo "[etcd_node]" > ../ansible/hosts.ini
for ip in $ip_addresses; do
    echo "$ip ansible_connection=local" >> ../ansible/hosts.ini
done

docker build -t ansible_control -f ../ansible/Dockerfile ../ansible 
docker run -d --name ansible_control -it ansible_control

docker exec -it $(docker ps -q --filter "name=ansible_control") /bin/sh -c "ansible-playbook -i inventory/hosts.ini playbooks/hello-world.yml"