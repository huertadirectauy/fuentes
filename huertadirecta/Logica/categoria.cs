using System; 
using System.Collections.Generic; 
using Excepciones;
 
namespace Logica { 
public class categoria{ 
 
public List<Dto.categoria> Leercategoria(Dto.categoria dto){ 
try { 
return (new Persistencia.categoria()).Leercategoria(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
public Dto.Resultado Escribircategoria(Dto.categoria dto){ 
try { 
return (new Persistencia.categoria()).Escribircategoria(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
