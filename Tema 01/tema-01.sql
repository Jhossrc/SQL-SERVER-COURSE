USE master
GO

-- POR DEFECTO
CREATE DATABASE BD_CONTOSO
GO

-- PERSONALIZADA
CREATE DATABASE BD_TRAVEL
ON (
  NAME = TRAVEL_DATA,
  FILENAME = 'C:\Data\TRAVEL_DATA.MDF',
  SIZE = 5MB,
  MAXSIZE = 50MB,
  FILEGROWTH = 25%
)
LOG ON (
  NAME = TRAVEL_LOG,
  FILENAME = 'C:\Data\TRAVEL_LOG.LDF',
  SIZE = 5MB,
  MAXSIZE = 150MB,
  FILEGROWTH = 5MB
)
GO

-- ACTUALIZANDO ARCHIVOS

ALTER DATABASE BD_TRAVEL
MODIFY FILE (
  NAME = TRAVEL_DATA,
  MAXSIZE = 450MB
)
GO

-- AGREGAR ARCHIVOS

ALTER DATABASE BD_TRAVEL
ADD FILE (
  NAME = TRAVEL_DATAN1,
  FILENAME = 'C:\Data\TRAVEL_DATAN1.NDF'
)
GO

-- AGREGAR ARCHIVOS - LOG

ALTER DATABASE BD_TRAVEL
ADD LOG FILE (
  NAME = TRAVEL_LOG1,
  FILENAME = 'C:\Data\TRAVEL_LOG1.LDF'
)
GO

-- ELIMINAR UN ARCHIVO 

ALTER DATABASE BD_TRAVEL
ADD FILE (
  NAME = TRAVEL_DATAN2,
  FILENAME = 'C:\Data\TRAVEL_DATAN2.NDF'
)
GO

ALTER DATABASE BD_TRAVEL
  REMOVE FILE TRAVEL_DATAN2
GO

/*
	ADJUNTAR ARCHIVOS DE BD
*/

-- 1. DESACOPLAR ARCHIVOS

SP_DETACH_DB 'BD_TRAVEL'
GO

-- 2. MOVER ARCHIVOS
	-- CORTAR Y PEGAR EN OTRA CARPETA

-- 3. CREAR UN NUEVO SERVIDOR
CREATE DATABASE BD_TRAVEL
ON
  (FILENAME = 'C:\NewFolder\TRAVEL_DATA.MDF'),
  (FILENAME = 'C:\NewFolder\TRAVEL_DATAN1.NDF'),
  (FILENAME = 'C:\NewFolder\TRAVEL_LOG.LDF'),
  (FILENAME = 'C:\NewFolder\TRAVEL_LOG1.LDF')
FOR ATTACH
GO

-- AGREGANDO FILEGROUP A LA BD

ALTER DATABASE BD_TRAVEL
  ADD FILEGROUP FG_COMERCIAL
GO

ALTER DATABASE BD_TRAVEL
  ADD FILEGROUP FG_ADMINISTRA
GO

-- AGREGAR DATAFILES A LOS FILEGROUPS

ALTER DATABASE BD_TRAVEL
ADD FILE (
  NAME = TRAVEL_DATA_COMERCIAL,
  FILENAME = 'C:\Data\TRAVEL_DATA_COMERCIAL.NDF'
) TO FILEGROUP FG_COMERCIAL
GO

ALTER DATABASE BD_TRAVEL
ADD FILE (
  NAME = TRAVEL_DATA_ADMINISTRA,
  FILENAME = 'C:\Data\TRAVEL_DATA_ADMINISTRA.NDF'
) TO FILEGROUP FG_ADMINISTRA
GO

