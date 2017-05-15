using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;


namespace Usuario.Controllers{ 
    public class UsuarioController:ApiController{ 
 
        public Dto.Resultado LeerUsuario(Dto.Usuario dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
                Logica.Usuario logica = new Logica.Usuario(); 
resultado=logica.EscribirUsuario(dto); 
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
return resultado; 
}

        [System.Web.Http.HttpGet]
        public string prueba()
        {
            return "hola";
        }

        //[System.Web.Http.Route("api/Usuario/Login")]
        [System.Web.Http.HttpPost]
        public Dto.Resultado Login(Dto.Login usuario)
        {
            Dto.Resultado resultado = new Dto.Resultado();
            try
            {
                Logica.Usuario logica = new Logica.Usuario();
                resultado = logica.Login(usuario);
            }
            catch (Exception ex) { resultado.resultado = 0; resultado.mensaje = ex.Message; }
            return resultado;
        }

        public List<Dto.Usuario> EscribirUsuario(Dto.Usuario dto){
            Logica.Usuario logica = new Logica.Usuario();
            List<Dto.Usuario> resultado;
try { 
resultado=logica.LeerUsuario(dto); 
}catch(Exception ex){resultado=null;} 
return resultado; 
} 
 
    } 
} 
