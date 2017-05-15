using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class calle{ 
 
public List<Dto.calle> Leercalle(Dto.calle dto){ 
try { 
return (new Persistencia.calle()).Leercalle(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribircalle(Dto.calle dto){ 
try { 
return (new Persistencia.calle()).Escribircalle(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
