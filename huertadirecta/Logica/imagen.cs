using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class imagen{ 
 
public List<Dto.imagen> Leerimagen(Dto.imagen dto){ 
try { 
return (new Persistencia.imagen()).Leerimagen(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirimagen(Dto.imagen dto){ 
try { 
return (new Persistencia.imagen()).Escribirimagen(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
