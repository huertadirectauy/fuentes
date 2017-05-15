using System; 
using System.Collections.Generic; 
using Excepciones; 

namespace Logica { 
public class Usuario{

        public Dto.Resultado Login(Dto.Login dto)
        {
            try
            {
                return (new Persistencia.Usuario()).Login(dto);
            }
            catch (Exception ex) { throw new LogicaException(ex.Message); }
        }

        public List<Dto.Usuario> LeerUsuario(Dto.Usuario dto){ 
            try { 
                return (new Persistencia.Usuario()).LeerUsuario(dto); 
            }catch(Exception ex){throw new LogicaException(ex.Message);} 
        } 
 
        public Dto.Resultado EscribirUsuario(Dto.Usuario dto){ 
            try { 
                return (new Persistencia.Usuario()).EscribirUsuario(dto); 
            }catch(Exception ex){throw new LogicaException(ex.Message);} 
        } 
 
} 
} 
