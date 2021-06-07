using Newtonsoft.Json;
using Project_Final.Class;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Final
{
    public partial class MedicalConsultation : System.Web.UI.Page
    {
        static List<patientHistory> histories = new List<patientHistory>();

        string historyFile = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            historyFile = Server.MapPath("Historial Pacientes.json");
            if (validateFiles())
            {
                using (StreamReader rd = new StreamReader(historyFile))
                {
                    histories = JsonConvert.DeserializeObject<List<patientHistory>>(rd.ReadToEnd());
                }
                if (histories == null)
                {
                    histories = new List<patientHistory>();
                }
            }
            else
            {
                File.Create(historyFile);
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {

        }
    }
}