using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class pedido{ 
 
public List<Dto.pedido> Leerpedido(Dto.pedido dto){ 
try { 
return (new Persistencia.pedido()).Leerpedido(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirpedido(Dto.pedido dto){ 
try { 
return (new Persistencia.pedido()).Escribirpedido(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
