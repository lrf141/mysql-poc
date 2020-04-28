create table class(class_id int not null primary key auto_increment, name varchar(255) not null);
create table roster(student_id int not null primary key auto_increment, class_id int not null);

insert into class(name) value("cpp"),("go"),("java"),("php"),("ruby"),("makefile"),("shell");
insert into roster(class_id) value (1),(1),(2),(3),(6),(6),(6),(4),(6),(2);
