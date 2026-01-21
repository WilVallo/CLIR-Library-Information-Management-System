using System;
using System.Web;

namespace CLIR_Library_Information_Management_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Add this method to handle the Logout button click
        protected void logout_BTN_Click(object sender, EventArgs e)
        {
            // 1. Clear the session
            Session.Clear();
            Session.Abandon();

            // 2. Redirect back to the login page (Default.aspx)
            Response.Redirect("~/Default.aspx");
        }
    }
}