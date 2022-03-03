# hashicorp


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
```

### consul server
* run agent
```shell
# standalone
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_standalone.json -log-file=/home/consul/logs_standalone/

# agent1
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_s1.json -log-file=/home/consul/logs/ &

# agent2
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_s2.json -log-file=/home/consul/logs/ &

# agent3
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_s3.json -log-file=/home/consul/logs/ &
```

### consul agent
* run agent
```shell
# agent1
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_c1.json >> ./logs/consul_client_`date "+%Y%m%d"`.log &
# agent2
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_c2.json >> ./logs/consul_client_`date "+%Y%m%d"`.log &
# agent3
$ /usr/local/bin/consul agent -config-file=/home/consul/consul_c2.json >> ./logs/consul_client_`date "+%Y%m%d"`.log &
```

## vault
