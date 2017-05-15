using System; 
using System.Collections.Generic; 
using Excepciones; 
namespace Logica { 
public class producto{ 
 
public List<Dto.producto> Leerproducto(Dto.producto dto){ 
try { 
return (new Persistencia.producto()).Leerproducto(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribirproducto(Dto.producto dto){ 
try { 
return (new Persistencia.producto()).Escribirproducto(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
