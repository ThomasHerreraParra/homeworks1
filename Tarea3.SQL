CREATE TABLE Company (
  idCompany INT PRIMARY KEY,
  cname VARCHAR(100),
  adress VARCHAR(100)
);

CREATE TABLE Staff (
  idStaff INT PRIMARY KEY,
  dob DATE,
  sname VARCHAR(100),
  adress VARCHAR(100),
  idCompany INT,
  since DATE,
  FOREIGN KEY (idCompany) REFERENCES Company(idCompany)
);

CREATE TABLE Child (
  cname VARCHAR(100),
  age INT,
  idStaff INT,
  FOREIGN KEY (idStaff) REFERENCES Staff(idStaff)
);

CREATE TABLE Phone (
  pnumber VARCHAR(100) PRIMARY KEY,
  ptype VARCHAR(100),
  idStaff INT,
  FOREIGN KEY (idStaff) REFERENCES Staff(idStaff)
);

CREATE TABLE Wife (
  idWife INT PRIMARY KEY,
  wname VARCHAR(100),
  idStaff INT,
  FOREIGN KEY (idStaff) REFERENCES Staff(idStaff)
);

CREATE TABLE Task (
  idTask INT PRIMARY KEY,
  tdescription VARCHAR(200),
  ttype VARCHAR(100)
);

CREATE TABLE StaffTask (
  idTask INT,
  idStaff INT,
  stdate DATE,
  PRIMARY KEY (idTask, idStaff),
  FOREIGN KEY (idTask) REFERENCES Task(idTask),
  FOREIGN KEY (idStaff) REFERENCES Staff(idStaff)
);
