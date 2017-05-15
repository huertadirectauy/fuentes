Using Logica; 
using System.Web.Mvc; 
namespace productoProductor.Controllers{ 
public class productoProductorController:: ApiController{ 
 
public ActionResult LeerproductoProductor(DtoproductoProductor dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
productoProductor logica = new productoProductor; 
Dto.Resultado resultado=logica.EscribirproductoProductor(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult EscribirproductoProductor(DtoproductoProductor dto){ 
productoProductor logica = new productoProductor; 
try { 
Dto.productoProductor resultado=logica.LeerproductoProductor(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
