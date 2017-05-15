using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace productor.Controllers{ 
public class productorController:ApiController{ 
 
public Dto.Resultado EscribirProductor(Dto.productor dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.productor logica = new Logica.productor(); 
resultado=logica.Escribirproductor(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.productor> LeerProductor(Dto.productor dto){
            Logica.productor logica = new Logica.productor();
            List<Dto.productor> resultado;
try { 
resultado=logica.Leerproductor(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
