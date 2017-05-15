using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace tipoUnidad.Controllers{ 
public class tipoUnidadController:ApiController{ 
 
public Dto.Resultado EscribirTipoUnidad(Dto.tipoUnidad dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.tipoUnidad logica = new Logica.tipoUnidad(); 
resultado=logica.EscribirtipoUnidad(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.tipoUnidad> LeerTipoUnidad(Dto.tipoUnidad dto){
            Logica.tipoUnidad logica = new Logica.tipoUnidad();
            List<Dto.tipoUnidad> resultado;
try { 
resultado=logica.LeertipoUnidad(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
