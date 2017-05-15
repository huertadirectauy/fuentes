using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class productor{ 
 
public List<Dto.productor> Leerproductor(Dto.productor dto){ 
try { 
    List<Dto.productor> LDto=new List<Dto.productor>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.productorLeer 
( 
dto.id, 
dto.idPersona, 
dto.nombreFantasia, 
dto.descripcion 
) 
 
.Select(x => new Dto.productor{ 
id = (x.id==null)?-1:(int)x.id, 
idPersona = (x.idPersona==null)?-1:(int)x.idPersona, 
nombreFantasia = (x.nombreFantasia==null)?"":(String)x.nombreFantasia, 
descripcion = (x.descripcion==null)?"":(String)x.descripcion 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribirproductor(Dto.productor dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.productorGuardar 
( 
dto.id, 
dto.idPersona, 
dto.nombreFantasia, 
dto.descripcion 
) 
; 
          result.resultado = data.FirstOrDefault().resultado; 
          result.mensaje = data.FirstOrDefault().mensaje; 
      } 
  return result; 
}catch(Exception ex){throw new PersistenciaException(ex.Message);} 
} 
 
}} 
