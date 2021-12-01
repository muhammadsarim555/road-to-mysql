create database clinic

use clinic

create table doctorDepartment (
	id int primary key identity(1,1),
	depart_name varchar(32)
)


create table doctorFees(
	id int primary key identity(1,1),
	amount int
	
)

create table bill(
	id int primary key identity(1,1),
	patient_id int foreign key references patient(id),
	medicine_charge int,

	
)


insert into bill(patient_id,medicine_charge)
values(1,20),





create table patient(
	id int primary key identity(1,1),
	name varchar(32),
	age int,
	weight DECIMAL(6,4),
	disease varchar(42),
	doctor_id int foreign key references doctor(id)
)




insert into patient(name,age,weight,disease,doctor_id)
values('A',12,10.1,'Flu',3),
('B',80,7,'Fever',4),
('Talha',6,20,'Not',2),
('Sarim',40,4,'Cough',1)



create table doctor(
	id int primary key identity(1,1),
	name varchar(32),
	fee_id int foreign key references doctorFees(id), 
	d_name int foreign key references doctorDepartment(id)
)


insert into doctor(name,fee_id,d_name)
values('Anus',3,1),
('Ali',2,4),
('Mohsin',1,2),
('Sarim',4,1)

drop table doctor

insert into doctorDepartment(depart_name)
values('Internists'),
('Emergency physicians'),
('Neurologists'),
('Radiologists')

insert into doctorFees(amount)
values(1000),
(500),
(100),
(1500)


select * from doctorDepartment
select * from doctorFees
select * from doctor
select * from patient

