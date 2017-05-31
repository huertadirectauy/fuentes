using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace producto.Controllers{ 
public class productoController:ApiController{
        
        public List<Dto.filaTabla> listaProductos(Dto.productoFiltro filtro)
        {
            List<Dto.producto> resultado = new List<Dto.producto>();
            List<Dto.filaTabla> tabla = new List<Dto.filaTabla>();
            Dto.filaTabla fila;

            try
            {
                Logica.producto logica = new Logica.producto();
                resultado = logica.listaProductos(filtro);

                foreach (var prod in resultado)
                {
                    fila = new Dto.filaTabla();
                    fila.id = prod.id;
                    fila.imagen = "/Content/default.jpg";//prod.imagenes[0].ToString(); //base 64, como convferir en js ?
                    fila.descripcion1 = prod.nombre;
                    fila.descripcion2 = prod.nombreProductor;
                    fila.descripcion3 = string.Format("{0} {1} X {2}", prod.moneda, prod.precio, prod.tipoUnidad);
                    tabla.Add(fila);
                }
            }
            catch (Exception ex) { return null; }
            return tabla;
        }

        public Dto.producto obtenerProducto(int id)
        {
            Dto.producto producto = new Dto.producto();

            try
            {
                Logica.producto logica = new Logica.producto();
                producto = logica.obtenerProducto(id);
            }
            catch (Exception ex) { return null; }
            return producto;
        }

        [System.Web.Http.HttpPost]
        public string subirImagen()
        {
            System.Web.HttpFileCollection hfc = System.Web.HttpContext.Current.Request.Files;

            byte[] fileData = null;
            using (var binaryReader = new System.IO.BinaryReader(hfc[0].InputStream))
            {
                fileData = binaryReader.ReadBytes(hfc[0].ContentLength);
            }

            return "subio";
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
