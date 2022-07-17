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
    public partial class componentlevelconsumption : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=localhost\\MSSQLSERVER01;Initial Catalog=MorphleInventoryManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
            GridView1.DataBind();
        }
        void BindData()
        {
            SqlCommand command = new SqlCommand("select * from StockAvailability", con);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            if (option.Text == "Part Number")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from StockAvailability where Part_Number like'%" + TextBox1.Text + "%'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from StockAvailability where Part_Discription like'%" + TextBox1.Text + "%'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void download_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "CurrentStockList" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }

        protected void dateselection_Click(object sender, EventArgs e)
        {
            Calendar1.Visible=true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            partnumber.Text = row.Cells[1].Text;
            partdiscription.Text = row.Cells[2].Text;
            category.Text = row.Cells[3].Text;
        }

        protected void Record_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [Consumption Log] values ('" + partnumber.Text + "','" + partdiscription.Text + "','" + category.Text + "',GETDATE(),'" + givenby.Text + "','" + receivedby.Text + "','" + Qty.Text + "','" + purpose.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Recorded in Consumption Log,Please click on Update Stock to update stock Quantity')</script>");
            BindData();
            GridView1.DataBind();
        }

        protected void updatestock_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update StockAvailability set [Qty Available]=[Qty Available]-" + Qty.Text + " where Part_Number='" + partnumber.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();
            GridView1.DataBind();
            Response.Write("<script>alert('Successfully Updated Stock Quantity')</script>");
        }
    }
}