using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class productoProductor{ 
 
public List<Dto.productoProductor> LeerproductoProductor(Dto.productoProductor dto){ 
try { 
    List<Dto.productoProductor> LDto=new List<Dto.productoProductor>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.productoProductorLeer 
( 
dto.idProducto, 
dto.idProductor, 
dto.descripcion, 
dto.codigoMoneda, 
dto.precio, 
dto.codigoTipoUnidad, 
dto.linkSitio, 
dto.linkRedSocial 
) 
 
.Select(x => new Dto.productoProductor{ 
idProducto = (x.idProducto==null)?-1:(int)x.idProducto, 
idProductor = (x.idProductor==null)?-1:(int)x.idProductor, 
descripcion = (x.descripcion==null)?"":(String)x.descripcion, 
codigoMoneda = (x.codigoMoneda==null)?-1:(int)x.codigoMoneda, 
precio = (x.precio==null)?-1:(Decimal)x.precio, 
codigoTipoUnidad = (x.codigoTipoUnidad==null)?-1:(int)x.codigoTipoUnidad, 
linkSitio = (x.linkSitio==null)?"":(String)x.linkSitio, 
linkRedSocial = (x.linkRedSocial==null)?"":(String)x.linkRedSocial 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado EscribirproductoProductor(Dto.productoProductor dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.productoProductorGuardar 
( 
dto.idProducto, 
dto.idProductor, 
dto.descripcion, 
dto.codigoMoneda, 
dto.precio, 
dto.codigoTipoUnidad, 
dto.linkSitio, 
dto.linkRedSocial 
) 
; 
          result.resultado = data.FirstOrDefault().resultado; 
          result.mensaje = data.FirstOrDefault().mensaje; 
      } 
  return result; 
}catch(Exception ex){throw new PersistenciaException(ex.Message);} 
} 
 
}} 
