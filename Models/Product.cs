using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApp1.Models
{
   internal class Product
    {
      public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal UnitPrice { get; set; }
        public short UnitInStock { get; set; }
        public bool Discontinued { get; set; }
        public int CategoryId { get; set; }
        public short UnitsInStock { get; internal set; }
    }
}
