Using Logica; 
using System.Web.Mvc; 
namespace direccion.Controllers{ 
public class direccionController:: ApiController{ 
 
public ActionResult Leerdireccion(Dtodireccion dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
direccion logica = new direccion; 
Dto.Resultado resultado=logica.Escribirdireccion(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirdireccion(Dtodireccion dto){ 
direccion logica = new direccion; 
try { 
Dto.direccion resultado=logica.Leerdireccion(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
