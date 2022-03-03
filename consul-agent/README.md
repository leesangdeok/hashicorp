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

### consul agent
* run agent
```shell
# agent1
$ /usr/local/bin/consul agent -config-file=/home/consul-agent/consul_c1.json >> ./logs/consul_client_`date "+%Y%m%d"`.log &
# agent2
$ /usr/local/bin/consul agent -config-file=/home/consul-agent/consul_c2.json >> ./logs/consul_client_`date "+%Y%m%d"`.log &
# agent3
$ /usr/local/bin/consul agent -config-file=/home/consul-agent/consul_c2.json >> ./logs/consul_client_`date "+%Y%m%d"`.log &
```
