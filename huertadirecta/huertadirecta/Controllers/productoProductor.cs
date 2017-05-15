using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;


namespace productoProductor.Controllers{ 
public class productoProductorController:ApiController{ 
 
public Dto.Resultado EscribirroductoProductor(Dto.productoProductor dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
Logica.productoProductor logica = new Logica.productoProductor(); 
resultado=logica.EscribirproductoProductor(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.productoProductor> LeerroductoProductor(Dto.productoProductor dto){
            Logica.productoProductor logica = new Logica.productoProductor();
            List<Dto.productoProductor> resultado;
try { 
 resultado=logica.LeerproductoProductor(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
