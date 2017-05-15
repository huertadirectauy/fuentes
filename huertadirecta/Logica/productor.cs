using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class productor{ 
 
public List<Dto.productor> Leerproductor(Dto.productor dto){ 
try { 
return (new Persistencia.productor()).Leerproductor(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirproductor(Dto.productor dto){ 
try { 
return (new Persistencia.productor()).Escribirproductor(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
