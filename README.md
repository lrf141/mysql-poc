# mysql-poc
mysql proof of concept

# MySQL 8.0.20

## binlog compression

## double-write buffer files

/var/lib/mysql を見てみると #ib_hoge_number.dblwr の形式でファイルが生成されている。  
system table space から分離した形になる。  

