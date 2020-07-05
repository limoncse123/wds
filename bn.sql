
create table Akash(
A_id int,
Mun_id int primary key,
age int
);
insert into Akash(A_id,Mun_id,age)values('1','2','12');
create table Condro(
C_id int,
Mun_id int not null primary key,
age int
);
insert into Condro(C_id,Mun_id,age)values('1','2','12');
create table Soho(
S_id int,
Mun_id int not null primary key,
age int
);
insert into Soho(S_id,Mun_id,age)values('1','2','12');
create table Sagor(
S_id int,
M_id int primary key,
age int,
foreign key(M_id)references Akash(Mun_id)on delete cascade,
foreign key(M_id)references Condro(Mun_id)on delete cascade,
foreign key(M_id)references Soho(Mun_id)on delete cascade
);
insert into Sagor(S_id,M_id,age)values('1','2','12');