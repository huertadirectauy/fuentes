using System; 
using System.Collections.Generic; 
using Excepciones; 

namespace Logica { 
public class tipoUnidad{ 
 
public List<Dto.tipoUnidad> LeertipoUnidad(Dto.tipoUnidad dto){ 
try { 
return (new Persistencia.tipoUnidad()).LeertipoUnidad(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado EscribirtipoUnidad(Dto.tipoUnidad dto){ 
try { 
return (new Persistencia.tipoUnidad()).EscribirtipoUnidad(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
