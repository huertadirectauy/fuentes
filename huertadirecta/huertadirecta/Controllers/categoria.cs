using Logica;
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace categoria.Controllers{ 
public class categoriaController:ApiController
    { 
 
public Dto.Resultado EscribirCategoria(Dto.categoria dto){ 
Dto.Resultado resultado=new Dto.Resultado(); 
try {
        Logica.categoria logica = new Logica.categoria(); 
        resultado=logica.Escribircategoria(dto);
}catch(Exception ex){resultado.resultado=0;resultado.mensaje=ex.Message;} 
    return resultado; 
} 
 
public List<Dto.categoria> ELeerCategoria(Dto.categoria dto){
            Logica.categoria logica = new Logica.categoria();
            List<Dto.categoria> resultado;
    try { 
        resultado=logica.Leercategoria(dto); 
    }catch(Exception ex){resultado=null;} 
    return resultado; 
    }  
} 

} 
