using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace moneda.Controllers{ 
public class monedaController:ApiController{ 
 
public Dto.Resultado EscribirMoneda(Dto.moneda dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
Logica.moneda logica = new Logica.moneda(); 
    resultado=logica.Escribirmoneda(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.moneda> Escribirmoneda(Dto.moneda dto){
            Logica.moneda logica = new Logica.moneda();
            List<Dto.moneda> resultado;
try { 
resultado=logica.Leermoneda(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
