using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class pedidoDetalle{ 
 
public List<Dto.pedidoDetalle> LeerpedidoDetalle(Dto.pedidoDetalle dto){ 
try { 
    List<Dto.pedidoDetalle> LDto=new List<Dto.pedidoDetalle>(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        LDto = objectContext.pedidoDetalleLeer 
( 
dto.idPedido, 
dto.idItem, 
dto.idProducto, 
dto.idProductor 
) 
 
.Select(x => new Dto.pedidoDetalle{ 
idPedido = (x.idPedido==null)?-1:(int)x.idPedido, 
idItem = (x.idItem==null)?-1:(int)x.idItem, 
idProducto = (x.idProducto==null)?-1:(int)x.idProducto, 
idProductor = (x.idProductor==null)?-1:(int)x.idProductor 
 
            }).ToList(); 
} 
return LDto; 
}catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
} 
 
public Dto.Resultado EscribirpedidoDetalle(Dto.pedidoDetalle dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.pedidoDetalleGuardar 
( 
dto.idPedido, 
dto.idItem, 
dto.idProducto, 
dto.idProductor 
) 
; 
          result.resultado = data.FirstOrDefault().resultado; 
          result.mensaje = data.FirstOrDefault().mensaje; 
      } 
  return result; 
}catch(Exception ex){throw new PersistenciaException(ex.Message);} 
} 
 
}} 
