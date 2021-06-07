using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.Class
{
    public class Medicines:Diseases
    {
        public string nameMedicament { get; set; }
        public string medicamentCode { get; set; }
        public string Ingredients { get; set; }
        public string Laboratory { get; set; }
    }
}