using LoginRequest.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRequest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AutenticarLogin(object sender, AuthenticateEventArgs e)
        {
            Usuario usuario = new Usuario { User = IDControlLogin.UserName, Contraseña = IDControlLogin.Password };

            List<Usuario> credenciales = (List<Usuario>)Application["Credenciales"];

            foreach (Usuario credencial in credenciales)
            {
                if (credencial.User.Equals(usuario.User) && credencial.Contraseña.Equals(usuario.Contraseña))
                {
                    Response.Cookies["MiPrimerCookie"]["MiPrimerValor"] = "Mi info 1";
                    Response.Cookies["MiPrimerCookie"]["MiSegundoValor"] = "Mi info 2";

                    HttpCookie cookie = new HttpCookie("micookie", "valor");

                    Response.Cookies.Add(cookie);

                    Response.Redirect("Consulta.aspx");
                }
            }
        }
        }
}