create database Tbank;

use Tbank;
create table branch (
branchName char(20),
branchcity char(20),
assests int);

insert into branch values('Jayangar', 'banglore', '780900');
insert into branch values('jp nagar', 'banglore', '745900');
insert into branch values('Jk nagar', 'banglore', '234900');
insert into branch values('mp angar', 'banglore', '567900');
insert into branch values('yy angar', 'manglore', '1234900');
insert into branch values('ph angar', 'manglore', '78900');
insert into branch values('kk angar', 'mysore', '745830');

alter table branch
add primary key(branchName);

alter table branch
add foreign key (branchName) references accounts(branchName) ;
desc branch;

select * from branch;

create table accounts(
accno int ,
branchName char(20),
balance int
 );
alter table accounts
add primary key(accno);

insert into accounts values ('123', 'Jayanagar', '4567');
insert into accounts values ('456', 'jp anagar', '43567');
insert into  accounts values ('789', 'kk nagar', '45678');
insert into  accounts values ('145', 'kk nagar', '124657');
insert into  accounts values ('190', 'mp nagar', '478');
insert into  accounts values ('134', 'yy nagar', '4890');
insert into  accounts values ('987', 'ph nagar', '5768');

select * from accounts;

create table depositor (
customerName char(20),
customerStreet char(20),
customerCity char(20)
);

insert into depositor values
('name1', 'street1', 'banglore'),
('name2', 'street2', 'banglore'),
('name3', 'street3', 'manglore'),
('name4', 'street4', 'mysore');


alter table depositor
add primary key(customerName);
select * from depositor;

create table loan (
loanNumber int,
branchName char(20),
amount int
);

insert into loan values
('666', 'banglore', 2345),
('777', 'banglore', 786434),
('777', 'banglore', 6734),
('555', 'manglore', 8446434),
('333', 'mysore', 756434),
('999', 'mysore', 7866);
select * from loan ;

update loan
set loanNumber ='111'
where amount='6734' ;
alter table loan
add primary key(loanNumber);

create table borrower (
customerName char(20),
loanNumber int
);

insert into borrower values
('name1', '555'),
('name2', '999'),
('name3', '333');

select * from borrower;
alter table branch
add primary key();
