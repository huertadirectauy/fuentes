using System; 
using System.Collections.Generic; 
using Persistencia.Modelo; 
using System.Data.Entity.Core.Objects; 
using System.Linq; 
using Excepciones; 
namespace Persistencia { 
public class imagen{
        /*
       public List<Dto.imagen> Leerimagen(Dto.imagen dto){ 
       try { 
           List<Dto.imagen> LDto=new List<Dto.imagen>(); 
           using (var objectContext = new HuertaDirectaEntities()) { 
               LDto = objectContext.imagenLeer 
       ( 
       dto.id, 
       dto.imag 
       ) 

       .Select(x => new Dto.imagen{ 
       id = (x.id==null)?-1:(int)x.id, 
       imag = (x.imagen==null)?"":(String)x.imagen 

                   }).ToList(); 
       } 
       return LDto; 
       }catch(Exception ex){throw (new PersistenciaException(ex.Message));} 
       } 

       public Dto.Resultado Escribirimagen(Dto.imagen dto){ 
       try { 
           Dto.Resultado result=new Dto.Resultado(); 
           using (var objectContext = new HuertaDirectaEntities()) { 
               var data = objectContext.imagenGuardar 
       ( 
       dto.id, 
       dto.imag
       ) 
       ; 
                 result.resultado = data.FirstOrDefault().resultado; 
                 result.mensaje = data.FirstOrDefault().mensaje; 
             } 
         return result; 
       }catch(Exception ex){throw new PersistenciaException(ex.Message);} 
       } 
        */
    }
} 
