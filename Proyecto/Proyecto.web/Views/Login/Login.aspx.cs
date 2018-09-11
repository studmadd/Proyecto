using System;

namespace Proyecto.web.Views.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Crtl + K + C Comenta 
            //if(!IsPostBack)
            //ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Buen trabajo!', 'Proceso realizado con exito!', 'success')</script>");
            //Crtl + K + U Descomenta
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
         {
            try{
                string stMensaje = string.Empty;
                if (string.IsNullOrEmpty(txtEmail.Text)) stMensaje += "Ingrese email,";
                if (string.IsNullOrEmpty(txtPassword.Text)) stMensaje += "Ingrese Contraseña,";

                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));


                //Defino objeto con propiedades
                Logica.Models.clsUsuarios obclsUsuarios = new Logica.Models.clsUsuarios
                {
                    stLogin= txtEmail.Text,
                    stPassword = txtPassword.Text
                };

                //instacion controlador
                Controllers.LoginController obLoginController = new Controllers.LoginController();
                bool blBandera = obLoginController.getValidarUsuarioController(obclsUsuarios);

                if (blBandera)
                    Response.Redirect("../Index/Index.aspx");//redirecciono
                else
                    throw new Exception("Usuario o Password Incorrectos");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error!', '"+ ex.Message+ "!', 'error')</script>");
            }
        }
    }
}