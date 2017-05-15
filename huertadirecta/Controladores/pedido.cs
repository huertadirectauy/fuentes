Using Logica; 
using System.Web.Mvc; 
namespace pedido.Controllers{ 
public class pedidoController:: ApiController{ 
 
public ActionResult Leerpedido(Dtopedido dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
pedido logica = new pedido; 
Dto.Resultado resultado=logica.Escribirpedido(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirpedido(Dtopedido dto){ 
pedido logica = new pedido; 
try { 
Dto.pedido resultado=logica.Leerpedido(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
