Using Logica; 
using System.Web.Mvc; 
namespace producto.Controllers{ 
public class productoController:: ApiController{ 
 
public ActionResult Leerproducto(Dtoproducto dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
producto logica = new producto; 
Dto.Resultado resultado=logica.Escribirproducto(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirproducto(Dtoproducto dto){ 
producto logica = new producto; 
try { 
Dto.producto resultado=logica.Leerproducto(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
