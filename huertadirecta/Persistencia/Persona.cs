using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class Persona{ 
 
public List<Dto.Persona> LeerPersona(Dto.Persona dto){ 
try { 
    List<Dto.Persona> LDto=new List<Dto.Persona>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.PersonaLeer 
( 
dto.id, 
dto.primerNombre, 
dto.segundoNombre, 
dto.primerApellido, 
dto.segundoApellido, 
dto.tipoDocumento, 
dto.numeroDocumento, 
dto.email, 
dto.telefonoFijo, 
dto.telefonoMovil, 
dto.fechaAlta, 
dto.fechaBaja, 
dto.estado, 
dto.calificacion 
) 
 
.Select(x => new Dto.Persona{ 
id = (x.id==null)?-1:(int)x.id, 
primerNombre = (x.primerNombre==null)?"":(String)x.primerNombre, 
segundoNombre = (x.segundoNombre==null)?"":(String)x.segundoNombre, 
primerApellido = (x.primerApellido==null)?"":(String)x.primerApellido, 
segundoApellido = (x.segundoApellido==null)?"":(String)x.segundoApellido, 
tipoDocumento = (x.tipoDocumento==null)?-1:(int)x.tipoDocumento, 
numeroDocumento = (x.numeroDocumento==null)?"":(String)x.numeroDocumento, 
email = (x.email==null)?"":(String)x.email, 
telefonoFijo = (x.telefonoFijo==null)?"":(String)x.telefonoFijo, 
telefonoMovil = (x.telefonoMovil==null)?"":(String)x.telefonoMovil, 
fechaAlta = (x.fechaAlta==null)?DateTime.MinValue:(DateTime)x.fechaAlta, 
fechaBaja = (x.fechaBaja==null)?DateTime.MinValue:(DateTime)x.fechaBaja, 
estado = (x.estado==null)?-1:(int)x.estado, 
calificacion = (x.calificacion==null)?-1:(int)x.calificacion 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado EscribirPersona(Dto.Persona dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.PersonaGuardar 
( 
dto.id, 
dto.primerNombre, 
dto.segundoNombre, 
dto.primerApellido, 
dto.segundoApellido, 
dto.tipoDocumento, 
dto.numeroDocumento, 
dto.email, 
dto.telefonoFijo, 
dto.telefonoMovil, 
dto.fechaAlta, 
dto.fechaBaja, 
dto.estado, 
dto.calificacion 
) 
; 
          result.resultado = data.FirstOrDefault().resultado; 
          result.mensaje = data.FirstOrDefault().mensaje; 
      } 
  return result; 
}catch(Exception ex){throw new PersistenciaException(ex.Message);} 
} 
 
}} 
