CREATE TABLE entrenador (
    idEnt INT PRIMARY KEY,
    nomEnt VARCHAR(100)
);

CREATE TABLE equipo (
    idEq INT PRIMARY KEY,
    ubiPais VARCHAR(100),
    ubiCiudad VARCHAR(100)
);

CREATE TABLE jugador (
    idJug INT PRIMARY KEY
);

CREATE TABLE posicion (
    nomPos VARCHAR(100),
    idJug INT,
    FOREIGN KEY (idJug) REFERENCES jugador(idJug),
);

CREATE TABLE nombrejugador (
    idNJ INT PRIMARY KEY,
    nombres VARCHAR(100),
    apellidos VARCHAR(100),
    idJug INT,
    FOREIGN KEY (idJug) REFERENCES jugador(idJug)
);

CREATE TABLE partido (
    idPartido INT PRIMARY KEY,
    fecha DATE
);

CREATE TABLE puntaje (
    idPunt INT PRIMARY KEY,
    Punt INT,
    idPartido INT,
    FOREIGN KEY (idPartido) REFERENCES partido(idPartido)
);

CREATE TABLE Tiene (
    idEnt INT,
    idEq INT,
    idPartido INT,
    idJug INT,
    PRIMARY KEY (idEnt, idEq, idPartido, idJug),
    FOREIGN KEY (idEnt) REFERENCES entrenador(idEnt),
    FOREIGN KEY (idEq) REFERENCES equipo(idEq),
    FOREIGN KEY (idPartido) REFERENCES partido(idPartido),
    FOREIGN KEY (idJug) REFERENCES jugador(idJug)
);