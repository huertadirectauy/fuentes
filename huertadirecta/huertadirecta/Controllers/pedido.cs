using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace pedido.Controllers{ 
public class pedidoController:ApiController{ 
 
public Dto.Resultado EscribirPedido(Dto.pedido dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.pedido logica = new Logica.pedido(); 
resultado=logica.Escribirpedido(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.pedido> LeerPedido(Dto.pedido dto){
            Logica.pedido logica = new Logica.pedido();
            List<Dto.pedido> resultado;
try { 
resultado=logica.Leerpedido(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
