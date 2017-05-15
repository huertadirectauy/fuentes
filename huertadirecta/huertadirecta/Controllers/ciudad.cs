using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace ciudad.Controllers{ 
public class ciudadController:ApiController{ 
 
public Dto.Resultado EscribirCiudad(Dto.ciudad dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
Logica.ciudad logica = new Logica.ciudad(); 
resultado=logica.Escribirciudad(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.ciudad> LeerCiudad(Dto.ciudad dto){
            Logica.ciudad logica = new Logica.ciudad();
            List<Dto.ciudad> resultado;
try { 
resultado=logica.Leerciudad(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
