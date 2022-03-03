## consul 

* create account
```shell
$ sudo groupadd --system consul
$ sudo useradd -m -s /bin/bash --system -g consul consul
```

* download consul
```shell
$ export VER="1.9.5"
$ wget https://releases.hashicorp.com/consul/${VER}/consul_${VER}_linux_amd64.zip
$ chmod +x consul
$ sudo mv consul /usr/local/bin/

$ sudo mkdir -p /var/lib/consul
$ sudo chown -R consul:consul /var/lib/consul
$ sudo chmod -R 775 /var/lib/consul

# 설정파일 폴더
$ sudo mkdir /etc/consul.d
$ sudo chown -R consul:consul /etc/consul.d
```

### consul server
* run server
```shell
# agent1
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_s1.json -log-file=/home/consul/logs/ &

# agent2
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_s2.json -log-file=/home/consul/logs/ &

# agent3
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_s3.json -log-file=/home/consul/logs/ &
```

* cmd
```shell
$ consul members -wan

# cluster 확인
$ consul members
$ consul operator raft list-peers

$ consul catalog nodes
```

* restore
```shell
$ consul snapshot save backup.snap
Saved and verified snapshot to index 8419

$ consul snapshot restore backup.snap
Restored snapshot

$ consul snapshot inspect backup.snap
ID           2-5-1477944140022
Size         667
Index        5
Term         2
Version      1

$ consul snapshot agent
```
