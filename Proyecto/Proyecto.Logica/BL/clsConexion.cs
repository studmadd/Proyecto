using System;
using System.Configuration;
namespace Proyecto.Logica.BL
{
    public class clsConexion
    {
        /// <summary>
        /// Obtiene conexion a base de datos 
        /// </summary>
        /// <returns>Cadena de conexion</returns>
        public String getConexion() {
            return ConfigurationManager.ConnectionStrings["Cnx"].ToString();
        }
    }
}
