using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace barrio.Controllers{ 
public class barrioController:ApiController{ 
 
public Dto.Resultado Leerbarrio(Dto.barrio dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
Logica.barrio logica = new Logica.barrio(); 
resultado=logica.Escribirbarrio(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.barrio> Escribirbarrio(Dto.barrio dto){
            Logica.barrio logica = new Logica.barrio();
            List<Dto.barrio> resultado;

    try { 
        resultado=logica.Leerbarrio(dto); 
    }catch(Exception ex){resultado=null;} 
    return resultado; 
    } 
 
} 

} 
