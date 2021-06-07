using Newtonsoft.Json;
using Project_Final.Class;
using Project_Final.Class.Coding;
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
            historyFile = Server.MapPath("HistorialPacientes.json");
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

        protected bool validateFiles()
        {
            return File.Exists(historyFile);
        }

        protected void saveAll()
        {
            using (StreamWriter sr = new StreamWriter(historyFile))
            {
                sr.Write(JsonConvert.SerializeObject(histories));
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            patientHistory ph = new patientHistory();
            ph.nit = TextBoxNit.Text;
            ph.dateConsultation = Calendar1.SelectedDate;
            ph.consultationTime = TextBoxHour.Text;
            ph.Temperature = TextBoxTempe.Text;
            ph.Presion = TextBoxPretion.Text;
            ph.Symptoms = TextBoxSinto.Text;
            ph.Diagnosis = TextBoxDiag.Text;
            ph.Tratamiento = TextBoxTrata.Text;
            ph.Prescription = TextBoxReceta.Text;
            ph.nextAppointment = Calendar2.SelectedDate;
            ph.Price = double.Parse(TextBoxPrice.Text);

            histories.Add(ph);
            saveAll();

            TextBoxNit.Text = "";
            TextBoxHour.Text = "";
            TextBoxTempe.Text = "";
            TextBoxPretion.Text = "";
            TextBoxSinto.Text = "";
            TextBoxDiag.Text = "";
            TextBoxTrata.Text = "";
            TextBoxReceta.Text = "";
            TextBoxPrice.Text = "";
        }
    }
}