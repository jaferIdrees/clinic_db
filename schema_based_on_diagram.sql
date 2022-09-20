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

