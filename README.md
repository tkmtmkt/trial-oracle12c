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
$ ~/assets/dbca_createdb.sh
```

データベース削除

```sh
$ ~/assets/dbca_deletedb.sh
```
