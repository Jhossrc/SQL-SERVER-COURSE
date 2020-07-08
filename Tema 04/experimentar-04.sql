USE BDInmobiliaria
GO

-- 01. Ingrese los siguientes registros:

INSERT INTO Comercial.ESTADO (COD_EST, DESC_EST) VALUES
  ('EST001','OCUPADO'),
  ('EST002','DESOCUPADO'),
  ('EST003','VIGENTE'),
  ('EST004','VENCIDO'),
  ('EST005','HABILITADO'),
  ('EST006','DESHABILITADO')
GO

INSERT INTO Arquitectura.EDIFICIOS (COD_EDIF, NOM_EDIF,DIRECC_EDIF,CODPOSTAL_EDIF,AREA_TOTAL_EDIF,COD_EST) VALUES
  ('EDF001','La Posadera','Jr. Lima 123','L-01', 450 ,'EST005'),
  ('EDF002','El Corralito','Av. Saenz Pe�a 357','L-14',178 ,'EST006'),
  ('EDF003','Los Alamos','Av. Del R�o 666','L-21',246 ,'EST005'),
  ('EDF004','El Aguajal','Jr. Urdanivia 875','L-21',285 ,'EST006'),
  ('EDF005','Los Cupisnique','Av. La Mar 966','L-14', 178,'EST005'),
  ('EDF006','El Indice','Av. Las Dromelias 777','L-01', 246,'EST006'),
  ('EDF007','Los Guerreros Moche','Av. De los ac�','L-17', 246,'EST006')
GO

/*
   02. La Inmobiliaria acaba de recibir una lista de Edificios en Flat File, deber� ingresar
       a la tabla Edificios utilizando BULK INSERT. (En Experimentar se encuentra el
       archivo NuevosEdificios.TXT)
*/

BULK INSERT Arquitectura.EDIFICIOS
FROM 'C:\NuevosEdificios.txt'
WITH (FIRSTROW=1, FIELDTERMINATOR=',', ROWTERMINATOR='\n')
GO

SELECT * FROM Arquitectura.EDIFICIOS
GO

/*
   03. Inserte registros a la tabla Departamentos desde la Tabla TBDEPA ubicada en la
       Base de Datos BDCONSTRUCCION.
*/

INSERT INTO Arquitectura.DEPARTAMENTOS
  SELECT * FROM BDConstruccion.dbo.TBDEPA
GO

SELECT * FROM Arquitectura.DEPARTAMENTOS
GO

/*
   04. Inserte registros a las tablas: Usuario, Propietario, Inquilino y Familiares, desde las
       tablas ubicadas en la Base de Datos BDADMISION.

*/

INSERT INTO Comercial.USUARIO
  SELECT * FROM BDAdmision.dbo.USUARIO
GO

INSERT INTO Comercial.INQUILINO
  SELECT * FROM BDAdmision.dbo.INQUILINO
GO

INSERT INTO Comercial.PROPIETARIO
  SELECT * FROM BDAdmision.dbo.PROPIETARIO
GO

INSERT INTO Comercial.FAMILIARES
  SELECT * FROM BDAdmision.dbo.FAMILIARES
GO

/*
   05. La Inmobiliaria acaba de recibir del departamento legal una lista de contratos en
       Flat File, deber� ingresar a la tabla Contratos utilizando BULK INSERT. (En
       Experimentar se encuentra el archivo Contratos.TXT)
*/

BULK INSERT Comercial.CONTRATO
FROM 'C:\CONTRATOS.txt'
WITH (FIRSTROW = 1, FIELDTERMINATOR = ';', ROWTERMINATOR = '\n')
GO

/*
   06. As� mismo, tiene una lista con todos los detalles de contrato, deber� ingresar a la
       tabla DETALLECONTRATOS utilizando BUK INSERT (En experimentar se
       encuentra el archivo DetalleContrato.TXT)
*/

BULK INSERT Comercial.DETALLECONTRATO
FROM 'C:\DetalleContratos.txt'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='\n')
GO

/*
   07. Actualizar el precio de alquiler de los departamentos ubicados en el primer piso,
       incrementando en 25%.
*/

SELECT COD_EDIF, COD_DEP, PISO_DEP, PRECIO_ALQXMES_DEP AS [PRECIO DE ALQUILER] FROM Arquitectura.DEPARTAMENTOS
WHERE PISO_DEP=1
GO

UPDATE Arquitectura.DEPARTAMENTOS
  SET  PRECIO_ALQXMES_DEP *= 1.25
WHERE PISO_DEP = 1
GO

/*
   08. Actualizar los detalles de contrato perteneciente a los edificios ubicados en el
       c�digo postal L-01, ampliando la fecha fin de alquiler en tres meses.
*/

SELECT * FROM Comercial.DETALLECONTRATO
WHERE COD_EDIF IN (
 SELECT COD_EDIF FROM Arquitectura.EDIFICIOS
 WHERE CODPOSTAL_EDIF = 'L-01'
)
GO

UPDATE Comercial.DETALLECONTRATO
SET FEC_FIN_ALQ = DATEADD(MM,3,FEC_FIN_ALQ)
WHERE COD_EDIF IN (
 SELECT COD_EDIF FROM Arquitectura.EDIFICIOS
 WHERE CODPOSTAL_EDIF = 'L-01'
)
GO

/*
   09. Actualizar los contratos retrasando 2 semanas las fechas de firma de contrato
       perteneciente a los propietarios cuyo apellido inicie con consonante.
*/

SELECT * FROM Comercial.CONTRATO
WHERE PROP_COD_USUA IN (
  SELECT COD_USUA FROM Comercial.PROPIETARIO
  WHERE COD_USUA IN (
    SELECT COD_USUA FROM Comercial.USUARIO
	WHERE APEPATER_USUA NOT LIKE '[AEIOUaeiou]%' AND 
          APEMATER_USUA NOT LIKE '[AEIOUaeiou]%'
  )
)
GO

UPDATE Comercial.CONTRATO
SET FEC_FIRMA = DATEADD(WEEK,2, FEC_FIRMA)
WHERE PROP_COD_USUA IN (
  SELECT COD_USUA FROM Comercial.PROPIETARIO
  WHERE COD_USUA IN (
    SELECT COD_USUA FROM Comercial.USUARIO
	WHERE APEPATER_USUA NOT LIKE '[AEIOUaeiou]%' AND 
          APEMATER_USUA NOT LIKE '[AEIOUaeiou]%'
  )
)
GO

-- 10. Cree una tabla TBContratosVencidos

SELECT * INTO TBContratosVencidos
FROM Comercial.CONTRATO
WHERE COD_CONT = 'YYY999'
GO

SELECT * FROM Comercial.CONTRATO
SELECT * FROM dbo.TBContratosVencidos
GO

/*
   11. Utilizando las tablas CONTRATO y TBCONTRATOSVENCIDOS realice las
       siguientes operaciones: (INSERT o UPDATE)
         + Insertar en la tabla TBCONTRATOSVENCIDOS si la comparaci�n de c�digos
           no coincide. (NOT MATCHED)
         + Actualizar en la tabla TBCONTRATOSVENCIDOS la fecha de contrato por la
           fecha actual si la comparaci�n de c�digos coincide (MATCHED).
           Utilizar el comando MERGE.
*/