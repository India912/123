using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scar_Life_Insurance
{
    public partial class Registration_page : System.Web.UI.Page
    { static string gender=string.Empty;
        static string marital = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RadioButton1.Checked==true && RadioButton2.Checked == false)
            {
                gender = "Male";
            }
            else
            {
                gender = "female";
            }

            if (RadioButton3.Checked == true && RadioButton4.Checked == false)
            {
               marital = "Married";
            }
            else
            {
                marital = "Unmarried";
            }

            SqlConnection con = new SqlConnection("Initial catalog=scarLife; integrated security=true;server=VDILEWVPNTH514");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into RegistrationForm values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + gender + "','" + marital + "','" + TextBox5.Text + "','" + TextBox6.Text + "'," + TextBox7.Text + ",'" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "'," + TextBox8.Text + "," + TextBox9.Text +  ",'" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "')", con);
            Label20.Text = cmd.CommandText;
            int i = cmd.ExecuteNonQuery();
            Label20.Text = " Record inserted successfully";
        }
    }
}