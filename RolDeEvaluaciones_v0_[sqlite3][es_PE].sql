/*
@description Gestión de las fechas de evaluaciones en un colegio (Rol de Evaluaciones)
@author Luis Carrillo Gutiérrez
@date Agosto, 2018
@version 0.0.1
*/

DROP TABLE IF EXISTS [Asignatura];
CREATE TABLE IF NOT EXISTS [Asignatura]
(
	[id] CHAR(36) NOT NULL, 
	[denominación] VARCHAR(40) NOT NULL,
	PRIMARY KEY(id)
) WITHOUT RowId;

DROP TABLE IF EXISTS [Rol de Evaluaciones];
CREATE TABLE IF NOT EXISTS [Rol de Evaluaciones]
(
	[id] CHAR(36) NOT NULL,
	[grado] INTEGER NOT NULL, -- 3 = tercero
	[nivel] INTEGER NOT NULL, -- 0, 1, 2 = secundario
	[bimestre] INTEGER NOT NULL, -- 2 (1..4/5)
	[día] INTEGER NOT NULL, -- 32 = 1 de Febrero
	[año] CHAR(4) NOT NULL, -- 2012
	[id del curso] CHAR(36) NOT NULL REFERENCES [Asignatura](id),
	PRIMARY KEY(id)
) WITHOUT RowId;