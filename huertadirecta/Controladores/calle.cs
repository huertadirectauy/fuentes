Using Logica; 
using System.Web.Mvc; 
namespace calle.Controllers{ 
public class calleController:: ApiController{ 
 
public ActionResult Leercalle(Dtocalle dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
calle logica = new calle; 
Dto.Resultado resultado=logica.Escribircalle(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribircalle(Dtocalle dto){ 
calle logica = new calle; 
try { 
Dto.calle resultado=logica.Leercalle(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
