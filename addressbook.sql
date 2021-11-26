/* Creating New Database*/
create database addressbooksystem;

/*Using Database*/
use addressbooksystem;

/*Creating Table*/
create table addressbook (firstName varchar(50), lastName varchar(50), address varchar(50), city varchar(20), state varchar(20), zipCode int, phoneNum bigint, email varchar(50));

/*Describing Table*/
desc addressbook;

/*Inserting Values to Table*/
insert into addressbook values ('bharath','sankajji','madapura','channagiri','karanataka',577215,9535339595,'bharath.sankajji@gmail.com'),('rakesh','sankajji','madapura','channagiri','karnataka',577213,9535339595,'rakesh.sankajji@gmail.com'); 

/*Selecting table*/
select * from addressbook;

/*Inserting Values to Table*/
insert into addressbook values ('avinash','sankajji','madapura','channagiri','karnataka',577213,9060670390,'avinash1894@gmail.com');

/*Updating City by using Name*/
update addressbook set city = 'davanagere' where firstname = 'avinash';

/*Counting the contacts in addressbook with City and State*/
select count(city or state)  from addressbook where city = 'channagiri' and state = 'karnataka';

/* Ordering the contacts in alphabetically by its name*/
select * from addressbook order by firstname;

/*Deleting contact with name*/
delete from addressbook where firstname = 'rakesh';

/* Printing contacts by there city and State*/
select * from addressbook where city = 'channagiri' and state = 'karanataka';

/*Altering the table adding one column*/
alter table addressbook add relation varchar(50) after lastname; 

/*Altering the table adding one column*/
alter table addressbook add name varchar(50)after lastname;

/*Updating the contacts by name*/
update addressbook set name = 'vijay', relation = 'friend' where firstname = 'bharath';
update addressbook set name = 'anusha', relation = 'family' where firstname = 'rakesh';
