using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MorphleInventorymanagementSystem
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addpart_Click(object sender, EventArgs e)
        {
            Response.Redirect("addpart.aspx");
        }

        protected void receivepart_Click(object sender, EventArgs e)
        {
            Response.Redirect("receivepart.aspx");
        }

        protected void inspection_Click(object sender, EventArgs e)
        {
            Response.Redirect("inspection.aspx");
        }

        protected void consume_Click(object sender, EventArgs e)
        {
            Response.Redirect("consume.aspx");
        }

        protected void bookpart_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookforproduction.aspx");
        }
    }
}