using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace life_insurance
{
    public partial class WebForm4 : System.Web.UI.Page
    {

      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con1 = new SqlConnection("uid=sa;password=123;database=Bharat4;server=VDILEWVPNTH520");
                fillgrid();
            }
          

        }
        private void fillgrid()
        {
            SqlConnection con1 = new SqlConnection("uid=sa;password=123;database=Bharat4;server=VDILEWVPNTH520");

            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM productdetails", con1);
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Productimage"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection("Initial catalog=Bharat4; integrated security=true;server=VDILEWVPNTH520");
            Response.Write(e.RowIndex);
            string pid = GridView1.Rows[e.RowIndex].Cells[2].Text;


            cmd.CommandText = "delete from productdetails where producttitle= '" + GridView1.SelectedRow + "'";

            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            fillgrid();
           

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            SqlConnection con1 = new SqlConnection("Initial catalog=Bharat4; integrated security=true;server=VDILEWVPNTH520");
            SqlCommand cmd = new SqlCommand();
            string producttitle = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.Trim();
            string productdescription = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();
            //Prepare Sql Update Command 
            string strSqlCommand = "Update productdetails Set producttitle='" + producttitle + "', productdescription='" + productdescription + "' Where producttitle='" + producttitle + " '";
            con1.Open();
            cmd = new SqlCommand(strSqlCommand, con1);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("Employee Data Updated Successfully!!!");
                GridView1.EditIndex = -1; //Refresh GridView 
                this.fillgrid();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            {
                int n = e.NewEditIndex;
                GridView1.EditIndex = n;
                this.fillgrid();
            }

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
         
        }
    }
}