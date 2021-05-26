using Consulta_con_Grilla.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Consulta_con_Grilla
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<Establecimiento> lista = new List<Establecimiento>();

            Establecimiento establecimiento = new Establecimiento
            {
                Nombre = "Margarita Eventos",
                Direccion = "25 de Mayo 1563",
                FechaApertura = DateTime.Now.AddDays(-365)
            };

            lista.Add(establecimiento);

            lista.Add(new Establecimiento { Nombre = "Club del Sol", Direccion = "Arroyo Bajo 110", FechaApertura = DateTime.Now.AddDays(5) });

            Application["Establecimientos"] = lista;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}