using Newtonsoft.Json;
using Project_Final.Class.Login_and_Logout;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using BC = BCrypt.Net.BCrypt;


namespace Project_Final
{
    public partial class LogIn : System.Web.UI.Page
    {
        static List<User> users = new List<User>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string file = Server.MapPath("../Usuario.json");
            if (File.Exists(file))
            {
                StreamReader rd = File.OpenText(file);
                string json = rd.ReadToEnd();
                rd.Close();
                users = JsonConvert.DeserializeObject<List<User>>(json);
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            User user = new User();
            user = users.Find(x => x.userName == Login1.UserName);
            bool validatePassword = BC.Verify(Login1.Password, user.Password);

            if( validatePassword )
            {
                int level = user.Level;
                FormsAuthenticationTicket tkt;
                string cookiestr;
                HttpCookie ck;

                tkt = new FormsAuthenticationTicket(1, Login1.UserName, DateTime.Now,
                DateTime.Now.AddMinutes(20), Login1.RememberMeSet, level.ToString());
                cookiestr = FormsAuthentication.Encrypt(tkt);
                ck = new HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);

                if (Login1.RememberMeSet)
                    ck.Expires = tkt.Expiration;
                ck.Path = FormsAuthentication.FormsCookiePath;
                Response.Cookies.Add(ck);
                string strRedirect;
                strRedirect = Request["ReturnUrl"];
                if (strRedirect == null)
                    if (user.Level == 1)
                        strRedirect = "../MedicalConsultation.aspx";
                if (user.Level == 2)
                    strRedirect = "../Medicaments.aspx";
                Response.Redirect(strRedirect, true);
            }
            else
            {
                Response.Redirect("Login.aspx", true);
            }
        }
    }
}