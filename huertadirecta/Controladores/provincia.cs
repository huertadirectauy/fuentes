Using Logica; 
using System.Web.Mvc; 
namespace provincia.Controllers{ 
public class provinciaController:: ApiController{ 
 
public ActionResult Leerprovincia(Dtoprovincia dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
provincia logica = new provincia; 
Dto.Resultado resultado=logica.Escribirprovincia(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirprovincia(Dtoprovincia dto){ 
provincia logica = new provincia; 
try { 
Dto.provincia resultado=logica.Leerprovincia(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
