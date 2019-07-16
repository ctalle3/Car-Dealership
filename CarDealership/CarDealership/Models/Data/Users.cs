using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealership.Models
{
    public class Users
    {
        public int UserId { get; set; }
        public string UserRole { get; set; }
        public string EmployeeName { get; set; }
        public bool IsDisabled { get; set; }
        public string UserEmailAddress { get; set; }
        public string UserPassword { get; set; }
    }
}