using System;
using System.Collections.Generic;
using Excepciones;

namespace Logica
{
    public class maestros
    {

        public List<Dto.claveValor> Zonas()
        {
            try
            {
                return (new Persistencia.maestros()).Zonas();
            }
            catch (Exception ex) { throw new LogicaException(ex.Message); }
        }

    }
}
