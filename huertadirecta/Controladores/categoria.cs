Using Logica; 
using System.Web.Mvc; 
namespace categoria.Controllers{ 
public class categoriaController:: ApiController{ 
 
public ActionResult Leercategoria(Dtocategoria dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
categoria logica = new categoria; 
Dto.Resultado resultado=logica.Escribircategoria(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public ActionResult Escribircategoria(Dtocategoria dto){ 
categoria logica = new categoria; 
try { 
Dto.categoria resultado=logica.Leercategoria(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
