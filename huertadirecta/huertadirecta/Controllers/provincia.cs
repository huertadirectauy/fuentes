using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;


namespace provincia.Controllers{ 
public class provinciaController:ApiController{ 
 
public Dto.Resultado Escribirprovincia(Dto.provincia dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.provincia logica = new Logica.provincia(); 
resultado=logica.Escribirprovincia(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.provincia> LeerProvincia(Dto.provincia dto){
            Logica.provincia logica = new Logica.provincia();
            List<Dto.provincia> resultado;
try { 
resultado=logica.Leerprovincia(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
