# Manage secrets engines
path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage tenants
path "tenant/*" {
  capabilities = ["create", "read", "list", "sudo"]
}

# Manager encrypt/decrypt secret keys
path "secretKey/*" {
  capabilities = ["create", "read", "update"]
}

# Manage user passphrases
path "userAuth/*" {
  capabilities = ["create", "read", "update", "list"]
}
