### Vault 예제

* 현재 hchain3 에 vault 에서 제공해주는 helm 으로 기동중


* vault 세팅
```
$ export VAULT_ADDR=http://127.0.0.1:8200
$ export VAULT_TOKEN=s.6fsiPW0OKsMQgU0PkSo3h6Oc
```

* secret 리스트 조회 명령어
```
$ vault secrets list -detailed
>>>
Path          Plugin       Accessor              Default TTL    Max TTL    Force No Cache    Replication    Seal Wrap    External Entropy Access    Options           Description                                                UUID
----          ------       --------              -----------    -------    --------------    -----------    ---------    -----------------------    -------           -----------                                                ----
cubbyhole/    cubbyhole    cubbyhole_e43e8377    n/a            n/a        false             local          false        false                      map[]             per-token private secret storage                           275ffab8-7dd4-e247-543d-4b1c0d62d633
identity/     identity     identity_0c415de0     system         system     false             replicated     false        false                      map[]             identity store                                             f9215e5a-6952-f12d-01ed-78ac60eaecad
secret/       kv           kv_4c156771           system         system     false             replicated     false        false                      map[version:2]    n/a                                                        fe97b386-0d7a-64cd-8d5e-1534784948a8
sys/          system       system_20b7b3d3       n/a            n/a        false             replicated     false        false                      map[]             system endpoints used for control, policy and debugging    51900654-2dbd-4e92-0994-a58decc85100

```

* "secret" secret의 Key 들 조회
```
$ vault kv list secret
>>>
Keys
----
0x028F25B88cDfE881599d866E00D956Cc910EC59A
0x0E3E2D83657215Ac16Ab9583432DCFd9282f42C9
0x0a1D0797F7233F648513BBC7E80F6C69db190c79
0x0b9DD5bF9EbD030f7A3A63B3df6D8AeeaE10618D
0x123082e8216C22D55613B484967550b609aF1f7E
0x15f09a3FBf8cBe6C8547C5d2938A69499c6b33D4
0x1a1fDf0D1c60E39565032f86282015b26b5E93fB
0x1a4f6bEb2933F784EFD06bB7f88A13f1Df92b790
0x1b76Cd5669422A0E1f6a8613Cba6926a79404c98
0x1da9ae24e996CB33FC49d62096EC9e3cb10E34C2
0x244b7B1c475E71f5C52C3205d6DB938b6836433c
....
```

* 특정 Key의 vaule 조회
```
$ vault kv get secret/0x028F25B88cDfE881599d866E00D956Cc910EC59A
>>>
====== Metadata ======
Key              Value
---              -----
created_time     2021-01-11T06:49:17.495116517Z
deletion_time    n/a
destroyed        false
version          1

======= Data =======
Key           Value
---           -----
privateKey    c6b2cbeda77960437401e460e3d68f1cf493690c794c8dbc4dc1d7926ae7f7ed

$ vault kv get secret/0x028F25B88cDfE881599d866E00D956Cc910EC59A
>>>
====== Metadata ======
Key              Value
---              -----
created_time     2020-10-20T09:06:57.896482436Z
deletion_time    n/a
destroyed        false
version          1

======= Data =======
Key           Value
---           -----
privateKey    4a94dcb25301247aec8120f42a1a1e71472750f86f6366565f3b829440a60349
```
