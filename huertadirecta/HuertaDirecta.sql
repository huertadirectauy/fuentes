USE HuertaDirecta
GO

IF OBJECT_ID ('dbo.barrio') IS NOT NULL
	DROP TABLE dbo.barrio
GO

IF OBJECT_ID ('dbo.calle') IS NOT NULL
	DROP TABLE dbo.calle
GO

IF OBJECT_ID ('dbo.categoria') IS NOT NULL
	DROP TABLE dbo.categoria
GO

IF OBJECT_ID ('dbo.ciudad') IS NOT NULL
	DROP TABLE dbo.ciudad
GO

IF OBJECT_ID ('dbo.direccion') IS NOT NULL
	DROP TABLE dbo.direccion
GO

IF OBJECT_ID ('dbo.imagen') IS NOT NULL
	DROP TABLE dbo.imagen
GO

IF OBJECT_ID ('dbo.moneda') IS NOT NULL
	DROP TABLE dbo.moneda
GO

IF OBJECT_ID ('dbo.Pais') IS NOT NULL
	DROP TABLE dbo.Pais
GO

IF OBJECT_ID ('dbo.pedido') IS NOT NULL
	DROP TABLE dbo.pedido
GO

IF OBJECT_ID ('dbo.pedidoDetalle') IS NOT NULL
	DROP TABLE dbo.pedidoDetalle
GO

IF OBJECT_ID ('dbo.barrioGuardar') IS NOT NULL
	DROP PROCEDURE dbo.barrioGuardar
GO

IF OBJECT_ID ('dbo.barrioLeer') IS NOT NULL
	DROP PROCEDURE dbo.barrioLeer
GO

IF OBJECT_ID ('dbo.calleGuardar') IS NOT NULL
	DROP PROCEDURE dbo.calleGuardar
GO

IF OBJECT_ID ('dbo.calleLeer') IS NOT NULL
	DROP PROCEDURE dbo.calleLeer
GO

IF OBJECT_ID ('dbo.categoriaGuardar') IS NOT NULL
	DROP PROCEDURE dbo.categoriaGuardar
GO

IF OBJECT_ID ('dbo.categoriaLeer') IS NOT NULL
	DROP PROCEDURE dbo.categoriaLeer
GO

IF OBJECT_ID ('dbo.ciudadGuardar') IS NOT NULL
	DROP PROCEDURE dbo.ciudadGuardar
GO

IF OBJECT_ID ('dbo.ciudadLeer') IS NOT NULL
	DROP PROCEDURE dbo.ciudadLeer
GO

IF OBJECT_ID ('dbo.direccionGuardar') IS NOT NULL
	DROP PROCEDURE dbo.direccionGuardar
GO

IF OBJECT_ID ('dbo.direccionLeer') IS NOT NULL
	DROP PROCEDURE dbo.direccionLeer
GO

CREATE TABLE dbo.barrio
	(
	id       INT NOT NULL,
	idCiudad INT NOT NULL,
	nombre   VARCHAR (100) NULL,
	CONSTRAINT PK_barrio PRIMARY KEY (id, idCiudad)
	)
GO

CREATE TABLE dbo.calle
	(
	id       INT NOT NULL,
	idCiudad INT NOT NULL,
	nombre   VARCHAR (100) NULL,
	CONSTRAINT PK_calle PRIMARY KEY (id, idCiudad)
	)
GO

CREATE TABLE dbo.categoria
	(
	id     INT NOT NULL,
	nombre VARCHAR (100) NULL,
	CONSTRAINT PK_categoria PRIMARY KEY (id)
	)
GO

CREATE TABLE dbo.ciudad
	(
	id          INT NOT NULL,
	idLocalidad INT NOT NULL,
	nombre      VARCHAR (100) NULL,
	CONSTRAINT PK_ciudad PRIMARY KEY (id, idLocalidad)
	)
GO

CREATE TABLE dbo.direccion
	(
	id                 INT NOT NULL,
	latitud            INT NULL,
	longitud           INT NULL,
	manzana            VARCHAR (10) NULL,
	solar              VARCHAR (10) NULL,
	apto               VARCHAR (10) NULL,
	numero             VARCHAR (10) NULL,
	codigoCalle        INT NULL,
	codigoCalleEsquina INT NULL,
	localidad          INT NULL,
	codigoCiudad       INT NULL,
	codigoProvincia    INT NULL,
	codigoPais         INT NULL,
	CONSTRAINT PK_direccion PRIMARY KEY (id)
	)
GO

CREATE TABLE dbo.imagen
	(
	id     INT NOT NULL,
	imagen VARCHAR (100) NULL,
	CONSTRAINT PK_imagen PRIMARY KEY (id)
	)
GO

CREATE TABLE dbo.moneda
	(
	id     INT NOT NULL,
	nombre VARCHAR (100) NULL,
	CONSTRAINT PK_moneda PRIMARY KEY (id)
	)
GO

CREATE TABLE dbo.Pais
	(
	id     INT NOT NULL,
	nombre VARCHAR (100) NULL,
	CONSTRAINT PK_Pais PRIMARY KEY (id)
	)
GO

CREATE TABLE dbo.pedido
	(
	id                    INT NOT NULL,
	idPersonaDestinatario INT NULL,
	moneda                INT NULL,
	monto                 DECIMAL (18) NULL,
	estado                INT NULL,
	CONSTRAINT PK_pedido PRIMARY KEY (id)
	)
GO

CREATE TABLE dbo.pedidoDetalle
	(
	idPedido    INT NOT NULL,
	idItem      INT NOT NULL,
	idProducto  INT NULL,
	idProductor INT NULL,
	CONSTRAINT PK_pedidoDetalle PRIMARY KEY (idPedido, idItem)
	)
GO

ALTER PROCEDURE barrioGuardar 
( 
@id Int, 
@idCiudad Int, 
@nombre Varchar(100) 
) 
 
AS 
update barrio SET  
id=@id,  
idCiudad=@idCiudad,  
nombre=@nombre  
 
 WHERE 
id = @id and 
idCiudad = @idCiudad  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO

ALTER PROCEDURE barrioLeer 
( 
@id Int, 
@idCiudad Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
idCiudad, 
nombre 
 
FROM barrio 
 WHERE 
((id = @id) or (@id is null)) and 
((idCiudad = @idCiudad) or (@idCiudad is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO

ALTER PROCEDURE calleGuardar 
( 
@id Int, 
@idCiudad Int, 
@nombre Varchar(100) 
) 
 
AS 
update calle SET  
id=@id,  
idCiudad=@idCiudad,  
nombre=@nombre  
 
 WHERE 
id = @id and 
idCiudad = @idCiudad  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO

ALTER PROCEDURE calleLeer 
( 
@id Int, 
@idCiudad Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
idCiudad, 
nombre 
 
FROM calle 
 WHERE 
((id = @id) or (@id is null)) and 
((idCiudad = @idCiudad) or (@idCiudad is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO

ALTER PROCEDURE categoriaGuardar 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
update categoria SET  
id=@id,  
nombre=@nombre  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO

ALTER PROCEDURE categoriaLeer 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
nombre 
 
FROM categoria 
 WHERE 
((id = @id) or (@id is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO

ALTER PROCEDURE ciudadGuardar 
( 
@id Int, 
@idLocalidad Int, 
@nombre Varchar(100) 
) 
 
AS 
update ciudad SET  
id=@id,  
idLocalidad=@idLocalidad,  
nombre=@nombre  
 
 WHERE 
id = @id and 
idLocalidad = @idLocalidad  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO

ALTER PROCEDURE ciudadLeer 
( 
@id Int, 
@idLocalidad Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
idLocalidad, 
nombre 
 
FROM ciudad 
 WHERE 
((id = @id) or (@id is null)) and 
((idLocalidad = @idLocalidad) or (@idLocalidad is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO

ALTER PROCEDURE direccionGuardar 
( 
@id Int, 
@latitud Int, 
@longitud Int, 
@manzana Varchar(10), 
@solar Varchar(10), 
@apto Varchar(10), 
@numero Varchar(10), 
@codigoCalle Int, 
@codigoCalleEsquina Int, 
@localidad Int, 
@codigoCiudad Int, 
@codigoProvincia Int, 
@codigoPais Int 
) 
 
AS 
update direccion SET  
id=@id,  
latitud=@latitud,  
longitud=@longitud,  
manzana=@manzana,  
solar=@solar,  
apto=@apto,  
numero=@numero,  
codigoCalle=@codigoCalle,  
codigoCalleEsquina=@codigoCalleEsquina,  
localidad=@localidad,  
codigoCiudad=@codigoCiudad,  
codigoProvincia=@codigoProvincia,  
codigoPais=@codigoPais  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO

ALTER PROCEDURE direccionLeer 
( 
@id Int, 
@latitud Int, 
@longitud Int, 
@manzana Varchar(10), 
@solar Varchar(10), 
@apto Varchar(10), 
@numero Varchar(10), 
@codigoCalle Int, 
@codigoCalleEsquina Int, 
@localidad Int, 
@codigoCiudad Int, 
@codigoProvincia Int, 
@codigoPais Int 
) 
 
AS 
SELECT 
id, 
latitud, 
longitud, 
manzana, 
solar, 
apto, 
numero, 
codigoCalle, 
codigoCalleEsquina, 
localidad, 
codigoCiudad, 
codigoProvincia, 
codigoPais 
 
FROM direccion 
 WHERE 
((id = @id) or (@id is null)) and 
((latitud = @latitud) or (@latitud is null)) and 
((longitud = @longitud) or (@longitud is null)) and 
((manzana = @manzana) or (@manzana is null)) and 
((solar = @solar) or (@solar is null)) and 
((apto = @apto) or (@apto is null)) and 
((numero = @numero) or (@numero is null)) and 
((codigoCalle = @codigoCalle) or (@codigoCalle is null)) and 
((codigoCalleEsquina = @codigoCalleEsquina) or (@codigoCalleEsquina is null)) and 
((localidad = @localidad) or (@localidad is null)) and 
((codigoCiudad = @codigoCiudad) or (@codigoCiudad is null)) and 
((codigoProvincia = @codigoProvincia) or (@codigoProvincia is null)) and 
((codigoPais = @codigoPais) or (@codigoPais is null))  
 
 

GO

