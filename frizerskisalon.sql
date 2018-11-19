drop database if exists frizerskisalon;
create database frizerskisalon;
use frizerskisalon;

create table Saloon(
Id int not null primary key auto_increment,
CompanyName varchar(30) not null,
Address varchar(50) not null
);

create table Worker(
Id int not null primary key auto_increment,
Saloon int not null, 
Person int not null, 
BankAccount char(21) not null,
Contract varchar (20) not null
);

create table Visit(
Id int not null primary key auto_increment,
Client int not null,
LastVisit datetime not null
);

create table Service(
Id int not null primary key auto_increment,
ServiceType varchar(50) not null,
ServicePrice decimal(10,2) not null
);

create table Client(
Id int not null primary key auto_increment,
Person int not null
);

create table Person (
Id int not null primary key auto_increment,
Name varchar(20) not null,
Surname varchar(20) not null,
SocialNumber char(11) not null,
Email varchar(50) not null,
Sex char(1) not null
);

create table Service_Visit (
Service int not null,
Visit int not null
);

create table Worker_Visit (
Worker int not null,
Visit int not null
);

alter table Worker add foreign key (Saloon) references Saloon(Id);
alter table Worker add foreign key (Person) references Person(Id);

alter table Visit add foreign key (Client) references Client(Id);

alter table Service_Visit add foreign key (Service) references Service(Id);
alter table Service_Visit add foreign key (Visit) references Visit(Id);

alter table Worker_Visit add foreign key (Worker) references Worker(Id);
alter table Worker_Visit add foreign key (Visit) references Visit(Id);

alter table Client add foreign key (Person) references Person(Id);

insert into Person (Id,Name,Surname,SocialNumber,Email,Sex) values 
(null,'Ivan','Alosinac',null,'alosinac111@gmail.com','M'),
(null,'Zoran','Kmokic',null,'z.kmokic23@gmail.com','M'),
(null,'Maria','Saric',null,'marijasaric@gmail.com','F'),
(null,'Drazen','Drazic',null,'drazend@gmail.com','M');

insert into Service (Id,ServiceType,ServicePrice) values
(null,'PranjeKose',35),
(null,'MuskoSisanje',50),
(null,'ZenskoSisanje',90),
(null,'FarbanjeKose',120);

insert into Saloon (Id,CompanyName,Address) values
(null,'BioHair','BraceRadic23,Belisce');

insert into Worker (Id,Saloon,Person,BankAccount,Contract) values
(null,1,3,null,null),
(null,1,2,null,null),
(null,1,1,null,null);

insert into Client (Id,Person) values
(1,4);

insert into Visit (Id,Client,LastVisit) values
(null,1,2018-11-09);




