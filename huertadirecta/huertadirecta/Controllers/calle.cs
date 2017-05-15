using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace calle.Controllers{ 
public class calleController:ApiController{ 
 
public Dto.Resultado EscribirCalle(Dto.calle dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
        Logica.calle logica = new Logica.calle(); 
        resultado=logica.Escribircalle(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.calle> LeerCalle(Dto.calle dto){
            Logica.calle logica = new Logica.calle();
            List<Dto.calle> resultado;
try { 
    resultado=logica.Leercalle(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
