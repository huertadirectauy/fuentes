using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
    public class Usuario{

        public Dto.Resultado Login(Dto.Login dto)
        {
            login_Result res;

            try
            {
                using (var objectContext = new HuertaDirectaEntities())
                {
                    objectContext.Database.Connection.ConnectionString = Properties.Settings.Default.HuertaDirectaEntities;//"data source=DESKTOP-9DF4SMC\\SQLEXPRESS;initial catalog=HuertaDirecta;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";
                    res = objectContext.login(dto.usuario, dto.password).FirstOrDefault();
                }

                return (new Dto.Resultado() { resultado = res.resultado, mensaje = res.mensaje });
            }catch(Exception ex){throw (new PersistenciaException(ex.Message));}
        }

        public List<Dto.Usuario> LeerUsuario(Dto.Usuario dto){ 
            try { 
                List<Dto.Usuario> LDto=new List<Dto.Usuario>(); 
                using (var objectContext = new HuertaDirectaEntities()) { 
                    LDto = objectContext.UsuarioLeer 
            ( 
            dto.usuario, 
            dto.password, 
            dto.fechaAlta, 
            dto.estado 
            ).Select(x => new Dto.Usuario{ 
            usuario = (x.usuario==null)?"":(String)x.usuario, 
            password = (x.password==null)?"":(String)x.password, 
            fechaAlta = (x.fechaAlta==null)?DateTime.MinValue:(DateTime)x.fechaAlta, 
            estado = (x.estado==null)?-1:(int)x.estado 
 
                        }).ToList(); 
            } 
            return LDto; 
            }catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
        } 
 
        public Dto.Resultado EscribirUsuario(Dto.Usuario dto){ 
    try { 
        Dto.Resultado result=new Dto.Resultado(); 
        using (var objectContext = new HuertaDirectaEntities()) { 
            var data = objectContext.UsuarioGuardar 
    ( 
    dto.usuario, 
    dto.password, 
    dto.fechaAlta, 
    dto.estado 
    ) 
    ; 
              result.resultado = data.FirstOrDefault().resultado; 
              result.mensaje = data.FirstOrDefault().mensaje; 
          } 
      return result; 
    }catch(Exception ex){throw new PersistenciaException(ex.Message);} 
    } 
 
    }
} 
