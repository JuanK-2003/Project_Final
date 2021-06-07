using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.Class
{
    public class patientHistory:NIT
    {
        public DateTime dateConsultation { get; set; }
        public string consultationTime { get; set; }
        public string Temperature { get; set; }
        public string Presion { get; set; }
        public string Symptoms { get; set; }
        public string Diagnosis { get; set; }
        public string Prescription { get; set; }
        public DateTime nextAppointment { get; set; }
        public double Price { get; set; }
    }
}