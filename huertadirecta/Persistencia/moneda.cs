using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class moneda{ 
 
public List<Dto.moneda> Leermoneda(Dto.moneda dto){ 
try { 
    List<Dto.moneda> LDto=new List<Dto.moneda>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.monedaLeer 
( 
dto.id, 
dto.nombre 
) 
 
.Select(x => new Dto.moneda{ 
id = (x.id==null)?-1:(int)x.id, 
nombre = (x.nombre==null)?"":(String)x.nombre 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribirmoneda(Dto.moneda dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.monedaGuardar 
( 
dto.id, 
dto.nombre 
) 
; 
          result.resultado = data.FirstOrDefault().resultado; 
          result.mensaje = data.FirstOrDefault().mensaje; 
      } 
  return result; 
}catch(Exception ex){throw new PersistenciaException(ex.Message);} 
} 
 
}} 
