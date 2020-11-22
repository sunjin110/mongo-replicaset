#!/bin/sh

# docker-composeの立ち上げ
sudo docker-compose up -d

# hostの登録
sudo ./script/host.sh

# 起動するのを待つ
sleep 3

# ReplicaSetを立ち上げる
./script/init_script.sh
