Using Logica; 
using System.Web.Mvc; 
namespace imagen.Controllers{ 
public class imagenController:: ApiController{ 
 
public ActionResult Leerimagen(Dtoimagen dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
imagen logica = new imagen; 
Dto.Resultado resultado=logica.Escribirimagen(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirimagen(Dtoimagen dto){ 
imagen logica = new imagen; 
try { 
Dto.imagen resultado=logica.Leerimagen(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
