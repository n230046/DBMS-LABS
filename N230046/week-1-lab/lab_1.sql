use gram_panchayat;
insert into citizen values(101,
"ravi",
'1995-06-15',
'male',
7899273920,
'farmer',
'ramapurnam',
true),
(102,'lakshmidevi','1988-11-22','female',9875600002,'tailor','ramputam',true),
(103,'sureshbabu','1992-03-10','male',9875600003,'shopekeper','seethampeta',true),
(104,'anjalirao','2000-08-5','female',9875600004,'student','ramapuram',true),
(105,'kirankumar','1985-01-18','male',9875600005,'electrician','seethampeta',true),
(106,'meenakumari','1998-12-30','female',9875600006,'teacher','lakshmipuram',false);
insert into citizen values(107,'radha','2007-3-10','female',9875600007,'doctor','saripalli',true);
insert into citizen values(108,'nandu','2009-09-8','female',7899273920,'nurse','goduguvarigudem',true);
delete from citizen where citizen_id=107;
alter table citizen add(address VARCHAR(100));
select * from citizen;
insert into citizen values(101,'rada','2008-09-8','female',5768797935,'scientist','nuzvid',true);
truncate table citizen;
update citizen set occupation='electrial technician' where citizen_id=105;
insert into certificate_type values(1,
'recidencecertificate',
'certifies the declared place of recidence',
7,
30.00,
true),
(2,'birth record request','request for a locally maintained birth record',5,20.00,true),
(3,'death record request','request for a locally maintained dead record',5,20.00,true),
(4,'family member certificate','records declared family member information',10,40.00,true),
(5,'property certificate','certificate related to locally maintained property records',15,50.00,true),
(6,'no dues certificate','indicates applicable local dues status',7,25.00,false);
insert into certificate_type values(7,'income certificate','pan card',6,30.00,true); 
update certificate_type set is_available=true where certificate_type_id=6;
select * from certificate_type;
insert into certificate_type values(7,'no certificate',8,40.00,true);
update certificate_type set processing_days=12 where certificate_type_id=5;
insert into certificate_application values
(1001,101,'residance certificate','2026-07-01','bank account documentation','submitted',30.00,"GP20260001"),
 (1002,102,'family member certificate','2026-07-02','welfare shceme application','under review',40.00,"GP20260002"),
 (1003,103,'property certificate','2026-07-03','property documentation','submitted',50.00,"GP20260003"),
 (1004,104,'residance certificate','2026-07-04','college admission','approved',30.00,"GP20260004"),
(1005,105,'no-dues certificate','2026-07-05','local service requirement','under review',25.00,"GP20260005"),
(1006,106,'birth record request','2026-07-06','personal documentation','rejected',20.00,"GP20260006");
select * from certificate_application;
insert into certificate_application values(1007,'birth record','2008-09-8','personal','review','GP20260001');
alter table certificate_application modify purpose VARCHAR(300);
alter table certificate_application add (issued_date DATE);
update certificate_application set application_status='under_review' where application_id=1001;
update certificate_application set application_status='approved' where application_id=1002;
create table panchayat_office(
office_id INT primary key,
office_name VARCHAR(100) not null,
village_name VARCHAR(50) not null,
pincode VARCHAR(15) not null,
contact_number VARCHAR(15) unique,
office_email VARCHAR(100) unique,
opening_time TIME not null,
is_operational BOOLEAN not null);
insert into panchayat_office values
(1,'rampuram gram panchayat','rampuram',521101,0866000001,'rampuram@gp.example','09:00:00',true),
(2,'seetham peta gram panchayat','seethampeta',521102,0866000002,'seethampeta@gp.example','09:30:00',true),
(3,'lakshmipuram grampanchayat','lakshmipuram',521103,0866000003,'lakshmipuram@gp.example','09:00:00',true),
(4,'krishnapuram grampanchayat','krishnapuram',521104,0866000004,'krishnapuram@gp.example','10:00:00',true),
(5,'venkatapuram grampanchayat','venkatapuram',521105,0866000005,'venkatapuram@gp.example','09:30:00',true),
(6,'gopalapuram grampanchayat','gopalapuram',521106,0866000006,'gopalapuram@gp.example','09:00:00',true);
select * from panchayat_office;
alter table panchayat_office add closing_time time;
create table temporary_request(
request_id VARCHAR(100) primary key,
request_name VARCHAR(15) not null,
request_date date not null);
insert into temporary_request values(
1001,'radha','2015-09-6'),
(1002,'nandu','2016-08-6'),
(1003,'ramu','2017-06-4');
select * from temporary_request;
truncate table temporary_request;
drop table temporary_request;


 

