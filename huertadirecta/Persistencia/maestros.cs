using System;
using System.Collections.Generic;
using Persistencia.Modelo;
using System.Data.Entity.Core.Objects;
using System.Linq;
using Excepciones;

namespace Persistencia
{
    public class maestros
    {
        public List<Dto.claveValor> Zonas()
        {

            List<Dto.claveValor> LDto = new List<Dto.claveValor>();

            try
            {
                using (var objectContext = new HuertaDirectaEntities())
                {
                    LDto = objectContext.listaZonas().Select(x => new Dto.claveValor()
                        {
                            clave = x.idZona.ToString(),
                            valor = x.nombre
                        }).ToList();
                }
                return LDto;
            }
            catch (Exception ex) { throw new PersistenciaException(ex.Message); }
        }
    }
}
