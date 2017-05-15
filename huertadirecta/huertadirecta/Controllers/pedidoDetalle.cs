using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;


namespace pedidoDetalle.Controllers{ 
public class pedidoDetalleController:ApiController{ 
 
public Dto.Resultado LeerpedidoDetalle(Dto.pedidoDetalle dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.pedidoDetalle logica = new Logica.pedidoDetalle(); 
resultado=logica.EscribirpedidoDetalle(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 
public List<Dto.pedidoDetalle> EscribirpedidoDetalle(Dto.pedidoDetalle dto){
            Logica.pedidoDetalle logica = new Logica.pedidoDetalle();
            List<Dto.pedidoDetalle> resultado;
try { 
resultado=logica.LeerpedidoDetalle(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
} 
} 
