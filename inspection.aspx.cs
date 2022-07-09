using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace MorphleInventorymanagementSystem
{
    public partial class inspection : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=localhost\\MSSQLSERVER01;Initial Catalog=MorphleInventoryManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            partnumber.Text = row.Cells[1].Text;
            partdiscription.Text = row.Cells[2].Text;
            category.Text = row.Cells[3].Text;
            qtyreceived.Text = row.Cells[4].Text;
        }

        protected void dateselection_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [QC Reports] values ('" + partnumber.Text + "','" + partdiscription.Text + "','" + category.Text + "','" + name.Text + "','" + DateTime.ParseExact(date.Text, "dd/MM/yyyy", null) + "','" + qtyaccepted.Text + "','"+qtyrejected.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Inspection Completed Succefully!!')</script>");
        }

        protected void updateqclist_Click(object sender, EventArgs e)
        {
            int qty_accepted = Int32.Parse(qtyaccepted.Text);
            int qty_rejected = Int32.Parse(qtyrejected.Text);
            int qty_qcdone = qty_accepted + qty_rejected;
            int qty_received=Int32.Parse(qtyreceived.Text);
            int qty_qcpending = qty_received - qty_qcdone;
            SqlCommand cmd = new SqlCommand(@"UPDATE [dbo].[QCLIST]
                 SET[Part Number] = '" + partnumber.Text + "',[Part Discription] = '" + partdiscription.Text + "',[Category] = '" + category.Text + "',[Qty Received] = '"+qtyreceived.Text+"',[Qty QC Pending]='"+qty_qcpending+"',[Qty QC Done]='"+qty_qcdone+"' WHERE [Part Discription] = '" + partdiscription.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Updated QC Table Succefully!!')</script>");
            GridView1.DataBind();



        }

        protected void addtostock_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into StockAvailabity values ('" + partnumber.Text + "','" + partdiscription.Text + "','" + category.Text + "','" +qtyaccepted.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Inspection Completed Succefully!!')</script>");
        }
    }
}