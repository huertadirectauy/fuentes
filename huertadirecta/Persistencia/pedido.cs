using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class pedido{ 
 
public List<Dto.pedido> Leerpedido(Dto.pedido dto){ 
try { 
    List<Dto.pedido> LDto=new List<Dto.pedido>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.pedidoLeer 
( 
dto.id, 
dto.idPersonaDestinatario, 
dto.moneda, 
dto.monto, 
dto.estado 
) 
 
.Select(x => new Dto.pedido{ 
id = (x.id==null)?-1:(int)x.id, 
idPersonaDestinatario = (x.idPersonaDestinatario==null)?-1:(int)x.idPersonaDestinatario, 
moneda = (x.moneda==null)?-1:(int)x.moneda, 
monto = (x.monto==null)?-1:(Decimal)x.monto, 
estado = (x.estado==null)?-1:(int)x.estado 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado Escribirpedido(Dto.pedido dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.pedidoGuardar 
( 
dto.id, 
dto.idPersonaDestinatario, 
dto.moneda, 
dto.monto, 
dto.estado 
) 
; 
          result.resultado = data.FirstOrDefault().resultado; 
          result.mensaje = data.FirstOrDefault().mensaje; 
      } 
  return result; 
}catch(Exception ex){throw new PersistenciaException(ex.Message);} 
} 
 
}} 
