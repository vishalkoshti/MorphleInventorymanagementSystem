using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MorphleInventorymanagementSystem
{
    public partial class consume : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Componentlevelconsumption_Click(object sender, EventArgs e)
        {
            Response.Redirect("componentlevelconsumption.aspx");
        }
    }
}