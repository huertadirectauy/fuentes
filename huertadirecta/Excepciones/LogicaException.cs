namespace Excepciones 
{ 
public class LogicaException : System.Exception 
{ 
public string resultado { get; set; } 
public LogicaException() : base("Error persistencia."){} 
public LogicaException(string Mensaje) : base(Mensaje){} 
} 
} 
