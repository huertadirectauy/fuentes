using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class categoria{ 
 
public List<Dto.categoria> Leercategoria(Dto.categoria dto){ 
try { 
    List<Dto.categoria> LDto=new List<Dto.categoria>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.categoriaLeer 
( 
dto.id, 
dto.nombre 
) 
 
.Select(x => new Dto.categoria{ 
id = (x.id==null)?-1:(int)x.id, 
nombre = (x.nombre==null)?"":(String)x.nombre 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribircategoria(Dto.categoria dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.categoriaGuardar 
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
