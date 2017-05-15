Using Logica; 
using System.Web.Mvc; 
namespace ciudad.Controllers{ 
public class ciudadController:: ApiController{ 
 
public ActionResult Leerciudad(Dtociudad dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
ciudad logica = new ciudad; 
Dto.Resultado resultado=logica.Escribirciudad(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirciudad(Dtociudad dto){ 
ciudad logica = new ciudad; 
try { 
Dto.ciudad resultado=logica.Leerciudad(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
