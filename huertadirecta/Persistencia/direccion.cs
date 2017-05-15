using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class direccion{ 
 
public List<Dto.direccion> Leerdireccion(Dto.direccion dto){ 
try { 
    List<Dto.direccion> LDto=new List<Dto.direccion>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.direccionLeer 
( 
dto.id, 
dto.latitud, 
dto.longitud, 
dto.manzana, 
dto.solar, 
dto.apto, 
dto.numero, 
dto.codigoCalle, 
dto.codigoCalleEsquina, 
dto.localidad, 
dto.codigoCiudad, 
dto.codigoProvincia, 
dto.codigoPais 
) 
 
.Select(x => new Dto.direccion{ 
id = (x.id==null)?-1:(int)x.id, 
latitud = (x.latitud==null)?-1:(int)x.latitud, 
longitud = (x.longitud==null)?-1:(int)x.longitud, 
manzana = (x.manzana==null)?"":(String)x.manzana, 
solar = (x.solar==null)?"":(String)x.solar, 
apto = (x.apto==null)?"":(String)x.apto, 
numero = (x.numero==null)?"":(String)x.numero, 
codigoCalle = (x.codigoCalle==null)?-1:(int)x.codigoCalle, 
codigoCalleEsquina = (x.codigoCalleEsquina==null)?-1:(int)x.codigoCalleEsquina, 
localidad = (x.localidad==null)?-1:(int)x.localidad, 
codigoCiudad = (x.codigoCiudad==null)?-1:(int)x.codigoCiudad, 
codigoProvincia = (x.codigoProvincia==null)?-1:(int)x.codigoProvincia, 
codigoPais = (x.codigoPais==null)?-1:(int)x.codigoPais 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribirdireccion(Dto.direccion dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.direccionGuardar 
( 
dto.id, 
dto.latitud, 
dto.longitud, 
dto.manzana, 
dto.solar, 
dto.apto, 
dto.numero, 
dto.codigoCalle, 
dto.codigoCalleEsquina, 
dto.localidad, 
dto.codigoCiudad, 
dto.codigoProvincia, 
dto.codigoPais 
) 
; 
          result.resultado = data.FirstOrDefault().resultado; 
          result.mensaje = data.FirstOrDefault().mensaje; 
      } 
  return result; 
}catch(Exception ex){throw new PersistenciaException(ex.Message);} 
} 
 
}} 
