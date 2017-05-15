using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace Pais.Controllers{ 
public class PaisController:ApiController{ 
 
public Dto.Resultado EscribirPais(Dto.Pais dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.Pais logica = new Logica.Pais(); 
resultado=logica.EscribirPais(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
}    
 
public List<Dto.Pais> LeerPais(Dto.Pais dto){
            Logica.Pais logica = new Logica.Pais();
            List<Dto.Pais> resultado;
try { 
resultado=logica.LeerPais(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
