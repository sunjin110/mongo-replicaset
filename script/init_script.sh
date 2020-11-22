#!/bin/sh

# MongDBのReplicaSetを立ち上げる
sudo docker exec -it mongodb-primary mongo /root/000_init_replSet.js
