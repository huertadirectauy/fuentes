Using Logica; 
using System.Web.Mvc; 
namespace Usuario.Controllers{ 
public class UsuarioController:: ApiController{ 
 
public ActionResult LeerUsuario(DtoUsuario dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
Usuario logica = new Usuario; 
Dto.Resultado resultado=logica.EscribirUsuario(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult EscribirUsuario(DtoUsuario dto){ 
Usuario logica = new Usuario; 
try { 
Dto.Usuario resultado=logica.LeerUsuario(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
