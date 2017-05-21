using System;
using System.Collections.Generic;

namespace Dto { 
    public class producto{  
        public int id { get; set; } 
        public int idCategoria { get; set; } 
        public string nombre { get; set; } 
        public string descripcion { get; set; }
        public decimal precio { get; set; }
        public int codigoMoneda { get; set; }
        public string moneda { get; set; }
        public int condigoTipoUnidad { get; set; }
        public string tipoUnidad { get; set; }
        public string nombreProductor { get; set; }
        public List<byte[]> imagenes { get; set; }
    } 
} 
