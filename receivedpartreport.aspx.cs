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
    public partial class receivedpartreport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=localhost\\MSSQLSERVER01;Initial Catalog=MorphleInventoryManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
            GridView1.DataBind();
        }
        void BindData()
        {
            SqlCommand command = new SqlCommand("select * from ReceivePart", con);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
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
            string FileName = "ReceivePartReport" + DateTime.Now + ".xls";
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
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (option.Text == "Part Number")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from ReceivePart where Part_Number like'%" + TextBox1.Text + "%'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (option.Text == "Part Discription")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from ReceivePart where Part_Discription like'%" + TextBox1.Text + "%'", con);
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
                SqlCommand cmd = new SqlCommand("select * from ReceivePart where [Name of Person Receiving] like'%" + TextBox1.Text + "%'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}