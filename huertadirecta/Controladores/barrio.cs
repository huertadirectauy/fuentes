Using Logica; 
using System.Web.Mvc; 
namespace barrio.Controllers{ 
public class barrioController:: ApiController{ 
 
public ActionResult Leerbarrio(Dtobarrio dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
barrio logica = new barrio; 
Dto.Resultado resultado=logica.Escribirbarrio(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirbarrio(Dtobarrio dto){ 
barrio logica = new barrio; 
try { 
Dto.barrio resultado=logica.Leerbarrio(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
