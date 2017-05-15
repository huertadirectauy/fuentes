using  using System.Text.RegularExpressions; 
namespace Validadores 
{ 
public class Validador 
{ 
public bool validar(string expresion, string valor) { 
Regex Validador = new Regex(ExpresionRegular); 
return Validador.IsMatch(Value); 
} 
} 
public class ExpresionesRegulares 
{ 
public const string Email = "\w +([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"; 
public const string Fecha = "[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}"; 
public const string EnteroPositivo = "[0-9]"; 
public const string Alfabeto = "[a-zA-Z]";  
public const string Alfanumerico = "[a-zA-Z0-9]"; 
public const string Cedula = " ^[0-9]{1,7}\-[0-9]"; 
public const string RUC = " ^[0-9]{12}"; 
public const string AlfabetoConEspacio = "[a-zA-Z \s]"; 
public const string Nombre = "[A-Za-z\s.]{1,30}"; 
public const string Apellido = "[A-Za-z\s.]{1,30}";  
public const string Tarjeta = "[0-9A-Za-z]{1,30}"; 
public const string Mes = "[0-9]{1,2}"; 
private string o = "[0-9]{4}"; 
public const string NombreCompleto = "[A-Za-z\s.]{1,60}"; 
public const string NumeroDocumento = "[A-Za-z0-9]{1,30}"; 
public const string NumeroDocumentoTodos = "[0-9A-Za-z]{6,20}"; 
public const string NumeroPuerta = "[0-9A-Za-z.()]{1,8}"; 
public const string NumeroApto = "[0-9A-Za-z.()/]{1,8}"; 
public const string Telefono = "[0-9A-Za-z.()-]{1,40}"; 
public const string Celular = "[0-9A-Za-z.()-]{1,40}"; 
public const string Cesionarios = "[0-9A-Za-z]{0,500}"; 
public const string Porcentaje = "(^(100(?:\.0{1,2})?))|(?!^0*$)(?!^0*\.0*$)^\d{1,2}(\.\d{1,2})?$"; 
public const string textoLibre = "[0-9A-Za-z]{0,1000}";  
} 
} 
