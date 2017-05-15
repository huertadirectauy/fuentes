using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class producto{ 
 
public List<Dto.producto> Leerproducto(Dto.producto dto){ 
try { 
    List<Dto.producto> LDto=new List<Dto.producto>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.productoLeer 
( 
dto.id, 
dto.idCategoria, 
dto.nombre, 
dto.descripcion 
) 
 
.Select(x => new Dto.producto{ 
id = (x.id==null)?-1:(int)x.id, 
idCategoria = (x.idCategoria==null)?-1:(int)x.idCategoria, 
nombre = (x.nombre==null)?"":(String)x.nombre, 
descripcion = (x.descripcion==null)?"":(String)x.descripcion 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribirproducto(Dto.producto dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.productoGuardar 
( 
dto.id, 
dto.idCategoria, 
dto.nombre, 
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
