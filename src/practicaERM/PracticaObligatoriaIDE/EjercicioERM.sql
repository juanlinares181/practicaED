SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS new_table;
DROP TABLE IF EXISTS new_table;
DROP TABLE IF EXISTS new_table;
DROP TABLE IF EXISTS Alumnos;
DROP TABLE IF EXISTS Profesores;
DROP TABLE IF EXISTS Imparten;
DROP TABLE IF EXISTS Asignaturas;
DROP TABLE IF EXISTS Elaboran;
DROP TABLE IF EXISTS Examenes;
DROP TABLE IF EXISTS new_table;




/* Create Tables */

CREATE TABLE Alumnos
(
	Num_alu numeric NOT NULL,
	Nombre varchar(30),
	Grupo varchar(9),
	PRIMARY KEY (Num_alu),
	UNIQUE (Num_alu)
);


CREATE TABLE Asignaturas
(
	Num_asig numeric NOT NULL,
	Nombre varchar(30),
	PRIMARY KEY (Num_asig),
	UNIQUE (Num_asig)
);


CREATE TABLE Elaboran
(
	Fecha date,
	Cod_Practica  numeric NOT NULL,
	UNIQUE (Cod_Practica )
);


CREATE TABLE Examenes
(
	Num_exam numeric NOT NULL,
	Num_preguntas int,
	Fecha date,
	PRIMARY KEY (Num_exam),
	UNIQUE (Num_exam)
);


CREATE TABLE Imparten
(
	Num_asig numeric NOT NULL,
	UNIQUE (Num_asig)
);


CREATE TABLE new_table
(
	Cod_Practica  numeric NOT NULL,
	Nombre varchar(30),
	Nivel int,
	PRIMARY KEY (Cod_Practica ),
	UNIQUE (Cod_Practica )
);


CREATE TABLE new_table
(
	Num_alu numeric NOT NULL,
	Cod_Practica  numeric NOT NULL,
	UNIQUE (Num_alu),
	UNIQUE (Cod_Practica )
);


CREATE TABLE new_table
(
	Num_alu numeric NOT NULL,
	Num_asig numeric NOT NULL,
	UNIQUE (Num_alu),
	UNIQUE (Num_asig)
);


CREATE TABLE new_table
(
	Num_alu numeric NOT NULL,
	Num_exam numeric NOT NULL,
	UNIQUE (Num_alu),
	UNIQUE (Num_exam)
);


CREATE TABLE Profesores
(
	Num_profe numeric,
	Nombre varchar(30),
	Cod_Practica  numeric NOT NULL,
	UNIQUE (Cod_Practica )
);



/* Create Foreign Keys */

ALTER TABLE new_table
	ADD FOREIGN KEY (Num_alu)
	REFERENCES Alumnos (Num_alu)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE new_table
	ADD FOREIGN KEY (Num_alu)
	REFERENCES Alumnos (Num_alu)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE new_table
	ADD FOREIGN KEY (Num_alu)
	REFERENCES Alumnos (Num_alu)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Imparten
	ADD FOREIGN KEY (Num_asig)
	REFERENCES Asignaturas (Num_asig)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE new_table
	ADD FOREIGN KEY (Num_asig)
	REFERENCES Asignaturas (Num_asig)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Profesores
	ADD FOREIGN KEY (Cod_Practica )
	REFERENCES Elaboran (Cod_Practica )
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE new_table
	ADD FOREIGN KEY (Num_exam)
	REFERENCES Examenes (Num_exam)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Profesores
	ADD FOREIGN KEY (Num_profe)
	REFERENCES Imparten (Num_asig)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Elaboran
	ADD FOREIGN KEY (Cod_Practica )
	REFERENCES new_table (Cod_Practica )
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE new_table
	ADD FOREIGN KEY (Cod_Practica )
	REFERENCES new_table (Cod_Practica )
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



