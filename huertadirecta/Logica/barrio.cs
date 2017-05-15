using System; 
using System.Collections.Generic; 
using Excepciones; 

namespace Logica { 
public class barrio{ 
 
public List<Dto.barrio> Leerbarrio(Dto.barrio dto){ 
try { 
return (new Persistencia.barrio()).Leerbarrio(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirbarrio(Dto.barrio dto){ 
try { 
return (new Persistencia.barrio()).Escribirbarrio(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
