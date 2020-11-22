#!/bin/sh

# MongDBのReplicaSetを立ち上げる
docker-compose exec mongodb-primary mongo /root/000_init_replSet.js
