USE BD_RECOBRA
GO

/*
	EJERCICIO 1
En la empresa Recobra, se decidi� implementar schemas para
una mejor organizaci�n de sus objetos , estos son: VENTAS,
RRHH y FINANZAS.

*/

CREATE SCHEMA VENTAS
GO

CREATE SCHEMA RRHH
GO

CREATE SCHEMA FINANZAS
GO

/*
	EJERCICIO 2
Por un tema de est�ndar, en la empresa Recobra, se
implementar� tipos de datos definidos por el usuario que ser�n:
  + TCadena basado en varchar(50).
  + TMoneda basado en smallmoney.
  + TTiempo basado en date.

*/

CREATE TYPE TCadena FROM VARCHAR(50) NOT NULL
GO

CREATE TYPE TMoneda FROM SMALLMONEY NOT NULL
GO

CREATE TYPE TTiempo FROM DATE NOT NULL
GO