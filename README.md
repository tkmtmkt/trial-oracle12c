study-oracle12c
===============

コンテナ作成してOracle起動

```sh
$ docker-compose up -d
```

コンソール接続

```sh
$ ./exec.sh
```

データベース作成

```sh
$ ~/share/dbca_createdb.sh
```

データベース削除

```sh
$ ~/share/dbca_deletedb.sh
```
