using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class Persona{ 
 
public List<Dto.Persona> LeerPersona(Dto.Persona dto){ 
try { 
return (new Persistencia.Persona()).LeerPersona(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado EscribirPersona(Dto.Persona dto){ 
try { 
return (new Persistencia.Persona()).EscribirPersona(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
