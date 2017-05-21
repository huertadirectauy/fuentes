using System; 
using System.Collections.Generic; 
using Excepciones; 

namespace Logica { 
public class producto{

        public List<Dto.producto> listaProductos(Dto.productoFiltro filtro)
        { 
            try { 
                return (new Persistencia.Producto()).listaProductos(filtro); 
                }catch(Exception ex){throw new LogicaException(ex.Message);} 
        } 
 
public Dto.Resultado Escribirproducto(Dto.producto dto){ 
try { 
return (new Persistencia.Producto()).Escribirproducto(dto); 
}catch(Exception ex){throw new LogicaException(ex.Message);} 
} 
 
} 
} 
