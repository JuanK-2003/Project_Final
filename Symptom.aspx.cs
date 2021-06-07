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

namespace Project_Final.Administrative_module
{
    public partial class Symptoms : System.Web.UI.Page
    {
        static List<Symptom> symptoms = new List<Symptom>();

        string sympFile = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            sympFile = Server.MapPath("Sintomas.json");
            if (validateFiles())
            {
                using (StreamReader rd = new StreamReader(sympFile))
                {
                    symptoms = JsonConvert.DeserializeObject<List<Symptom>>(rd.ReadToEnd());
                    GridView1.DataSource = symptoms;
                    GridView1.DataBind();
                }
                if (symptoms == null)
                {
                    symptoms = new List<Symptom>();
                }
            }
            else
            {
                File.Create(sympFile);
            }

            Label3.Visible = false;
            TextBox3.Visible = false;
            ButtonSave.Visible = false;
        }

        protected bool validateFiles()
        {
            return File.Exists(sympFile);
        }

        protected void saveAll()
        {
            using (StreamWriter sr = new StreamWriter(sympFile))
            {
                sr.Write(JsonConvert.SerializeObject(symptoms));
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Symptom s = symptoms.Find(h => h.symptomDescription == TextBox2.Text);

            Symptom sy = new Symptom();
            sy.symptomCode = TextBox1.Text;
            sy.symptomDescription = TextBox2.Text;

            symptoms.Add(sy);
            saveAll();

            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            int edit = GridView1.SelectedIndex;
            Label3.Visible = true;
            TextBox3.Visible = true;
            ButtonSave.Visible = true;

            TextBox3.Text = symptoms[edit].symptomDescription;
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            int edit = GridView1.SelectedIndex;
            symptoms[edit].symptomDescription.Remove(edit);
            saveAll();
            GridView1.DataSource = symptoms[edit].symptomDescription;
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            int edit = GridView1.SelectedIndex;
            symptoms[edit].symptomDescription = TextBox3.Text;
            saveAll();

            GridView1.DataSource = symptoms[edit].symptomDescription;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int a = GridView1.SelectedIndex;
            GridView1.DataSource = symptoms;
            GridView1.DataBind();
        }
    }
}