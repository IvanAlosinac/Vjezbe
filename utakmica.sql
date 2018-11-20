drop database if exists utakmica;
create database utakmica;
use utakmica;

create table stadion(
id int not null primary key auto_increment,
stadionname varchar(30) not null,
beginning datetime not null,
hosts int,
guest int 
);

create table team (
id int not null primary key auto_increment,
teamname varchar(30),
coach varchar(50)
);

create table player (
id int not null primary key auto_increment,
name varchar(30) not null,
surname varchar(30) not null,
team int
);

alter table stadion add foreign key (hosts) references team(id);
alter table stadion add foreign key (guest) references team(id);

alter table player add foreign key (team) references team(id);

insert into team (id,teamname,coach) values
(null,'Croatia','Zlatko Dalic'),
(null,'England','Gareth Southgate'),
(null,'Spain','Luis Enrique'),
(null,'BIH','Robert Prosinecki');


insert into stadion (id,stadionname,beginning,hosts,guest) values
(null,'Maksimir',2018-11-15,1,3), (null,'Wembley',2018-11-18,2,1); 

insert into player (id,name,surname,team) values
(null,'Lovre','Kalinic',1), (null,'Andrej','Kramaric',1), 
(null,'Dejan','Lovren',1), (null,'Edin','Dzeko',4),
(null,'Harry','Kane',2), (null,'Kyle','Walker',2), 
(null,'Iker','Casillas',3), (null,'Gerard','Pique',3);

#promjena
select * from team;
update team set teamname='Hrvatska' where id=1;
select * from team where id=1;

select * from player;
update player set name='Ivan', surname='Rakitic' where id=1;
select * from player;

#brisanje momcadi Engleske (id=2)
insert into team (id,teamname,coach) values
(null,'Brisanje','jer ne volimo Englesku');
update player set team=5 where team=2;
update stadion set hosts=5 where hosts=2;
delete from team where id=2; 
select * from team;









