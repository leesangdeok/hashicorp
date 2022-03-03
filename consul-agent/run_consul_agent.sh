# host: 10.20.3.226

if [ "$1" = "cluster" ]
then
        /usr/local/bin/consul agent -config-file=/home/consul/consul_c1.json -log-file=/home/consul/logs/ &
else
        /usr/local/bin/consul agent -config-file=/home/consul/consul_standalone.json -log-file=/home/consul/logs_standalone/ &
fi
