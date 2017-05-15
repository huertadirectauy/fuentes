using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace direccion.Controllers{ 
public class direccionController:ApiController{ 
 
public Dto.Resultado Escribirdireccion(Dto.direccion dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.direccion logica = new Logica.direccion(); 
    resultado=logica.Escribirdireccion(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.direccion> LeerDireccion(Dto.direccion dto){
            Logica.direccion logica = new Logica.direccion();
            List<Dto.direccion> resultado;
try { 
    resultado=logica.Leerdireccion(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
