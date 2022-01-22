create table admin(
	username varchar(45) unique not null,
	userID int primary key
)

create table patient(
	username varchar(45) unique not null,
	name varchar(45) not null,
	surname varchar(45) not null,
	patientAMKA int primary key
)

create table doctor(
	username varchar(45) unique not null,
	name varchar(45) not null,
	surname varchar(45) not null,
	specialty varchar(45) not null,
	doctorAMKA int primary key,
	ADMIN_userID int foreign key references admin(userID)
)

create table appointment(
	startSlotTime datetime not null,
	endSlotTime datetime not null,
	isAvailable bit not null,
	date date primary key,
	PATIENT_patientAMKA int foreign key references patient(patientAMKA),
	DOCTOR_doctorAMKA int foreign key references doctor(doctorAMKA)
)