show databases;
create database milkstore;
use milkstore;
create table EMPLOYEE(cus_id int primary key auto_increment,cus_name varchar(20),cow_type varchar(16),phone_no varchar(10),account_no bigint);
describe EMPLOYEE;
insert into EMPLOYEE values(1,'ram','jersy',9578970923,699834236);
insert into EMPLOYEE values('ramu','jersyy',9578970921,699834237);
select* from EMPLOYEE;
drop table EMPLOYEE;
create table bill_details(bill_id int primary key auto_increment,
							name_ varchar(20) not null,phone_no varchar(10) not null unique,bill_amount bigint not null);
                            describe bill_details;
                            insert into bill_details values(1,'bob',987654321,1000000000000);
                            insert into bill_details (bill_id,name_,phone_no,bill_amount)value(2,'san',897654325,297776677777);
					insert into bill_details (bill_id,name_,phone_no,bill_amount)value(3,'veng',789654350,987765555555);
                            select*from bill_details;
                            update bill_details set name_='bro' where bill_id=1;
                            
                            alter table bill_details rename column bill_amount to amount;
                            alter table bill_details add column bill_date date not null;
							alter table bill_details modify column bill_date datetime not null default now();
							insert into bill_details (bill_id,name_,phone_no,amount)value(4,'hg',987654325,100000000004),(5,'kj',987654323,100000076004);														
