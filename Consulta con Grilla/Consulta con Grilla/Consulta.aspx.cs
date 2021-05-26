using Consulta_con_Grilla.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consulta_con_Grilla
{
    public partial class Consulta : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Consultar(Object sender, EventArgs e)
        {
            List<Establecimiento> lista = (List<Establecimiento>)Application["Establecimientos"];

            List<Establecimiento> gridData = new List<Establecimiento>();

            foreach (Establecimiento est in lista)
            {
                bool incluir = true;

                if (!string.IsNullOrEmpty(txtNombre.Text)) {
                    if (!est.Nombre.Equals(txtNombre.Text))
                    {
                        incluir = false;
                    }
                }

                if (!string.IsNullOrEmpty(txtDireccion.Text))
                {
                    if (!est.Direccion.Equals(txtDireccion.Text))
                    {
                        incluir = false;
                    }
                }

                if (est.FechaApertura <= calFechaApertura.SelectedDate)
                    {
                        incluir = false;
                    }

                if (incluir)
                {
                    gridData.Add(est);
                }
            }

            GridViewConsulta.DataSource = gridData;
            GridViewConsulta.DataBind();

            foreach (GridViewRow row in GridViewConsulta.Rows)
            {
                //If contacto des/habilitado -> setear imagen acorde para indicar des/habilitacion al apretar
                ImageButton columnaImagen = (ImageButton)row.FindControl("ActivarContacto");
                columnaImagen.ImageUrl = "Images/anular.png";
            }
        }

        protected void ActivarContacto(Object sender, EventArgs e)
        { 
            //Acceso al botón
            ImageButton boton = (ImageButton)sender;

            //Acceso a la row de la grilla que dispara el evento
            GridViewRow row = (GridViewRow)boton.DataItemContainer;

            //If contacto des/habilitado -> des/habilitar impactando en memoria/base y cambiar imagen
            //Como setear la imagen del botón
            boton.ImageUrl = "Images/play_pause.png";
        }


        protected void GridViewConsulta_RowCommand(Object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Accion1":
                    //Obtenemos el índice del registro seleccionado
                    int indiceBuscar = Convert.ToInt32(e.CommandArgument);
                    //Obtenemos la fila del registro
                    GridViewRow rowBuscar = GridViewConsulta.Rows[indiceBuscar];

                    GridViewConsulta_Accion1(rowBuscar);
                    break;
            }
        }

        protected void GridViewConsulta_Accion1(GridViewRow row)
        {
            Establecimiento est = new Establecimiento { Nombre = row.Cells[2].Text, Direccion = row.Cells[3].Text};

            Cache["Establecimiento"] = est;

            Response.Redirect("PaginaDestino.aspx");
        }
    }
}