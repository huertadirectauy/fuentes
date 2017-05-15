using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;


namespace Persona.Controllers{ 
public class PersonaController:ApiController{ 
 
public Dto.Resultado EscribirPersona(Dto.Persona dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.Persona logica = new Logica.Persona(); 
resultado=logica.EscribirPersona(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.Persona> LeerPersona(Dto.Persona dto){
            Logica.Persona logica = new Logica.Persona();
            List<Dto.Persona> resultado;
try { 
resultado=logica.LeerPersona(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
