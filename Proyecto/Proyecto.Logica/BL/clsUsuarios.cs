using System;

using System.Data;
using System.Data.SqlClient;
namespace Proyecto.Logica.BL
{
    public class clsUsuarios
    {
        SqlConnection _SqlConnection=null; //Abrir comunicacion con Base de datos
        SqlCommand _SqlCommand = null; // Ejecutar comandos sql
        SqlDataAdapter _SqlDataAdapter = null; //Adaptar conjunto de datos sql
        string stConexion = string.Empty; // cadena de conexion

        public clsUsuarios()
        {
            clsConexion obcConexion = new clsConexion();
            stConexion = obcConexion.getConexion();
        }

        /// <summary>
        /// Validar usuario 
        /// </summary>
        /// <param name="obclsUsuarios">Objeto usuario</param>
        /// <returns>Confirmacion</returns>
        public bool getValidarUsuario(Models.clsUsuarios obclsUsuarios)
        {
            try
            {
                DataSet dsConsulta = new DataSet();

                _SqlConnection = new SqlConnection(stConexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("spConsultarUsuario", _SqlConnection);

                _SqlCommand.CommandType = CommandType.StoredProcedure;

                _SqlCommand.Parameters.Add(new SqlParameter("@cLogin", obclsUsuarios.stLogin));
                _SqlCommand.Parameters.Add(new SqlParameter("@cPassword", obclsUsuarios.stPassword));

                _SqlCommand.ExecuteNonQuery();

                _SqlDataAdapter = new SqlDataAdapter(_SqlCommand);
                _SqlDataAdapter.Fill(dsConsulta);

                if (dsConsulta.Tables[0].Rows.Count > 0) return true;
                else return false;
            }
            catch (Exception ex) { throw ex;}
            finally { _SqlConnection.Close(); }
        }
    }
}
