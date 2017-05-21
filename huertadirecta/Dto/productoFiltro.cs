using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dto
{
    public class productoFiltro
    {
        public int idCategoria { get; set; }
        public string nombre { get; set; }
        public int idProductor { get; set; }
        public int idZona { get; set; }
        public int idPuntoVenta { get; set; }
    }
}
