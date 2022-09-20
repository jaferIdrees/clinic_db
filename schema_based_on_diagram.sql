CREATE TABLE patients(
id INT PRIMARY KEY IDENTITY,
name VARCHAR,
date_of_birth date
)

Go

CREATE TABLE medical_histories(
id INT PRIMARY KEY IDENTITY,
admitted_at TIMESTAMP,
status VARCHAR
)

Go
CREATE TABLE invoice_items(
id INT PRIMARY KEY IDENTITY,
unit_price DECIMAL,
quantity INTEGER,
total_price DECIMAL
)
Go

CREATE TABLE invoices(
id INT PRIMARY KEY IDENTITY,
total_amount DECIMAL,
generated_at TIMESTAMP,
payed_at TIMESTAMP
)

CREATE TABLE treatments(
id INT PRIMARY KEY IDENTITY,
type VARCHAR,
name VARCHAR
)

ALTER TABLE medical_histories
ADD CONSTRAINT patient_id FOREIGN KEY (patient_id) REFERENCES patients(id);

ALTER TABLE invoices
ADD CONSTRAINT medical_history_id FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id);

ALTER TABLE invoice_items
ADD CONSTRAINT invoice_id FOREIGN KEY (invoice_id) REFERENCES invoices(id)

ALTER TABLE invoice_items
ADD CONSTRAINT treatment_id FOREIGN KEY (treatment_id) REFERENCES treatments(id);

