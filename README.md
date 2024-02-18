## running high-availability on postgres

## patroni

## distributed consensus

etcd cluster acts as a source of truth and allows to achieve consensus between patroni instances.

## haproxy

routing the clients to whichever node Patroni is stating is the master.

## prerequisites

 - installed ansible on a local machine

#### automation w/ ansible



