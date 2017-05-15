using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class ciudad{ 
 
public List<Dto.ciudad> Leerciudad(Dto.ciudad dto){ 
try { 
return (new Persistencia.ciudad()).Leerciudad(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirciudad(Dto.ciudad dto){ 
try { 
return (new Persistencia.ciudad()).Escribirciudad(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
