using Newtonsoft.Json;
using Project_Final.Class;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Final.Administrative_module
{
    public partial class Medicaments : System.Web.UI.Page
    {
        static List<Medicines> medicines = new List<Medicines>();

        string medicamentFile = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            medicamentFile = Server.MapPath("Medicamentos.json");

            if (validateFiles())
            {
                using (StreamReader rd = new StreamReader(medicamentFile))
                {
                    medicines = JsonConvert.DeserializeObject<List<Medicines>>(rd.ReadToEnd());
                    GridView1.DataSource = medicines;
                    GridView1.DataBind();
                }
                if (medicines == null)
                {
                    medicines = new List<Medicines>();
                }
            }
            else
            {
                File.Create(medicamentFile);
            }

            Label5.Visible = false;
            TextChange.Visible = false;
            ButtonSave.Visible = false;
        }

        protected bool validateFiles()
        {
            return File.Exists(medicamentFile);
        }

        protected void saveAll()
        {
            using (StreamWriter sr = new StreamWriter(medicamentFile))
            {
                sr.Write(JsonConvert.SerializeObject(medicines));
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Medicines m = medicines.Find(x => x.nameMedicament == TextMedicament.Text);

            Medicines me = new Medicines();
            me.nameMedicament = TextMedicament.Text;
            me.medicamentCode = TextCode.Text;
            me.Ingredients = TextIngre.Text;
            me.Laboratory = TextLaboratory.Text;
            me.diseases = CheckBoxList1.SelectedValue;

            medicines.Add(me);
            saveAll();

            TextMedicament.Text = "";
            TextCode.Text = "";
            TextIngre.Text = "";
            TextLaboratory.Text = "";
            CheckBoxList1.ClearSelection();
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            int ed = GridView1.SelectedIndex;
            Label6.Visible = true;
            TextChange.Visible = true;
            ButtonSave.Visible = true;

            TextChange.Text = medicines[ed].nameMedicament;
        }

        protected void ButtonDelet_Click(object sender, EventArgs e)
        {
            int ed = GridView1.SelectedIndex;
            medicines[ed].nameMedicament.Remove(ed);
            saveAll();
            GridView1.DataSource = medicines[ed].nameMedicament;
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            int ed = GridView1.SelectedIndex;
            medicines[ed].nameMedicament = TextChange.Text;
            saveAll();

            GridView1.DataSource = medicines[ed].nameMedicament;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int a = GridView1.SelectedIndex;
            GridView1.DataSource = medicines;
            GridView1.DataBind();
        }
    }
}