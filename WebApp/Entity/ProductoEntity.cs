using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class ProductoEntity
    {
        public ProductoEntity()
        {
        }

        public int? IdProducto { get; set; }
        public string NombreProducto { get; set; }
        public Decimal PrecioProducto { get; set; }
    }
}
