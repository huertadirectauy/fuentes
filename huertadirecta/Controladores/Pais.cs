Using Logica; 
using System.Web.Mvc; 
namespace Pais.Controllers{ 
public class PaisController:: ApiController{ 
 
public ActionResult LeerPais(DtoPais dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
Pais logica = new Pais; 
Dto.Resultado resultado=logica.EscribirPais(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult EscribirPais(DtoPais dto){ 
Pais logica = new Pais; 
try { 
Dto.Pais resultado=logica.LeerPais(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
