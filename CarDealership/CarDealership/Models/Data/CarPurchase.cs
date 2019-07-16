using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealership.Models
{
    public class CarPurchase
    {
        public int CarPurchaseId { get; set; }
        public DateTime PurchaseDate { get; set; }
        public string SalesRep { get; set; }
        public decimal SoldPrice { get; set; }
        public string PurchaseType { get; set; }
    }
}