Using Logica; 
using System.Web.Mvc; 
namespace tipoUnidad.Controllers{ 
public class tipoUnidadController:: ApiController{ 
 
public ActionResult LeertipoUnidad(DtotipoUnidad dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
tipoUnidad logica = new tipoUnidad; 
Dto.Resultado resultado=logica.EscribirtipoUnidad(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult EscribirtipoUnidad(DtotipoUnidad dto){ 
tipoUnidad logica = new tipoUnidad; 
try { 
Dto.tipoUnidad resultado=logica.LeertipoUnidad(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
