using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class provincia{ 
 
public List<Dto.provincia> Leerprovincia(Dto.provincia dto){ 
try { 
return (new Persistencia.provincia()).Leerprovincia(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirprovincia(Dto.provincia dto){ 
try { 
return (new Persistencia.provincia()).Escribirprovincia(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
