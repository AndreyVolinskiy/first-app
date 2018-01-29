drop table if exists dbtasks;


create table dbtasks
(
	id INTEGER not null ,
	name VARCHAR(40) not null,
	status VARCHAR(30) not null
)
;

create unique index dbtasks_id_uindex
	on dbtasks (id)
;


insert into dbtasks (name, status) values ('Alex', 'Single');
insert into dbtasks (name, status) values ('Vovan', 'Married');
insert into dbtasks (name, status) values ('Vasya', 'Married');
insert into dbtasks (name, status) values ('Kolya', 'Married');

update dbtasks set status 'Not single' where id=1 and id=3;
update dbtasks set name 'New Name' where id=2 and id=4;

delete from dbtasks where id =4;

select * from dbtasks;