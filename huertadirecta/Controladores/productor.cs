Using Logica; 
using System.Web.Mvc; 
namespace productor.Controllers{ 
public class productorController:: ApiController{ 
 
public ActionResult Leerproductor(Dtoproductor dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
productor logica = new productor; 
Dto.Resultado resultado=logica.Escribirproductor(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribirproductor(Dtoproductor dto){ 
productor logica = new productor; 
try { 
Dto.productor resultado=logica.Leerproductor(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
