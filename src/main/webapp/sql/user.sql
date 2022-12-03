CREATE TABLE if not exists users(
	name varchar(20) not null,
	nick varchar(20) not null,
	id varchar(20) not null,
	pw varchar(20) not null,
	email varchar(20) not null,
	addr varchar(20) not null,
	primary key (id)
);

select * from users;
select * from users where id="admin";

INSERT INTO users(name, nick, id, pw, email, addr) 
values("이석현", "경기컴공18","admin","admin1234","a@kyonggi.ac.kr", "수원시 이의동");