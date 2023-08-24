using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace life_insurance
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    SqlConnection con = new SqlConnection("uid=sa;password=123;database=Bharat4;server=VDILEWVPNTH520");
                    con.Open();

                    SqlCommand cmd = new SqlCommand("sp_insert", con);
                    /*MessageBox.Show(cmd.CommandText);
                            */

                    cmd.CommandType = CommandType.StoredProcedure;


                    cmd.Parameters.AddWithValue("@Producttitle", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Productdescription", TextBox2.Text);
                    
                    cmd.Parameters.AddWithValue("@Productimage", bytes);
                    

                    Label5.Text = "" + TextBox1.Text + " Inserted Sucessfully";


                    int i = cmd.ExecuteNonQuery();
                    con.Close();
                   

                }

            }
        }
    }
}
