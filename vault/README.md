## vault

* github : https://github.com/hashicorp/vault
* download : https://www.vaultproject.io/downloads
* create config.hcl file
* run postgres
```
$ docker run --rm -d -e TZ=Asia/Seoul --name postgres -p 5432:5432 postgres:11.5
```
* create db table
```
$ docker exec -it postgres bash
$ psql -U postgres

CREATE TABLE vault_kv_store (
  parent_path TEXT COLLATE "C" NOT NULL,
  path        TEXT COLLATE "C",
  key         TEXT COLLATE "C",
  value       BYTEA,
  CONSTRAINT pkey PRIMARY KEY (path, key)
);

CREATE INDEX parent_path_idx ON vault_kv_store (parent_path);
```

* cmd
# run vault server
$ vault server -config ./config.hcl

# set env
$ export VAULT_ADDR='http://127.0.0.1:8200'

# check status
$ vault status

# initiate vault server
$ vault operator init

# set env
$ export VAULT_TOKEN=“s.XmpNPoi9sRhYtdKHaQhkHP6x"

# unseal vault
$ vault operator unseal
```
