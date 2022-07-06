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
    public partial class receivepart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=localhost\\MSSQLSERVER01;Initial Catalog=MorphleInventoryManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void fetch_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand("select Part_Number,Part_Discription,Category from BOM where Part_Discription ='" + selectpart.Text + "' ", con);
            SqlDataReader srd = command.ExecuteReader();
            while (srd.Read())
            {
                partnumber.Text = srd.GetValue(0).ToString();
                partdiscription.Text=srd.GetValue(1).ToString();
                category.Text = srd.GetValue(2).ToString();
            }
        }

        protected void dateselection_Click(object sender, EventArgs e)
        {
            Calendar.Visible = true;
        }

        protected void receive_Click(object sender, EventArgs e)
        {
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date.Text = Calendar.SelectedDate.ToString();
            Calendar.Visible = false;
        }

        protected void date_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void receivedpartreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("receivedpartreport.aspx");
        }

        protected void receive_Click1(object sender, EventArgs e)
        {
            int QtyQCDone, QCPending;
            QtyQCDone = 0;
            QCPending = Convert.ToInt32(this.qtyreceived.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ReceivePart values ('" + partnumber.Text + "','" + partdiscription.Text + "','" + category.Text + "','" + name.Text + "','" + this.date.Text + "','" + qtyreceived.Text + "','" + QtyQCDone + "','" + QCPending + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Received Succefully!!')</script>");
        }
    }
}