create database hospital2;
use hospital2;

create database MediCare;
use MediCare;
create table patient (
idPatient int auto_increment primary key,
userName varchar(100) not null unique,
email  varchar(100) not null,
phoneNumber varchar(30) not null
);
select * from patient ;
create table doctor (
idDoctor int auto_increment primary key,
doctorFirstName varchar(30),
doctorLastName varchar(40),
speciality varchar(100)
);

create table appointment(
 idRendezVous int auto_increment primary key,
 dateDdv date not null ,
 statut varchar(20) not null,
 heure varchar(10) not null,
 motif varchar(500) not null,
 idDoctor int ,
 idPatient int ,
 foreign key (idDoctor) references doctor(idDoctor),
 foreign key (idPatient) references patient(idPatient)
);
