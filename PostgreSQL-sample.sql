CREATE TABLE HelloTable (
	id 		int PRIMARY KEY NOT NULL,
	name	text NOT NULL,
	age		int NOT NULL,
	address char(50),
	salary	REAL
);

select * from public.HelloTable;

insert into public.HelloTable (id, name, age ) values 
	(3, 'Bahk, Sang-Bong', 80),
	(2, 'Bahk, Kee-Berm', 20),
	(1, 'Bahk, Moon-Kee', 50);

select * from public.HelloTable;

drop table public.HelloTable;