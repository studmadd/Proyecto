using System;

namespace Proyecto.web.Controllers
{
    public class LoginController
    {

        /// <summary>
        /// Valida usuario
        /// </summary>
        /// <param name="obclsUsuarios">objeto usuario</param>
        /// <returns>confirmacion </returns>
        public bool getValidarUsuarioController(Logica.Models.clsUsuarios obclsUsuarios)
        {
            try
            {
                Logica.BL.clsUsuarios obclsUsuario = new Logica.BL.clsUsuarios();
                return obclsUsuario.getValidarUsuario(obclsUsuarios);
            }
            catch (Exception ex) { throw ex; }
        }
    }
}