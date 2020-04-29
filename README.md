# mysql-poc
mysql proof of concept

# MySQL 8.0.20

## binlog compression

圧縮レベルを3にした状態では binlog.000001 の容量が従来の 1/10 程度に減少する。
```
mysql> source sql/class.up.sql
mysql> source sql/hashjoin.up.sql
```
```
// MySQL 8.0.19
-rw-r-----    1 hoge  hoge   3102158  4 29 03:01 binlog.000001
-rw-r-----    1 hoge  hoge    890060  4 29 03:03 binlog.000002
// MySQL 8.0.20
-rw-r-----    1 hoge  hoge    298346  4 29 03:01 binlog.000001
-rw-r-----    1 hoge  hoge    130275  4 29 03:02 binlog.000002
// MySQL 8.0.20 without zstd compression
-rw-r-----    1 hoge  hoge   3102159  4 29 03:55 binlog.000001
-rw-r-----    1 hoge  hoge    890061  4 29 03:56 binlog.000002
```
その他の状態では最低でも半減する。ただこれが意外と圧縮レベルでガッツリ変わるわけではないっぽい。要検証。

## double-write buffer files

/var/lib/mysql を見てみると #ib_hoge_number.dblwr の形式でファイルが生成されている。  
system table space から分離した形になる。  

