study-oracle12c
===============

コンテナ作成してOracle起動

```sh
$ docker-compose up -d
```

起動状況確認

```sh
$ docker-compose logs -f
```

EM Express WEB管理コンソール

* http://localhost:5500/em

```
user: sys
password: oracle
connect as sysdba: true
```

Oracle Application Express WEB管理コンソール

* http://localhost:8080/apex

```
workspace: INTERNAL
user: ADMIN
password: 0Racle$
```

コンソール接続

```sh
$ ./exec.sh
```
```
hostname: localhost
port: 1521
sid: xe
service name: xe
username: system
password: oracle
```

データベース作成

```sh
$ ~/share/dbca_createdb.sh
```

データベース削除

```sh
$ ~/share/dbca_deletedb.sh
```
