using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class calle{ 
 
public List<Dto.calle> Leercalle(Dto.calle dto){ 
try { 
    List<Dto.calle> LDto=new List<Dto.calle>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.calleLeer 
( 
dto.id, 
dto.idCiudad, 
dto.nombre 
) 
 
.Select(x => new Dto.calle{ 
id = (x.id==null)?-1:(int)x.id, 
idCiudad = (x.idCiudad==null)?-1:(int)x.idCiudad, 
nombre = (x.nombre==null)?"":(String)x.nombre 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribircalle(Dto.calle dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.calleGuardar 
( 
dto.id, 
dto.idCiudad, 
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
