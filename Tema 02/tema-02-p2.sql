USE BD_TRAVEL
GO

SELECT * FROM sys.schemas
GO

-- VISUALIZAR INFORMARCION DE LA BD Y FILEGROUPDS

SP_HELPDB BD_TRAVEL
GO

-- CREACION DE UNA TABLA CON SCHEMA Y FILEGROUP

CREATE TYPE TIEMPO FROM DATETIME NOT NULL -- tipo TIEMPO
GO

CREATE TABLE RRHH.TB_EMPLEADO (
  COD_EMP	  CHAR(5)		NOT NULL,
  NOM_EMP	  VARCHAR(40)	NOT NULL,
  FIN_EMP	  TIEMPO		NOT NULL,
  SUELD_EMP	  SMALLMONEY	NOT NULL
) ON FG_ADMINISTRA
GO

-- VISUALIZAR ESTRUCTURA DE UNA TABLA

SP_HELP 'RRHH.TB_EMPLEADO'
GO

-- AGREGAR COLUMNAS A UNA TABLA

ALTER TABLE RRHH.TB_EMPLEADO 
  ADD TELEF_EMP	  VARCHAR(14)  NOT NULL,
	  DIR_EMP	  VARCHAR(100) NOT NULL
GO