using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Consulta_con_Grilla.Objects
{
    public class Establecimiento
    {
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public DateTime FechaApertura { get; set; }

        public Establecimiento()
        {

        }
    }
}