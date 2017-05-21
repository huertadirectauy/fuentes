using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace maestros.Controllers
{
    public class MaestrosController : ApiController
    {
        [System.Web.Http.HttpGet]
        public List<Dto.claveValor> Zonas()
        {
            List<Dto.claveValor> resultado = new List<Dto.claveValor>();
            try
            {
                Logica.maestros logica = new Logica.maestros();
                resultado = logica.Zonas();
            }
            catch (Exception ex) { return null; }
            return resultado;
        }
    }
}
