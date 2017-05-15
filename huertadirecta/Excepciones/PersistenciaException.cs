namespace Excepciones 
{ 
public class PersistenciaException : System.Exception 
{ 
public string resultado { get; set; } 
public PersistenciaException() : base("Error persistencia."){} 
public PersistenciaException(string Mensaje) : base(Mensaje){} 
} 
} 
