study-oracle12c
===============

ディレクトリ初期化

```sh
$ sudo rm -rf db*/opt/oracle/*
$ mkdir -p db{1,2}/opt/oracle/{oradata,fast_recovery_area}
$ chmod a+rwx db{1,2}/opt/oracle/{oradata,fast_recovery_area}
```

コンテナ作成してOracle起動

```sh
$ docker.compose up -d
```

```sh
$ sudo chmod -R a+rw db*/opt/oracle
$ git checkout db*
```

コンソール接続

```sh
$ ./exec.sh db1
$ ./exec.sh db2
```
