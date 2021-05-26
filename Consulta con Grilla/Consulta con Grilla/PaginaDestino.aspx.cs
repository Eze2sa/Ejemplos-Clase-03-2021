using Consulta_con_Grilla.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consulta_con_Grilla
{
    public partial class PaginaDestino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Establecimiento est = (Establecimiento)Cache["Establecimiento"];

                txtNombreEstablecimiento.Text = est.Nombre;
            }
        }
    }
}