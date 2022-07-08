using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace MorphleInventorymanagementSystem
{
    public partial class inspection : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=localhost\\MSSQLSERVER01;Initial Catalog=MorphleInventoryManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
            
        }
        void BindData()
        {
            SqlCommand command = new SqlCommand("select Part_Number,Part_Discription,Category,[Qty Received],[Qty QC Done],[Qty QC Pending] from ReceivePart where [Qty QC Pending]>40", con);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void chk_CheckedChanged(object sender, EventArgs e)
        {
        
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            TextBox1.Text = row.Cells[0].Text;
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from QCList where [Part Number]='" + TextBox1.Text + "'", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                
            }
            else
            {
                Response.Write("<scipt>alert('Proceed')</script>");
            }
        }
    }
}