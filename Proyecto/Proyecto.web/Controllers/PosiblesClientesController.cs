using System;
using System.Data;

namespace Proyecto.web.Controllers
{
    public class PosiblesClientesController
    {
        /// <summary>
        /// Obtiene registros posibles clientes 
        /// </summary>
        /// <returns>data posibles clientes</returns>
        public DataSet getConsultarPosiblesClientesController()
        {
            try
            {
                Logica.BL.clsPosiblesClientes obclsPosiblesClientes = new Logica.BL.clsPosiblesClientes();
                return obclsPosiblesClientes.getConsultarPosiblesClientes();
            }
            catch (Exception ex) { throw ex; }
        }


        /// <summary>
        /// Administra posbiles clientes
        /// </summary>
        /// <param name="obclsPosiblesClientesModels">objeto</param>
        /// <param name="inOpcion">opcion ejecucion</param>
        /// <returns>mensaje proceso</returns>
        public string setAdministrarPosiblesClientesControllet(Logica.Models.clsPosiblesClientes obclsPosiblesClientesModels, int inOpcion)

        {
            try
            {
                Logica.BL.clsPosiblesClientes obclsPosiblesClientes = new Logica.BL.clsPosiblesClientes();
                return obclsPosiblesClientes.setAdministrarPosiblesClientes(obclsPosiblesClientesModels, inOpcion);
            }
            catch (Exception ex) { throw ex; }
        }
    }
}