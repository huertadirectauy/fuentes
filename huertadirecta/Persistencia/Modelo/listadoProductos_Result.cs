//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Persistencia.Modelo
{
    using System;
    
    public partial class listadoProductos_Result
    {
        public int id { get; set; }
        public int idCategoria { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public Nullable<decimal> precio { get; set; }
        public Nullable<int> codigoMoneda { get; set; }
        public string moneda { get; set; }
        public Nullable<int> codigoTipoUnidad { get; set; }
        public string textoTipoUnidad { get; set; }
        public string nombreProductor { get; set; }
        public byte[] imagen { get; set; }
    }
}