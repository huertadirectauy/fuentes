Using Logica; 
using System.Web.Mvc; 
namespace Persona.Controllers{ 
public class PersonaController:: ApiController{ 
 
public ActionResult LeerPersona(DtoPersona dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
Persona logica = new Persona; 
Dto.Resultado resultado=logica.EscribirPersona(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult EscribirPersona(DtoPersona dto){ 
Persona logica = new Persona; 
try { 
Dto.Persona resultado=logica.LeerPersona(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
