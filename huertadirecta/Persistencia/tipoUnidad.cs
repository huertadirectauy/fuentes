using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class tipoUnidad{ 
 
public List<Dto.tipoUnidad> LeertipoUnidad(Dto.tipoUnidad dto){ 
try { 
    List<Dto.tipoUnidad> LDto=new List<Dto.tipoUnidad>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.tipoUnidadLeer 
( 
dto.id, 
dto.nombre 
) 
 
.Select(x => new Dto.tipoUnidad{ 
id = (x.id==null)?-1:(int)x.id, 
nombre = (x.nombre==null)?"":(String)x.nombre 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado EscribirtipoUnidad(Dto.tipoUnidad dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.tipoUnidadGuardar 
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
