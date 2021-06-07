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
    public partial class ScheduleAppointments : System.Web.UI.Page
    {
        static List<Schedule> schedules = new List<Schedule>();

        string scheduleFile = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            scheduleFile = Server.MapPath("Agenda.json");
            if( validateFiles() )
            {
                using( StreamReader rd = new StreamReader( scheduleFile ))
                {
                    schedules = JsonConvert.DeserializeObject<List<Schedule>>(rd.ReadToEnd());
                    GridView1.DataSource = schedules;
                    GridView1.DataBind();
                }
                if( schedules == null )
                {
                    schedules = new List<Schedule>();
                }
            }
            else
            {
                File.Create(scheduleFile);
            }

            Label5.Visible = false;
            Calendar2.Visible = false;
            ButtonSave.Visible = false;
        }

        protected bool validateFiles()
        {
            return File.Exists(scheduleFile);
        }

        protected void saveAll()
        {
            using( StreamWriter sr = new StreamWriter( scheduleFile ))
            {
                sr.Write(JsonConvert.SerializeObject(schedules));
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Schedule s = schedules.Find(z => z.Date == Calendar1.SelectedDate);

            Schedule sc = new Schedule();
            sc.nit = TextBox1.Text;
            sc.Date = Calendar1.SelectedDate;
            sc.startTime = TextBox2.Text;
            sc.endTime = TextBox3.Text;

            schedules.Add(sc);
            saveAll();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            int ed = GridView1.SelectedIndex;
            Label5.Visible = true;
            Calendar2.Visible = true;
            ButtonSave.Visible = true;

            Calendar2.SelectedDate = schedules[ed].Date;
        }

        protected void ButtonDelet_Click(object sender, EventArgs e)
        {
            int ed = GridView1.SelectedIndex;
            schedules[ed].Date.ToString().Remove(ed);
            saveAll();
            GridView1.DataSource = schedules[ed].Date;
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            int ed = GridView1.SelectedIndex;
            schedules[ed].Date = Calendar2.SelectedDate;
            saveAll();

            GridView1.DataSource = schedules[ed].Date;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int a = GridView1.SelectedIndex;
            GridView1.DataSource = schedules;
            GridView1.DataBind();
        }
    }
}