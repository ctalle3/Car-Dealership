using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealership.Models
{
    public class Car
    {
        public int CarId { get; set; } 
        public DateTime Year { get; set; }
        public bool IsAutomatic { get; set; }
        public int Mileage { get; set; }
        public string VIN { get; set; }
        public bool IsFeatured { get; set; }
        public bool IsNew { get; set; }
        public decimal MSRP { get; set; }
        public decimal SalePrice { get; set; }
        public string InteriorColor { get; set; }
        public string ExteriorColor { get; set; }
        public string BodyStyle { get; set; }
    }
}