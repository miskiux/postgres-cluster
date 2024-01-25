## running high-availability on postgres

postgres, like other traditional sql databases optimize for strong consistency, thus achieving high availability out of the box requires work.

**patroni**

patroni allows node replication by natively using postgres streaming replication and runs daemon processes which healthchecks nodes.

patroni = replication + promotion

**distributed consensus**

etcd cluster acts as a source of truth and allows to achieve consensus between patroni instances. patroni daemons use k/v store to communicate with each other.

**haproxy**

routing the clients to whichever node Patroni is stating is the master.

## usage

**kv store**
defaults to 3 etcd nodes. adjust etcd-node service PORT configuration if increasing node count.

```
docker-compose up --scale etcd-node=3
```





