using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MorphleInventorymanagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (username.Text=="admin" && password.Text == "admin")
            {
                Response.Redirect("MainPage.aspx");
            }
            else if (username.Text=="admin" && password.Text == "admin")
            {
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Enter Valid UserName and Password')</script>");
            }
        }
    }
}