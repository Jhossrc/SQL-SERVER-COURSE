
/*
	EJERCICIO 1

Se asign� la tarea de implementar una Base de datos a la
empresa Recobra con un datafile y un logfile ubicados en la
unidad C:\ carpeta Files, con tama�o inicial de 5MB hasta un
m�ximo de 50MB con un factor de crecimiento de 5MB, para
ambos archivos.

*/

USE master
GO

CREATE DATABASE BD_RECOBRA
ON (
  NAME = RECOBRA_DATA,
  FILENAME = 'C:\Files\RECOBRA_DATA.MDF',
  SIZE = 5MB,
  MAXSIZE = 50MB,
  FILEGROWTH = 5MB
)
LOG ON (
  NAME = RECOBRA_LOG,
  FILENAME = 'C:\Files\RECOBRA_LOG.LDF',
  SIZE = 5MB,
  MAXSIZE = 50MB,
  FILEGROWTH = 5MB
)
GO

SP_HELPDB BD_RECOBRA
GO
