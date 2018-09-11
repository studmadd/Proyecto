using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.web.Views.Registrar
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;
                if (string.IsNullOrEmpty(txtnombre1.Text)) stMensaje += "Ingrese su primer nombre,";
                if (string.IsNullOrEmpty(txtEmail.Text)) stMensaje += " Ingrese Email,";
                if (string.IsNullOrEmpty(txtcontraseña1.Text)) stMensaje += " Ingrese Contraseña,";
                if (string.IsNullOrEmpty(txtcontraseña2.Text)) stMensaje += " Confirme la Contraseña,";
                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));
                if (txtcontraseña1.Text == txtcontraseña2.Text) {
                    ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Buen trabajo!', 'Proceso realizado con exito!', 'success')</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error!', 'Contraseñas no coinciden!', 'error')</script>");
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error!', '" + ex.Message + "!', 'error')</script>");
            }
           

        }
    }
}