using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurante.App_Code.DTO
{
    public class ClsProductos
    {
        public string nombre { get; set; }
        public int idTipoProduc { get; set; }
        public decimal precio { get; set; }
        public string descripcion { get; set; }
        public string imagen { get; set; }
    }
}