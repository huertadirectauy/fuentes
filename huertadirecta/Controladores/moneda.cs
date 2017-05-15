Using Logica; 
using System.Web.Mvc; 
namespace moneda.Controllers{ 
public class monedaController:: ApiController{ 
 
public ActionResult Leermoneda(Dtomoneda dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
moneda logica = new moneda; 
Dto.Resultado resultado=logica.Escribirmoneda(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirmoneda(Dtomoneda dto){ 
moneda logica = new moneda; 
try { 
Dto.moneda resultado=logica.Leermoneda(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
