#### running high-availability on postgres

postgres, like other traditional sql databases optimize for strong consistency, thus achieving high availability out of the box requires difficult work.


**patroni**

**distributed consensus**

etcd cluster acts as a source of truth and allows to achieve consensus between patroni instances. patroni daemons use k/v store to communicate with each other.
