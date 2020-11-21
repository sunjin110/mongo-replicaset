#!/bin/sh
hosts=`grep '127.0.0.1 mongodb-primary mongodb-secondary mongodb-arbiter' /etc/hosts`

# hostに設定がない場合のみ追加する
if [ "$hosts" = "" ]; then
    sudo echo '' >> /etc/hosts
    sudo echo '# mongo replicaset setting' >> /etc/hosts
    sudo echo '127.0.0.1 mongodb-primary mongodb-secondary mongodb-arbiter' >> /etc/hosts
fi
