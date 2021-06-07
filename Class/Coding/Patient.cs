using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.Class
{
    public class Patient:NIT
    {
        public string Name { get; set; }
        public string lastName { get; set; }
        public string Address { get; set; }
        public int CellPhone { get; set; }
        public DateTime dateNaci { get; set; }
    }
}