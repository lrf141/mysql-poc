create table t1 (a varchar(20));
create table t2 (a varchar(20));

insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 values (substring(md5(rand()), 1, 20));
insert into t1 (select t1.a from t1, t1 t2, t1 t3, t1 t4);

insert into t2 select * from t1;
update t2 set a = substring(md5(rand()), 1, 20);
