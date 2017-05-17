using System;

namespace Dto { 
    public class Persona{ 
 
        public int id { get; set; } 
        public string primerNombre { get; set; } 
        public string segundoNombre { get; set; } 
        public string primerApellido { get; set; } 
        public string segundoApellido { get; set; } 
        public int tipoDocumento { get; set; } 
        public string numeroDocumento { get; set; } 
        public string email { get; set; } 
        public string telefonoFijo { get; set; } 
        public string telefonoMovil { get; set; } 
        public DateTime fechaAlta { get; set; } 
        public DateTime fechaBaja { get; set; } 
        public int estado { get; set; } 
        public int calificacion { get; set; } 
        public DateTime fechaNacimiento { get; set; }
        public Usuario usuario { get; set; }

    } 
} 
