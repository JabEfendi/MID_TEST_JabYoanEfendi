-- SQL2 JABYOAN
create table email_list(
	id serial primary key unique,
	email varchar
);

insert into email_list("email") values('abc@gmail.com'),
	('def@gmail.com'),
	('abc@yahoo.com'),
	('abc@gmail.com'),
	('def@gmail.com'),
	('def@gmail.com'),
	('abc@bing.com');
	
SELECT email
FROM email_list
GROUP BY email
HAVING COUNT(email) > 1;