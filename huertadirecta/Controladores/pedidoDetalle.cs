Using Logica; 
using System.Web.Mvc; 
namespace pedidoDetalle.Controllers{ 
public class pedidoDetalleController:: ApiController{ 
 
public ActionResult LeerpedidoDetalle(DtopedidoDetalle dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
pedidoDetalle logica = new pedidoDetalle; 
Dto.Resultado resultado=logica.EscribirpedidoDetalle(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult EscribirpedidoDetalle(DtopedidoDetalle dto){ 
pedidoDetalle logica = new pedidoDetalle; 
try { 
Dto.pedidoDetalle resultado=logica.LeerpedidoDetalle(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
