using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class Pais{ 
 
public List<Dto.Pais> LeerPais(Dto.Pais dto){ 
try { 
    List<Dto.Pais> LDto=new List<Dto.Pais>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.PaisLeer 
( 
dto.id, 
dto.nombre 
) 
 
.Select(x => new Dto.Pais{ 
id = (x.id==null)?-1:(int)x.id, 
nombre = (x.nombre==null)?"":(String)x.nombre 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado EscribirPais(Dto.Pais dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.PaisGuardar 
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
