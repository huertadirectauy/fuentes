using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class pedidoDetalle{ 
 
public List<Dto.pedidoDetalle> LeerpedidoDetalle(Dto.pedidoDetalle dto){ 
try { 
return (new Persistencia.pedidoDetalle()).LeerpedidoDetalle(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado EscribirpedidoDetalle(Dto.pedidoDetalle dto){ 
try { 
return (new Persistencia.pedidoDetalle()).EscribirpedidoDetalle(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
