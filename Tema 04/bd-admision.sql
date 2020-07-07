Create Database BDAdmision
go

use BDAdmision
go

CREATE TABLE USUARIO (
        COD_USUA                         char(6) NOT NULL,
        NOM_USUA                         varchar(25) NOT NULL,
        APEPATER_USUA              varchar(25) NOT NULL,
        APEMATER_USUA             varchar(25) NOT NULL,
        FEC_NAC_USUA                datetime NULL,
        FEC_REG_USUA                datetime NULL,
        TIPO_DOC_USUA               varchar(20) NOT NULL,
        NUM_DOC_USUA               char(8) NOT NULL,
        COD_EST                            char(6) NULL
 )

CREATE TABLE INQUILINO (
        COD_USUA                          char(6) NOT NULL,
        NOM_AVAL_INQ                  varchar(30) NOT NULL,
        APELL_AVAL                        char(30) NOT NULL,
        HABER_BAS_INQ                int NOT NULL,
        EST_CIVIL_INQ                   char(1) NULL,
        LUG_TRAB_INQ                  varchar(50) NULL
 )

CREATE TABLE PROPIETARIO (
        COD_USUA                          char(6) NOT NULL,
        TIPO                                     varchar(30) NOT NULL
 )

CREATE TABLE FAMILIARES (
        COD_FAMI                            char(6) NOT NULL,
        COD_USUA                           char(6) NOT NULL,
        NOM_FAMI                            varchar(25) NOT NULL,
        APEPATER_FAMI                 varchar(25) NOT NULL,
        APEMATER_FAMI                 varchar(25) NOT NULL,
        GRADO_PARENTES_FAMI  varchar(50) NOT NULL
 )
 

 -- Insertar Usuarios
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU001','Miriam','Pardo','Zapata','DNI','38367346')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU002','Leonardo','Jimenez','Tur�n','DNI','26429531')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU003','Antonino','Lavalle','Trujillo','DNI','84296130')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU004','Marco','Nicolini','Flores','DNI','03154826')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU005','Juan','Juarez','Hualpa','DNI','08071827')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU006','Giselli','Perez','Salda�a','DNI','37488720')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU007','Andr�s','Anselmi','Saldivar','DNI','03164975')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU008','Ramiro','G�lvez','Orellana','DNI','01483587')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU009','Gabriel','Placencia','Pomalaza','DNI','30274954')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU010','Liliana','G�mez','L�pez','DNI','09546396')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU011','Nicol�s','Arrieta','Salcedo','DNI','73486492')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU012','Ricardo','Garc�a','Belaunde','DNI','81155122')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU013','Jos� Mar�a','Ant�n','C�ceres','DNI','65782349')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU014','Flor','Morote','Salinas','DNI','19734651')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU015','Franco','Damas','Poncio','DNI','97643182')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU016','Renato','Brequeros','Tello','DNI','05578436')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU017','Paula','Noriega','Ramirez','DNI','13497856')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU018','Isabel','Brescia','Mar�n','DNI','95745321')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU019','Julio C�sar','Quispe','Urbina','DNI','0217896')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU020','Diego Antonio','Limay','Quiroz','DNI','23684826')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU021','ALVARO','DIAZ','SOLANO','DNI','98846655')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU022','ARMANDO','PEREZ','SORIANO','DNI','09982363')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU023','PEDRO','ADRIANZEN','LARA','DNI','09984646')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU024','LUIS','SOLANO','PAREDES','DNI','88474747')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU025','ISAC','LEON','ARIAS','DNI','08864918')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU026','JULIAN','SOLIS','PAUCAR','DNI','08865916')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU027','EDUARDO','RAMIREZ','RUIZ','DNI','08799001')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU028','JOSE LUIS','LEON','CORCUERA','DNI','08766901')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU029','EDUARDO','CRUZADO','COCA','DNI','28817127')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU030','GUILLERMO','VEGA','QUIJANDRIA','DNI','09993911')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU031','MARIO','MONTOYA','LEON','DNI','08864512')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU032','ALBERTO','ISOLA','CASTILLO','DNI','00292992')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU033','FELIPE','CABEL','LOPEZ','DNI','05959959')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU034','JOSE','PEREDA','REY','DNI','08876663')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU035','YOLANDA','CABEL','DE LEON','DNI','03456287')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU036','LUIS','CASTRO','PRADO','DNI','08864551')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU037','JUAN','GOMEZ','LAOS','DNI','08867677')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU038','PEDRO','RUIZ','CESPEDES','DNI','09975665')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU039','RUBEN','SALAS','GARCIA','DNI','08876662')
Insert Into Usuario(COD_USUA,NOM_USUA,APEPATER_USUA,APEMATER_USUA,TIPO_DOC_USUA,NUM_DOC_USUA)
Values('USU040','RAFAEL','SOLANO','PEREZ','DNI','07766531')
Go

-- Insertar Inquilinos
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU002','Rogelio','Barbosa',1250,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU003','Aurea','Saldivar',2500,'S')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU004','Luis','Orellana',1380,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU006','In�s','Salhuana',2450,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU007','Martha','Mar�n',3500,'S')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU010','Noe','Salda�a',3100,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU011','Angelina','Fernandez',4100,'V')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU013','Gustavo','Puic�n',1800,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU015','Eugenio','Albites',1780,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU016','Martin','Delfino',2200,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU017','Zacar�as','Mendoza',2600,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU018','Denis','Sacovertiz',2480,'S')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU021','JUAN','DIAZ',1150,'S')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU023','IRMA','SOTO',750,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU026','CARLOS','AREVALO',1950,'S')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU029','CESAR','OJEDA',900,'C')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU031','JULI0','VEGA',950,'V')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU032','ANA','ORTEGA',1650,'D')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU035','JOSE','PALACIOS',950,'D')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU037','RUBEN','SALAS',900,'S')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU039','PATRICIA','ARCE',1250,'V')
Insert Into Inquilino(COD_USUA,NOM_AVAL_INQ,APELL_AVAL,HABER_BAS_INQ,EST_CIVIL_INQ)
Values('USU040','RENATO','IRIARTE',1000,'S')
Go

-- Insertar Familiares
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM001','USU010','Alex','Honores','Siancas','Hijo')
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM001','USU017','Ulises','Jaimes','Pinto','Padre')
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM002','USU017','Irma','Saenz','Hinojosa','Madre')
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM001','USU031','El�as','Montoya','Le�n','Hermano')
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM002','USU031','Mart�n','Montoya','Le�n','Hermano')
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM003','USU031','In�s','Montoya','Le�n','Hermana')
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM001','USU018','Genaro','Delgado','Canedo','Abuelo')
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM002','USU018','Eulogio','Jimenez','Salcedo','Padrino')
Insert Into Familiares(COD_FAMI,COD_USUA,NOM_FAMI,APEPATER_FAMI,APEMATER_FAMI,GRADO_PARENTES_FAMI)
Values('FAM003','USU018','Yacila','Jimenez','Zopilote','Hija')

-- Insertar Propietarios
Insert Into Propietario(COD_USUA,TIPO)
Select Cod_Usua, ''
From Usuario
Where Cod_Usua Not In(
	Select Cod_Usua From Inquilino
)

 