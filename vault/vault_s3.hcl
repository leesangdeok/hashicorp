# host: 10.20.3.136
listener "tcp" {
  address          = "0.0.0.0:8200"
  cluster_address  = "10.20.3.136:8201"
  tls_disable      = "true"
}

storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault/"
}

api_addr = "http://10.20.3.26:8200"
cluster_addr = "https://10.20.3.136:8201"
disable_mlock = true

telemetry {
  prometheus_retention_time = "30s"
  disable_hostname = true
}
