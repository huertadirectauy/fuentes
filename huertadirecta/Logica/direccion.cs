using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class direccion{ 
 
public List<Dto.direccion> Leerdireccion(Dto.direccion dto){ 
try { 
return (new Persistencia.direccion()).Leerdireccion(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirdireccion(Dto.direccion dto){ 
try { 
return (new Persistencia.direccion()).Escribirdireccion(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
