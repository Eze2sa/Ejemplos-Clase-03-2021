using LoginRequest.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace LoginRequest
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<Usuario> listCredenciales = new List<Usuario>();
            listCredenciales.Add(new Usuario() { User = "Ezequiel", Contraseña = "11221" });
            listCredenciales.Add(new Usuario() { User = "Juan", Contraseña = "2311" });

            Application["Credenciales"] = listCredenciales;
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