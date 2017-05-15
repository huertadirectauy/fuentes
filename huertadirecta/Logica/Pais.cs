using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class Pais{ 
 
public List<Dto.Pais> LeerPais(Dto.Pais dto){ 
try { 
return (new Persistencia.Pais()).LeerPais(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado EscribirPais(Dto.Pais dto){ 
try { 
return (new Persistencia.Pais()).EscribirPais(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
