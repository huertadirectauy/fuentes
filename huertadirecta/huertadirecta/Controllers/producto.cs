using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace producto.Controllers{ 
public class productoController:ApiController{

        public List<Dto.producto> listaProductos(Dto.productoFiltro filtro)
        {
            List<Dto.producto> resultado = new List<Dto.producto>();
            try
            {
                Logica.producto logica = new Logica.producto();
                resultado = logica.listaProductos(filtro);
            }
            catch (Exception ex) { return null; }
            return resultado;
        }

public Dto.Resultado EscribirProducto(Dto.producto dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try { 
Logica.producto logica = new Logica.producto(); 
resultado=logica.Escribirproducto(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
} 
 /*
public List<Dto.producto> LeerProducto(Dto.producto dto){
            Logica.producto logica = new Logica.producto();
            List<Dto.producto> resultado;
try { 
resultado=logica.Leerproducto(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 */
} 
} 
