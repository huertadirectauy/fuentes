using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class productoProductor{ 
 
public List<Dto.productoProductor> LeerproductoProductor(Dto.productoProductor dto){ 
try { 
return (new Persistencia.productoProductor()).LeerproductoProductor(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado EscribirproductoProductor(Dto.productoProductor dto){ 
try { 
return (new Persistencia.productoProductor()).EscribirproductoProductor(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
