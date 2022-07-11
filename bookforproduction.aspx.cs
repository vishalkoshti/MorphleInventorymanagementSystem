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
    public partial class bookforproduction : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=localhost\\MSSQLSERVER01;Initial Catalog=MorphleInventoryManagementSystem;Integrated Security=True;MultipleActiveResultSets=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
            GridView1.DataBind();
        }
        void BindData()
        {
            SqlCommand command = new SqlCommand("select Part_Number,Part_Discription,Category,C240,Optimus,H1,H6,indexscanner,Brain,(C240+Optimus+H1+H6+indexscanner+Brain) as [Total Qty] from BOM", con);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("select Part_Number,Part_Discription,Category,(C240*"+c240.Text+") as [C240 Batch],(Optimus*"+optimus.Text+ ") as [Optimus Batch],(H1*" + h1.Text + ") as [H1 Batch],(H6*" + h6.Text + ") as [H6 Batch],(indexscanner*" + index.Text + ") as [Index Batch],(Brain*" + brain.Text + ") as [Brain Batch],([C240 Batch]+[Optimus Batch]+[H1 Batch]+[H6 Batch]+[indexscanner Batch]+[Brain Batch]) as [Total Qty] from BOM", con);
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
            string FileName = "StockBookProductionList" + DateTime.Now + ".xls";
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
    }
    
}