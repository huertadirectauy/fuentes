using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class Producto{

    public List<Dto.producto> listaProductos(Dto.productoFiltro filtro)        {

        List<Dto.producto> LDto = new List<Dto.producto>();

        try{
             using (var objectContext = new HuertaDirectaEntities()){
                    LDto = objectContext.listadoProductos(filtro.idCategoria, 
                        filtro.nombre, 
                        filtro.idProductor,
                        filtro.idZona,
                        filtro.idPuntoVenta).Select(x => new Dto.producto()
                    {
                        id = x.id,
                        idCategoria = x.idCategoria,
                        nombre = (x.nombre == null) ? "" : (String)x.nombre,
                        descripcion = (x.descripcion == null) ? "" : (String)x.descripcion,
                        precio = (x.precio == null) ? 0 : (decimal)x.precio,
                        codigoMoneda = (x.codigoMoneda == null) ? -1 : (int)x.codigoMoneda,
                        moneda = x.moneda,
                        condigoTipoUnidad = (x.codigoTipoUnidad == null) ? -1 : (int)x.codigoTipoUnidad,
                        tipoUnidad = x.textoTipoUnidad,
                        nombreProductor = x.nombreProductor,
                        imagenes = crearListaImagenes(x.imagen)
                        }).ToList(); 
            } 
        return LDto;
        } catch (Exception ex) { throw new PersistenciaException(ex.Message); }
    }

        private List<byte[]> crearListaImagenes(byte[] img)
        {
            List<byte[]> imgs = new List<byte[]>();

            imgs.Add(img);

            return imgs;
        }
         
public Dto.Resultado Escribirproducto(Dto.producto dto){ 
try { 
    Dto.Resultado result=new Dto.Resultado(); 
    using (var objectContext = new HuertaDirectaEntities()) { 
        var data = objectContext.productoGuardar 
( 
dto.id, 
dto.idCategoria, 
dto.nombre, 
dto.descripcion 
) 
; 
          result.resultado = data.FirstOrDefault().resultado; 
          result.mensaje = data.FirstOrDefault().mensaje; 
      } 
  return result; 
}catch(Exception ex){throw new PersistenciaException(ex.Message);} 
} 
 
}} 
