﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealership.Models
{
    public class MakeModel
    {
        public int MakeModelId { get; set; }
        // change for foreign ids
        public string Model { get; set; }
        public string Make { get; set; }
    }
}