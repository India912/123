using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scar_Life_Insurance
{
    public partial class UserLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = scarLife; server =VDILEWVPNTH514"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("SELECT COUNT(1) FROM RegistrationForm WHERE UserID='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "' ", sqlCon);


                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {

                    // HttpCookie Cookies = new HttpCookie("username");
                    // Cookies.Value = TextBox1.Text;
                    // Cookies.Expires = DateTime.Now.AddHours(1);
                    //  Response.Cookies.Add(Cookies);

                     Response.Redirect("Registration Page.aspx");

                }
                else
                {
                     Label4.Text = "Incorrect Details";
                }
            }

        }
    }
}