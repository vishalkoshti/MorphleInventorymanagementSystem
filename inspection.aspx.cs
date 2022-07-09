using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MorphleInventorymanagementSystem
{
    public partial class inspection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            partnumber.Text = row.Cells[1].Text;
            partdiscription.Text = row.Cells[2].Text;
            category.Text = row.Cells[3].Text;
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
    }
}