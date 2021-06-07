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
    public partial class Administrative : System.Web.UI.Page
    {
        static List<Patient> patients = new List<Patient>();

        string filePatient = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            filePatient = Server.MapPath("Pacientes.json");
            if( validateFiles() )
            {
                using( StreamReader rd = new StreamReader(filePatient) )
                {
                    patients = JsonConvert.DeserializeObject<List<Patient>>(rd.ReadToEnd());
                    GridView1.DataSource = patients;
                    GridView1.DataBind();
                }
                if( patients == null )
                {
                    patients = new List<Patient>();
                }
            }
            else
            {
                File.Create(filePatient);
            }

            Label7.Visible = false;
            TextBox1.Visible = false;
            ButtonSave.Visible = false;
        }

        protected bool validateFiles()
        {
            return File.Exists(filePatient);
        }

        protected void saveAll()
        {
            using( StreamWriter sr = new StreamWriter( filePatient ) )
            {
                sr.Write(JsonConvert.SerializeObject(patients));
            }
        }

        protected void ButtonAddPatien_Click(object sender, EventArgs e)
        {
            Patient p = patients.Find(y => y.Address == TextAddress.Text);

            Patient pa = new Patient();
            pa.Name = TextName.Text;
            pa.lastName = TextLastName.Text;
            pa.Address = TextAddress.Text;
            pa.CellPhone = int.Parse(TextCel.Text);
            pa.dateNaci = Calendar1.SelectedDate;
            pa.nit = TextNIT.Text;

            patients.Add(pa);
            saveAll();

            TextName.Text = "";
            TextLastName.Text = "";
            TextAddress.Text = "";
            TextCel.Text = "";
            TextNIT.Text = "";
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            int edit = GridView1.SelectedIndex;
            Label7.Visible = true;
            TextBox1.Visible = true;
            ButtonSave.Visible = true;

            TextBox1.Text = patients[edit].nit;
        }

        protected void ButtonDelet_Click(object sender, EventArgs e)
        {
            int edit = GridView1.SelectedIndex;
            patients[edit].nit.Remove(edit);
            saveAll();
            GridView1.DataSource = patients[edit].nit;
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            int edit = GridView1.SelectedIndex;
            patients[edit].nit = TextBox1.Text;
            saveAll();

            GridView1.DataSource = patients[edit].nit;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int a = GridView1.SelectedIndex;
            GridView1.DataSource = patients;
            GridView1.DataBind();
        }
    }
}