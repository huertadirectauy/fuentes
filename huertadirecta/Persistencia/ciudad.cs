using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class ciudad{ 
 
public List<Dto.ciudad> Leerciudad(Dto.ciudad dto){ 
try { 
    List<Dto.ciudad> LDto=new List<Dto.ciudad>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.ciudadLeer 
( 
dto.id, 
dto.idLocalidad, 
dto.nombre 
) 
 
.Select(x => new Dto.ciudad{ 
id = (x.id==null)?-1:(int)x.id, 
idLocalidad = (x.idLocalidad==null)?-1:(int)x.idLocalidad, 
nombre = (x.nombre==null)?"":(String)x.nombre 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribirciudad(Dto.ciudad dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.ciudadGuardar 
( 
dto.id, 
dto.idLocalidad, 
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
