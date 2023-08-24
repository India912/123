using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scar_Life_Insurance
{
    public partial class SubProduct : System.Web.UI.Page
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
                    SqlConnection con = new SqlConnection("uid=sa;password=123;database=scarLife;server=VDILEWVPNTH514");
                    con.Open();



                    SqlCommand cmd = new SqlCommand("sp_subcategory", con);
                    /*MessageBox.Show(cmd.CommandText);
                            */



                    cmd.CommandType = CommandType.StoredProcedure;





                    cmd.Parameters.AddWithValue("@InsuranceCategory", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@SubProductType", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@SubProductDescription", TextBox3.Text);

                    cmd.Parameters.AddWithValue("@SubProductimage", bytes);




                    Label6.Text = "" + TextBox1.Text + " Inserted Sucessfully";





                    int i = cmd.ExecuteNonQuery();
                    con.Close();
                }
                }
            }
        }
    }
