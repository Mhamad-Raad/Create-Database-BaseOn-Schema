create table patients(
	id serial primary key,
	name varchar(50),
	date_of_birth date
);


create table medical_histories(
	id serial primary key,
	admitted_at timestamp,
	patient_id int,
	status varchar(50),
  FOREIGN KEY (patient_id) REFERENCES patient(id)
)


create table treatment (
	id serial primary key,
	type varchar(50),
	name varchar(50)
)

create table history_treatments (
	mh_id int,
	treatments_id int,
  FOREIGN KEY (mh_id) REFERENCES medical_histories(id),
  FOREIGN KEY (treatments_id) REFERENCES treatment(id)
)

create table invoice_items (
	id serial primary key,
	unit_price decimal,
	qunatity int, 
	total_price decimal,
	invoice_id int,
	treatment_id int,
  FOREIGN KEY (invoice_id) REFERENCES invoice(id),
  FOREIGN KEY (treatment_id) REFERENCES treatment(id)
)

create table invoice (
	id serial primary key,
	total_amount decimal,
	generate_at timestamp,
	payed_at timestamp,
	medical_history_id int,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
)
