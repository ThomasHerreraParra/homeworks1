CREATE TABLE doctor (
    idDoctor INT PRIMARY KEY,
    dob DATE,
    fname VARCHAR(100),
    lname VARCHAR(100)
);

CREATE TABLE patient (
    idPatient INT PRIMARY KEY,
    fname VARCHAR(100),
    lname VARCHAR(100)
);

CREATE TABLE insurance (
	num INT PRIMARY KEY,
	texto VARCHAR(100),
	idPatient INT,
	FOREIGN KEY(idPatient) REFERENCES patient(idPatient)
);

CREATE TABLE specialization (
    num INT PRIMARY KEY,
    description VARCHAR(100),
	idDoctor INT,
	FOREIGN KEY(idDoctor) REFERENCES doctor(idDoctor)
);

CREATE TABLE fingercode (
    idFinger INT PRIMARY KEY,
    hash VARCHAR(100),
    idPatient INT,
    FOREIGN KEY (idPatient) REFERENCES patient(idPatient)
);

CREATE TABLE diagnose (
    code INT PRIMARY KEY,
    details VARCHAR(100),
    recommendation VARCHAR(100),
	idPatient INT,
	FOREIGN KEY(idPatient) REFERENCES patient(idPatient)
);

CREATE TABLE doctorpatient (
	idPatient INT,
	idDoctor INT,
	FOREIGN KEY(idPatient) REFERENCES patient(idPatient),
	FOREIGN KEY(idDoctor) REFERENCES doctor(idDoctor)
)