using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace imagen.Controllers{ 
public class imagenController:ApiController{ 
 
public Dto.Resultado Leerimagen(Dto.imagen dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.imagen logica = new Logica.imagen(); 
    resultado=logica.Escribirimagen(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.imagen> LeerImagen(Dto.imagen dto){
            Logica.imagen logica = new Logica.imagen();
            List<Dto.imagen> resultado;
try { 
    resultado=logica.Leerimagen(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
