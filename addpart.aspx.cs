using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MorphleInventorymanagementSystem
{
    public partial class addpart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=localhost\\MSSQLSERVER01;Initial Catalog=MorphleInventoryManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
            GridView1.DataBind();
        }
        void BindData()
        {
            SqlCommand command = new SqlCommand("select * from BOM", con);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into BOM values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();
            GridView1.DataBind();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"UPDATE [dbo].[BOM]
                 SET[Part_Discription] = '" + TextBox2.Text + "',[Part_Number] = '" + TextBox1.Text + "',[Category] = '" + DropDownList1.Text + "',[C240] = '" + TextBox3.Text + "',[Optimus] = '" + TextBox4.Text + "',[H1] = '" + TextBox5.Text + "',[H6] = '" + TextBox6.Text + "',[indexscanner] = '" + TextBox7.Text + "',[Brain] = '" + TextBox8.Text + "' WHERE [Part_Discription] = '" + TextBox2.Text + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();
            GridView1.DataBind();
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[BOM] WHERE [Part_Discription] = '" + TextBox2.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataBind();
            GridView1.DataBind();
        }

        protected void chk_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from BOM where Part_Number='" + TextBox1.Text + "'", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                Response.Write("<script>alert('Error, Please update or delete the using Data or Delete option as there Exists the same Part Number!!')</script>");
            }
            else
            {
                Response.Write("<scipt>alert('Proceed')</script>");
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            
        }

        protected void search_Click1(object sender, EventArgs e)
        {
            Response.Redirect("searchBOM.aspx");
        }

        protected void uploadfromexcel_Click(object sender, EventArgs e)
        {
            Response.Redirect("bulkuploadbomdata.aspx");
        }
    }
}