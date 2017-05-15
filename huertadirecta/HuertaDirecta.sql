if exists(SELECT * FROM DBO.SYSDATABASES WHERE NAME = 'HuertaDirecta')  
BEGIN 
DROP DATABASE HuertaDirecta 
END 
GO 
create database HuertaDirecta 
GO 
use HuertaDirecta 
GO 
CREATE TABLE Usuario( 
usuario Varchar(100), 
password Varchar(30), 
fechaAlta DateTime, 
estado Int 
 ,CONSTRAINT PK_Usuario PRIMARY KEY ( usuario) 
) 
 
GO 
CREATE PROCEDURE UsuarioLeer 
( 
@usuario Varchar(100), 
@password Varchar(30), 
@fechaAlta DateTime, 
@estado Int 
) 
 
AS 
SELECT 
usuario, 
password, 
fechaAlta, 
estado 
 
FROM Usuario 
 WHERE 
((usuario = @usuario) or (@usuario is null)) and 
((password = @password) or (@password is null)) and 
((fechaAlta = @fechaAlta) or (@fechaAlta is null)) and 
((estado = @estado) or (@estado is null))  
 
 
GO 
CREATE PROCEDURE UsuarioGuardar 
( 
@usuario Varchar(100), 
@password Varchar(30), 
@fechaAlta DateTime, 
@estado Int 
) 
 
AS 
update Usuario SET  
usuario=@usuario,  
password=@password,  
fechaAlta=@fechaAlta,  
estado=@estado  
 
 WHERE 
usuario = @usuario  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE Persona( 
id Int, 
primerNombre Varchar(100), 
segundoNombre Varchar(100), 
primerApellido Varchar(100), 
segundoApellido Varchar(100), 
tipoDocumento Int, 
numeroDocumento Varchar(30), 
email Varchar(30), 
telefonoFijo Varchar(30), 
telefonoMovil Varchar(30), 
fechaAlta DateTime, 
fechaBaja DateTime, 
estado Int, 
calificacion Int 
 ,CONSTRAINT PK_Persona PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE PersonaLeer 
( 
@id Int, 
@primerNombre Varchar(100), 
@segundoNombre Varchar(100), 
@primerApellido Varchar(100), 
@segundoApellido Varchar(100), 
@tipoDocumento Int, 
@numeroDocumento Varchar(30), 
@email Varchar(30), 
@telefonoFijo Varchar(30), 
@telefonoMovil Varchar(30), 
@fechaAlta DateTime, 
@fechaBaja DateTime, 
@estado Int, 
@calificacion Int 
) 
 
AS 
SELECT 
id, 
primerNombre, 
segundoNombre, 
primerApellido, 
segundoApellido, 
tipoDocumento, 
numeroDocumento, 
email, 
telefonoFijo, 
telefonoMovil, 
fechaAlta, 
fechaBaja, 
estado, 
calificacion 
 
FROM Persona 
 WHERE 
((id = @id) or (@id is null)) and 
((primerNombre = @primerNombre) or (@primerNombre is null)) and 
((segundoNombre = @segundoNombre) or (@segundoNombre is null)) and 
((primerApellido = @primerApellido) or (@primerApellido is null)) and 
((segundoApellido = @segundoApellido) or (@segundoApellido is null)) and 
((tipoDocumento = @tipoDocumento) or (@tipoDocumento is null)) and 
((numeroDocumento = @numeroDocumento) or (@numeroDocumento is null)) and 
((email = @email) or (@email is null)) and 
((telefonoFijo = @telefonoFijo) or (@telefonoFijo is null)) and 
((telefonoMovil = @telefonoMovil) or (@telefonoMovil is null)) and 
((fechaAlta = @fechaAlta) or (@fechaAlta is null)) and 
((fechaBaja = @fechaBaja) or (@fechaBaja is null)) and 
((estado = @estado) or (@estado is null)) and 
((calificacion = @calificacion) or (@calificacion is null))  
 
 
GO 
CREATE PROCEDURE PersonaGuardar 
( 
@id Int, 
@primerNombre Varchar(100), 
@segundoNombre Varchar(100), 
@primerApellido Varchar(100), 
@segundoApellido Varchar(100), 
@tipoDocumento Int, 
@numeroDocumento Varchar(30), 
@email Varchar(30), 
@telefonoFijo Varchar(30), 
@telefonoMovil Varchar(30), 
@fechaAlta DateTime, 
@fechaBaja DateTime, 
@estado Int, 
@calificacion Int 
) 
 
AS 
update Persona SET  
id=@id,  
primerNombre=@primerNombre,  
segundoNombre=@segundoNombre,  
primerApellido=@primerApellido,  
segundoApellido=@segundoApellido,  
tipoDocumento=@tipoDocumento,  
numeroDocumento=@numeroDocumento,  
email=@email,  
telefonoFijo=@telefonoFijo,  
telefonoMovil=@telefonoMovil,  
fechaAlta=@fechaAlta,  
fechaBaja=@fechaBaja,  
estado=@estado,  
calificacion=@calificacion  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE direccion( 
id Int, 
latitud Int, 
longitud Int, 
manzana Varchar(10), 
solar Varchar(10), 
apto Varchar(10), 
numero Varchar(10), 
codigoCalle Int, 
codigoCalleEsquina Int, 
localidad Int, 
codigoCiudad Int, 
codigoProvincia Int, 
codigoPais Int 
 ,CONSTRAINT PK_direccion PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE direccionLeer 
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
CREATE PROCEDURE direccionGuardar 
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
 
CREATE TABLE Pais( 
id Int, 
nombre Varchar(100) 
 ,CONSTRAINT PK_Pais PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE PaisLeer 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
nombre 
 
FROM Pais 
 WHERE 
((id = @id) or (@id is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 
GO 
CREATE PROCEDURE PaisGuardar 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
update Pais SET  
id=@id,  
nombre=@nombre  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE provincia( 
id Int, 
idPais Int, 
nombre Varchar(100) 
 ,CONSTRAINT PK_provincia PRIMARY KEY ( id,idPais) 
) 
 
GO 
CREATE PROCEDURE provinciaLeer 
( 
@id Int, 
@idPais Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
idPais, 
nombre 
 
FROM provincia 
 WHERE 
((id = @id) or (@id is null)) and 
((idPais = @idPais) or (@idPais is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 
GO 
CREATE PROCEDURE provinciaGuardar 
( 
@id Int, 
@idPais Int, 
@nombre Varchar(100) 
) 
 
AS 
update provincia SET  
id=@id,  
idPais=@idPais,  
nombre=@nombre  
 
 WHERE 
id = @id and 
idPais = @idPais  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE ciudad( 
id Int, 
idLocalidad Int, 
nombre Varchar(100) 
 ,CONSTRAINT PK_ciudad PRIMARY KEY ( id,idLocalidad) 
) 
 
GO 
CREATE PROCEDURE ciudadLeer 
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
CREATE PROCEDURE ciudadGuardar 
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
 
CREATE TABLE barrio( 
id Int, 
idCiudad Int, 
nombre Varchar(100) 
 ,CONSTRAINT PK_barrio PRIMARY KEY ( id,idCiudad) 
) 
 
GO 
CREATE PROCEDURE barrioLeer 
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
CREATE PROCEDURE barrioGuardar 
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
 
CREATE TABLE calle( 
id Int, 
idCiudad Int, 
nombre Varchar(100) 
 ,CONSTRAINT PK_calle PRIMARY KEY ( id,idCiudad) 
) 
 
GO 
CREATE PROCEDURE calleLeer 
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
CREATE PROCEDURE calleGuardar 
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
 
CREATE TABLE productor( 
id Int, 
idPersona Int, 
nombreFantasia Varchar(100), 
descripcion Varchar(100) 
 ,CONSTRAINT PK_productor PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE productorLeer 
( 
@id Int, 
@idPersona Int, 
@nombreFantasia Varchar(100), 
@descripcion Varchar(100) 
) 
 
AS 
SELECT 
id, 
idPersona, 
nombreFantasia, 
descripcion 
 
FROM productor 
 WHERE 
((id = @id) or (@id is null)) and 
((idPersona = @idPersona) or (@idPersona is null)) and 
((nombreFantasia = @nombreFantasia) or (@nombreFantasia is null)) and 
((descripcion = @descripcion) or (@descripcion is null))  
 
 
GO 
CREATE PROCEDURE productorGuardar 
( 
@id Int, 
@idPersona Int, 
@nombreFantasia Varchar(100), 
@descripcion Varchar(100) 
) 
 
AS 
update productor SET  
id=@id,  
idPersona=@idPersona,  
nombreFantasia=@nombreFantasia,  
descripcion=@descripcion  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE imagen( 
id Int, 
imagen Varchar(100) 
 ,CONSTRAINT PK_imagen PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE imagenLeer 
( 
@id Int, 
@imagen Varchar(100) 
) 
 
AS 
SELECT 
id, 
imagen 
 
FROM imagen 
 WHERE 
((id = @id) or (@id is null)) and 
((imagen = @imagen) or (@imagen is null))  
 
 
GO 
CREATE PROCEDURE imagenGuardar 
( 
@id Int, 
@imagen Varchar(100) 
) 
 
AS 
update imagen SET  
id=@id,  
imagen=@imagen  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE producto( 
id Int, 
idCategoria Int, 
nombre Varchar(100), 
descripcion Varchar(5000) 
 ,CONSTRAINT PK_producto PRIMARY KEY ( id,idCategoria) 
) 
 
GO 
CREATE PROCEDURE productoLeer 
( 
@id Int, 
@idCategoria Int, 
@nombre Varchar(100), 
@descripcion Varchar(5000) 
) 
 
AS 
SELECT 
id, 
idCategoria, 
nombre, 
descripcion 
 
FROM producto 
 WHERE 
((id = @id) or (@id is null)) and 
((idCategoria = @idCategoria) or (@idCategoria is null)) and 
((nombre = @nombre) or (@nombre is null)) and 
((descripcion = @descripcion) or (@descripcion is null))  
 
 
GO 
CREATE PROCEDURE productoGuardar 
( 
@id Int, 
@idCategoria Int, 
@nombre Varchar(100), 
@descripcion Varchar(5000) 
) 
 
AS 
update producto SET  
id=@id,  
idCategoria=@idCategoria,  
nombre=@nombre,  
descripcion=@descripcion  
 
 WHERE 
id = @id and 
idCategoria = @idCategoria  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE categoria( 
id Int, 
nombre Varchar(100) 
 ,CONSTRAINT PK_categoria PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE categoriaLeer 
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
CREATE PROCEDURE categoriaGuardar 
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
 
CREATE TABLE moneda( 
id Int, 
nombre Varchar(100) 
 ,CONSTRAINT PK_moneda PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE monedaLeer 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
nombre 
 
FROM moneda 
 WHERE 
((id = @id) or (@id is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 
GO 
CREATE PROCEDURE monedaGuardar 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
update moneda SET  
id=@id,  
nombre=@nombre  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE tipoUnidad( 
id Int, 
nombre Varchar(100) 
 ,CONSTRAINT PK_tipoUnidad PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE tipoUnidadLeer 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
nombre 
 
FROM tipoUnidad 
 WHERE 
((id = @id) or (@id is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 
GO 
CREATE PROCEDURE tipoUnidadGuardar 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
update tipoUnidad SET  
id=@id,  
nombre=@nombre  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE productoProductor( 
idProducto Int, 
idProductor Int, 
descripcion Varchar(100), 
codigoMoneda Int, 
precio Decimal, 
codigoTipoUnidad Int, 
linkSitio Varchar(100), 
linkRedSocial Varchar(100) 
 ,CONSTRAINT PK_productoProductor PRIMARY KEY ( idProducto,idProductor) 
) 
 
GO 
CREATE PROCEDURE productoProductorLeer 
( 
@idProducto Int, 
@idProductor Int, 
@descripcion Varchar(100), 
@codigoMoneda Int, 
@precio Decimal, 
@codigoTipoUnidad Int, 
@linkSitio Varchar(100), 
@linkRedSocial Varchar(100) 
) 
 
AS 
SELECT 
idProducto, 
idProductor, 
descripcion, 
codigoMoneda, 
precio, 
codigoTipoUnidad, 
linkSitio, 
linkRedSocial 
 
FROM productoProductor 
 WHERE 
((idProducto = @idProducto) or (@idProducto is null)) and 
((idProductor = @idProductor) or (@idProductor is null)) and 
((descripcion = @descripcion) or (@descripcion is null)) and 
((codigoMoneda = @codigoMoneda) or (@codigoMoneda is null)) and 
((precio = @precio) or (@precio is null)) and 
((codigoTipoUnidad = @codigoTipoUnidad) or (@codigoTipoUnidad is null)) and 
((linkSitio = @linkSitio) or (@linkSitio is null)) and 
((linkRedSocial = @linkRedSocial) or (@linkRedSocial is null))  
 
 
GO 
CREATE PROCEDURE productoProductorGuardar 
( 
@idProducto Int, 
@idProductor Int, 
@descripcion Varchar(100), 
@codigoMoneda Int, 
@precio Decimal, 
@codigoTipoUnidad Int, 
@linkSitio Varchar(100), 
@linkRedSocial Varchar(100) 
) 
 
AS 
update productoProductor SET  
idProducto=@idProducto,  
idProductor=@idProductor,  
descripcion=@descripcion,  
codigoMoneda=@codigoMoneda,  
precio=@precio,  
codigoTipoUnidad=@codigoTipoUnidad,  
linkSitio=@linkSitio,  
linkRedSocial=@linkRedSocial  
 
 WHERE 
idProducto = @idProducto and 
idProductor = @idProductor  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE pedido( 
id Int, 
idPersonaDestinatario Int, 
moneda Int, 
monto Decimal, 
estado Int 
 ,CONSTRAINT PK_pedido PRIMARY KEY ( id) 
) 
 
GO 
CREATE PROCEDURE pedidoLeer 
( 
@id Int, 
@idPersonaDestinatario Int, 
@moneda Int, 
@monto Decimal, 
@estado Int 
) 
 
AS 
SELECT 
id, 
idPersonaDestinatario, 
moneda, 
monto, 
estado 
 
FROM pedido 
 WHERE 
((id = @id) or (@id is null)) and 
((idPersonaDestinatario = @idPersonaDestinatario) or (@idPersonaDestinatario is null)) and 
((moneda = @moneda) or (@moneda is null)) and 
((monto = @monto) or (@monto is null)) and 
((estado = @estado) or (@estado is null))  
 
 
GO 
CREATE PROCEDURE pedidoGuardar 
( 
@id Int, 
@idPersonaDestinatario Int, 
@moneda Int, 
@monto Decimal, 
@estado Int 
) 
 
AS 
update pedido SET  
id=@id,  
idPersonaDestinatario=@idPersonaDestinatario,  
moneda=@moneda,  
monto=@monto,  
estado=@estado  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
CREATE TABLE pedidoDetalle( 
idPedido Int, 
idItem Int, 
idProducto Int, 
idProductor Int 
 ,CONSTRAINT PK_pedidoDetalle PRIMARY KEY ( idPedido,idItem) 
) 
 
GO 
CREATE PROCEDURE pedidoDetalleLeer 
( 
@idPedido Int, 
@idItem Int, 
@idProducto Int, 
@idProductor Int 
) 
 
AS 
SELECT 
idPedido, 
idItem, 
idProducto, 
idProductor 
 
FROM pedidoDetalle 
 WHERE 
((idPedido = @idPedido) or (@idPedido is null)) and 
((idItem = @idItem) or (@idItem is null)) and 
((idProducto = @idProducto) or (@idProducto is null)) and 
((idProductor = @idProductor) or (@idProductor is null))  
 
 
GO 
CREATE PROCEDURE pedidoDetalleGuardar 
( 
@idPedido Int, 
@idItem Int, 
@idProducto Int, 
@idProductor Int 
) 
 
AS 
update pedidoDetalle SET  
idPedido=@idPedido,  
idItem=@idItem,  
idProducto=@idProducto,  
idProductor=@idProductor  
 
 WHERE 
idPedido = @idPedido and 
idItem = @idItem  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 
GO 
 
