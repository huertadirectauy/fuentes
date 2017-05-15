using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class moneda{ 
 
public List<Dto.moneda> Leermoneda(Dto.moneda dto){ 
try { 
return (new Persistencia.moneda()).Leermoneda(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirmoneda(Dto.moneda dto){ 
try { 
return (new Persistencia.moneda()).Escribirmoneda(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
