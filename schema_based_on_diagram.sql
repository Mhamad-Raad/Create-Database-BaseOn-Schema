create table patients(
	id serial primary key,
	name varchar(50),
	date_of_birth date
);


create table medical_histories(
	id serial primary key,
	admitted_at timestamp,
	patient_id int,
	status varchar(50)
)


create table treatment (
	id serial primary key,
	type varchar(50),
	name varchar(50)
)

create table history_treatments (
	mh_id int,
	treatments_id int 
)

create table invoice_items (
	id serial primary key,
	unit_price decimal,
	qunatity int, 
	total_price decimal,
	invoice_id int,
	treatment_id int
)

create table invoice_items (
	id serial primary key,
	unit_price decimal,
	qunatity int, 
	total_price decimal,
	invoice_id int,
	treatment_id int
)

create table invoice (
	id serial primary key,
	total_amount decimal,
	generate_at timestamp,
	payed_at timestamp,
	medical_history_id int
)
