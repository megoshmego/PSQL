CREATE TABLE medical_center (
    id SERIAL PRIMARY KEY,
    hospital TEXT NOT NULL,
    location TEXT NOT NULL,
    num_of_docs INTEGER NOT NULL,
    patient_satisfaction FLOAT,
    revenue INTEGER,
);

CREATE TABLE specialties (
    id SERIAL PRIMARY KEY,
    specialty TEXT NOT NULL,
    number_of_docs INTEGER NOT NULL,
    doc_pt_ratio FLOAT,
    specialty_satisfaction FLOAT,
    specialty_revenue INTEGER
);_


CREATE TABlE patients (
    id SERIAL PRIMARY KEY,
    address TEXT,
    phone FLOAT,
    first_name TEXT,
    last_name TEXT,
    birthdate FLOAT NOT NULL,
    patient_insurance BOOLEAN,
    patient_insurance_number INTEGER,
    patient_account_balance INTEGER
);

CREATE TABLE doctor (
    id SERIAL PRIMARY KEY,
    npi INTEGER NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL, 
    specialty_id INTEGER REFERENCES specialties
    patient_satisfaction FLOAT NOT NULL
);


CREATE TABLE insurance (
    id SERIAL PRIMARY KEY,
    carrier TEXT NOT NOT NULL,
    region TEXT,
    copay INTEGER NOT NULL
);