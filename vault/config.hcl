storage "postgresql" {
    connection_url = "postgres://postgres:postgres!@127.0.0.1:5432/postgres?sslmode=disable"
}
# Write and manage secrets in key-value secrets engine
path "secret*" {
  capabilities = [ "create", "read", "update", "delete", "list" ]
}
# To enable secrets engines
path "sys/mounts/*" {
  capabilities = [ "create", "read", "update", "delete" ]
}
listener "tcp" {
  #address = "0.0.0.0:8200"
  address = "127.0.0.1:8200"
  tls_disable = 1
}
