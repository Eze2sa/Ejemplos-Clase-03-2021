using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRequest
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtInfo.Text = Convert.ToString(Request.Cookies["MiPrimerCookie"]["MiPrimerValor"]);
        }
    }
}