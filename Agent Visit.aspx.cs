using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace life_insurance
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Trusted_Connection=Yes;database=Bharat4;server=VDILEWVPNTH520");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into sendinformation values('" + TextBox1.Text + "','" +
            TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" +  DropDownList1.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
           }
        }
    }
