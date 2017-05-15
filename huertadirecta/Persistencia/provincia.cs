using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class provincia{ 
 
public List<Dto.provincia> Leerprovincia(Dto.provincia dto){ 
try { 
    List<Dto.provincia> LDto=new List<Dto.provincia>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.provinciaLeer 
( 
dto.id, 
dto.idPais, 
dto.nombre 
) 
 
.Select(x => new Dto.provincia{ 
id = (x.id==null)?-1:(int)x.id, 
idPais = (x.idPais==null)?-1:(int)x.idPais, 
nombre = (x.nombre==null)?"":(String)x.nombre 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribirprovincia(Dto.provincia dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.provinciaGuardar 
( 
dto.id, 
dto.idPais, 
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
